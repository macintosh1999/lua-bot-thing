return function (message,args)
    message:newReply {
        embed = {
            title = "Ping",
            description = "",
            author = {
                name = message.author.name,
                icon_url = message.author.avatarURL
            },
    
            fields = {
                {
                    name = "Pong! :ping_pong:",
                    value = "",
                    inline = false
                },
            },
            color = 0x8698db
        }
    }
    end
end