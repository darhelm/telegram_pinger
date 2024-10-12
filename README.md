get bot token from @BotFather (https://t.me/BotFather)
set user id's you want to send the messages to in CHAT_IDS like the example in the code and add your remote server address
once you are done setting up the settings, do `chmod +x pinger.sh`
you can add cronjob to send message in `crontab -e` (select your text editor if you haven't already)
example cronjob for every 1 minute: `* * * * * /path/to/pinger.sh > /dev/null 2>&1 &`

bot will automatically send the result of ping in chat for your selected interval
this bot is useful in case you need a tool to see your servers uptime live in telegram