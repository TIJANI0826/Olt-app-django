import React, { useState, useEffect } from 'react';
import {
  Box,
  Typography,
  Paper,
  Table, 
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  CircularProgress,
  Alert,
  Grid,
  Card,
  CardContent,
  Chip
} from '@mui/material';
import { formatDistanceToNow } from 'date-fns'; 

function DashboardPage() {
  // ... existing state declarations ...
  const [summaryData, setSummaryData] = useState(null);
  const [outageData, setOutageData] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // WebSocket ref (to persist between renders)
  const wsRef = React.useRef(null);

  // WebSocket-only: No REST API or polling, just connect WebSocket and handle all data
  useEffect(() => {
    setLoading(true);
    setError(null);
    // Dynamically build ws:// or wss:// based on the current protocol
    let wsUrl;
    const backendHost = process.env.REACT_APP_WS_BACKEND_HOST;
    console.log('REACT_APP_WS_BACKEND_HOST:', backendHost);
    if (backendHost) {
      wsUrl = `ws://${backendHost}/ws/pon_outages/`;
    } else if (window.location.hostname === 'localhost' && window.location.port === '3000') {
      // If running in React dev server, connect to Django backend on 8000
      wsUrl = 'ws://localhost:8000/ws/pon_outages/';
    } else {
      const loc = window.location;
      const wsProtocol = loc.protocol === 'https:' ? 'wss:' : 'ws:';
      wsUrl = `${wsProtocol}//${loc.hostname}:${loc.port ? loc.port : (loc.protocol === 'https:' ? '443' : '80')}/ws/pon_outages/`;
    }
    const ws = new window.WebSocket(wsUrl);
    wsRef.current = ws;

    ws.onopen = () => {
      setLoading(false);
      // Optionally: console.log('WebSocket connected');
    };
    ws.onmessage = (event) => {
      try {
        const msg = JSON.parse(event.data);
        if (!msg || !msg.type) return;
        if (msg.type === 'dashboard_summary') {
          setSummaryData(msg.data);
        } else if (['new_outage','updated_outage','resolved_outage'].includes(msg.type)) {
          setOutageData((prev) => {
            if (!msg.data) return prev;
            switch (msg.type) {
              case 'new_outage':
                return [msg.data, ...prev];
              case 'updated_outage':
                return prev.map((item) => item.id === msg.data.id ? msg.data : item);
              case 'resolved_outage':
                return prev.filter((item) => item.id !== msg.data.id);
              default:
                return prev;
            }
          });
        }
      } catch (e) {
        setError('WebSocket message parse error');
      }
    };
    ws.onerror = (e) => {
      setError('WebSocket error');
    };
    ws.onclose = () => {
      // Optionally: console.log('WebSocket disconnected');
    };
    return () => {
      if (wsRef.current) {
        wsRef.current.close();
      }
    };
  }, []);

  const getOltStatusChip = (statusValue, statusDisplay) => {
    if (statusValue?.toLowerCase() === "active") {
      return <Chip label={statusDisplay || "Active"} color="success" size="small" />;
    } else if (statusValue?.toLowerCase() === "inactive" || statusValue?.toLowerCase() === "offline") {
      return <Chip label={statusDisplay || "Inactive"} color="error" size="small" />;
    } else if (statusDisplay) {
      return <Chip label={statusDisplay} color="warning" size="small" />;
    }
    return <Chip label="Unknown" size="small" />;
  };

  const formatTemperature = (temp) => (temp !== null && temp !== undefined ? `${temp}°C` : 'N/A');

  const formatTimeSince = (dateTimeString) => {
      if (!dateTimeString) return 'N/A';
      try {
          const date = new Date(dateTimeString);
          return formatDistanceToNow(date, { addSuffix: true });
      } catch (e) {
          console.error("Error formatting date:", dateTimeString, e);
          return 'Invalid Date';
      }
  };

  if (loading && !summaryData && outageData.length === 0) {
    // Only show full loading spinner on initial load
    return <Box display="flex" justifyContent="center" alignItems="center" minHeight="60vh"><CircularProgress /></Box>;
  }

  if (error && !summaryData && outageData.length === 0) {
     // Only show full error on initial load
    return <Alert severity="error" sx={{ m: 2 }}>{error}</Alert>;
  }

  return (
    <Box sx={{ p: 3 }}>
      <Typography variant="h4" gutterBottom>Network Dashboard</Typography>

      {error && (
         // Show error as a banner if data was partially loaded
         <Alert severity="error" sx={{ mb: 2 }}>{error}</Alert>
      )}

      {/* Summary Cards */}
      <Grid container spacing={3} sx={{ mb: 4 }}>
        <Grid item xs={12} sm={6} md={3}>
          <Card elevation={2}>
            <CardContent>
              <Typography variant="h6" color="text.secondary" gutterBottom>Total OLTs</Typography>
              <Typography variant="h5">{summaryData?.total_olts ?? '...'}</Typography>
            </CardContent>
          </Card>
        </Grid>
        <Grid item xs={12} sm={6} md={3}>
          <Card elevation={2}>
            <CardContent>
              <Typography variant="h6" color="text.secondary" gutterBottom>Online OLTs</Typography>
              <Typography variant="h5" color="success.main">{summaryData?.online_olts_count ?? '...'}</Typography>
            </CardContent>
          </Card>
        </Grid>
        <Grid item xs={12} sm={6} md={3}>
          <Card elevation={2}>
            <CardContent>
              <Typography variant="h6" color="text.secondary" gutterBottom>Total ONTs</Typography>
              <Typography variant="h5">{summaryData?.total_onts ?? '...'}</Typography>
            </CardContent>
          </Card>
        </Grid>
        <Grid item xs={12} sm={6} md={3}>
          <Card elevation={2}>
            <CardContent>
              <Typography variant="h6" color="text.secondary" gutterBottom>Online ONTs</Typography>
              <Typography variant="h5" color="success.main">{summaryData?.online_onts_count ?? '...'}</Typography>
            </CardContent>
          </Card>
        </Grid>
        <Grid item xs={12} sm={6} md={3}>
          <Card elevation={2}>
            <CardContent>
              <Typography variant="h6" color="text.secondary" gutterBottom>Offline ONTs</Typography>
              <Typography variant="h5" color="error.main">{summaryData?.offline_onts_count ?? '...'}</Typography>
            </CardContent>
          </Card>
        </Grid>
         <Grid item xs={12} sm={6} md={3}>
          <Card elevation={2}>
            <CardContent>
              <Typography variant="h6" color="text.secondary" gutterBottom>Offline (Power)</Typography>
              <Typography variant="h5" color="error.main">{summaryData?.offline_power_onts_count ?? '...'}</Typography>
            </CardContent>
          </Card>
        </Grid>
         <Grid item xs={12} sm={6} md={3}>
          <Card elevation={2}>
            <CardContent>
              <Typography variant="h6" color="text.secondary" gutterBottom>Offline (LOS)</Typography>
              <Typography variant="h5" color="error.main">{summaryData?.offline_los_onts_count ?? '...'}</Typography>
            </CardContent>
          </Card>
        </Grid>
         {/* Add other ONT offline reasons if tracked */}
      </Grid>

      {/* Online OLTs Table */}
      <Typography variant="h5" gutterBottom sx={{ mt: 4 }}>OLT Status</Typography>
       <TableContainer component={Paper} elevation={1} sx={{ mb: 4 }}>
           <Table size="small">
               <TableHead>
                   <TableRow>
                       <TableCell>OLT Name</TableCell>
                        <TableCell>Status</TableCell>
                       <TableCell>Uptime</TableCell>
                       <TableCell>Temperature</TableCell>
                   </TableRow>
               </TableHead>
               <TableBody>
                   {summaryData?.all_olts_details && summaryData.all_olts_details.length > 0 ? (
                       summaryData.all_olts_details.map((olt) => (
                           <TableRow key={olt.id}>
                               <TableCell>{olt.name}</TableCell>
                               <TableCell>{getOltStatusChip(olt.status, olt.status_display)}</TableCell>
                               <TableCell>{olt.uptime || 'N/A'}</TableCell> {/* Display raw uptime string */}
                               <TableCell>{formatTemperature(olt.temperature)}</TableCell>
                           </TableRow>
                       ))
                   ) : (
                       <TableRow><TableCell colSpan={4}>No OLTs found.</TableCell></TableRow>
                   )}
               </TableBody>
           </Table>
       </TableContainer>

      {/* PON Outage Table */}
      <Typography variant="h5" gutterBottom sx={{ mt: 4 }}>Recent PON Outages</Typography>
      <TableContainer component={Paper} elevation={1}>
        <Table size="small">
          <TableHead>
            <TableRow>
              <TableCell>OLT Name</TableCell>
              <TableCell>Slot/Port</TableCell>
              <TableCell>Affected ONUs</TableCell>
              {/* LOS and Power columns might be redundant if covered by Possible Cause, but can be added if needed */}
              <TableCell>Possible Cause</TableCell>
              <TableCell>Time Since Failure</TableCell>
              <TableCell>End Time</TableCell>
            </TableRow>
          </TableHead>
          <TableBody>
            {outageData.length > 0 ? (
              outageData.map((outage) => (
                <TableRow key={outage.id}>
                  <TableCell>{outage.olt_name}</TableCell>
                  <TableCell>{outage.slot_port}</TableCell>
                  <TableCell>{outage.affected_ont_count}</TableCell>
                  <TableCell>{outage.possible_cause || 'Unknown'}</TableCell>
                  <TableCell>{formatTimeSince(outage.start_time)}</TableCell>
                  <TableCell>{outage.end_time ? formatTimeSince(outage.end_time) + ' ago' : 'Active'}</TableCell>
                </TableRow>
              ))
            ) : (
              <TableRow><TableCell colSpan={6}>No recent PON outages found.</TableCell></TableRow>
            )}
          </TableBody>
        </Table>
      </TableContainer>

    </Box>
  );
}

export default DashboardPage;