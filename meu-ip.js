const publicIp = require('public-ip');

const token = '845940383:AAGGzo5bhDIpwv8FcolxBxqfTcqYqZREHfE'
var telegram = require('telegram-bot-api');

var api = new telegram({
    token: token,
    updates: {
        enabled: true
    }
});

publicIp.v4().then(function (params) {
    api.sendMessage({
        chat_id: -357772395,
        text: `Im startup *${params}*`,
        parse_mode: 'Markdown'
    }).catch(function (err) {
        console.log("Erro::", err);
    });
}, function (params) {
    console.log("Erro::", params);
})

api.on('message', function (message) {
    publicIp.v4().then(function (params) {
        api.sendMessage({
            chat_id: message.chat.id,
            text: `*${params}*`,
            parse_mode: 'Markdown'
        }).catch(function (err) {
            console.log("Erro::", err);
        });
    }, function (params) {
        console.log("Erro::", params);
    })
});


