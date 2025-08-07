const WebSocket = require('ws');
const { spawn } = require('child_process');
const ws = new WebSocket('ws://localhost:8081');
ws.on('open', () => console.log('DB client connected'));
ws.on('message', (data) => {
  console.log('Message from server:', data.toString());

  if (data.toString() === 'deploy') {
    console.log('Deploy signal received');
    spawn('bash', ['start/deploy.sh'], { cwd: __dirname, stdio: 'inherit' });
  }
});

