return function(message,args)
    message:newReply {
        embed = {
            title = "Luey Help",
            description = "A list of commands.",
            author = {
                name = message.author.name,
                icon_url = message.author.avatarURL
            },

            fields = {
                {
                    name = ">ping",
                    value = "Basic test command.",
                    inline = true
                },
                {
                    name = ">ban",
                    value = "Bans a user",
                    inline = false
                }
            },
            footer = {
                text = "why are you looking at the footer?"
            },
            color = 0x8698db
        }
    }
end