local discordia = require("discordia")
local json = require("deps.json")
local client = discordia.Client()
local configF = io.open("config.json","r")
local config = json.decode(configF:read("a"))
local prefix = ">"
configF:close()

require("discordia-replies")()

client:on('ready',function()
    print("logged in as "..client.user.username)
end)

client:on('messageCreate',function(message)
    if message.author.Bot then return end
    if not message.guild then return end

    local cmd = string.lower(message.content)
    local m = message.member
    local isprefix = string.match(cmd,"^"..prefix)

    if isprefix then
        cmd = string.gsub(cmd,isprefix,"")

        local args = {}

        for arg in string.gmatch(cmd,"[^%s]+") do
            table.insert(args,arg)
        end

        local cmdName = args[1]

        table.remove(args,1)

        local func = require("commands."..cmdName)

        if func then
            print(table.concat(args))

            func(message,args)
        end
    end
end)

client:run('Bot '..config.token)