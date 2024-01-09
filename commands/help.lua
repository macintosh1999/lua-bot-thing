return function(message,args)
    message:newReply {
        embed = {
            title = "Luey Help",
            description = "Commands.",
            author = {
                name = message.author.name,
                icon_url = message.author.avatarURL
            },

            fields = {
                {
                    name = "**Basic**",
                    value = "Basic commands.",
                    inline = false
                },
                {
                    name = ">ping",
                    value = "Pong!",
                    inline = false
                },
                {
                    name = ">help",
                    value = "Shows this nifty embed!",
                    inline = false
                },
                {
                    name = "**Moderation**",
                    value = "Moderation commands.",
                    inline = false
                },
                {
                    name = ">ban",
                    value = "Bans a user.",
                    inline = false
                },
                {
                    name = "**Fun**",
                    value = "Commands more for the fun of it.",
                    inline = false
                },
                {
                    name = ">8ball",
                    value = "Let the magic 8 ball answer your question.",
                    inline = false
                },
                {
                    name = ">coin-flip",
                    value = "Flips a coin.",
                    inline = false
                },
            },
            footer = {
                text = "why are you looking at the footer?"
            },
            color = 0x8698db
        }
    }
end