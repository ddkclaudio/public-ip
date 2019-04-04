var pm2 = require('pm2');
const services = []
services.push('services/meu-ip.js')

function options() {
    return {
        logDateFormat: "YYYY-MM-DD h:mm:ss A",
        max_memory_restart: '1G',
        watch: true,
        autorestart: true
    }
}

function errback(err, apps) {
    pm2.disconnect();
    if (err) throw err
}

pm2.connect(function (err) {
    if (err) {
        console.error("QERRO ::");
        process.exit(2);
    }

    services.forEach(element => {
        pm2.start(element, options(), errback)
    });
});
