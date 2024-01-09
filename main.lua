local discordia = require("discordia")
local json = require("deps.json")
local client = discordia.Client()
local configF = io.open("config.json","r")
local config = json.decode(configF:read("a"))
configF:close()

client:on('ready',function()
    print("logged in as "..client.user.username)
end)

client:on('messageCreate',function(message)
    if message.content == '!ping' then
        message.channel:send('pong')
    end
end)

client:run('Bot '..config.token)