return function(message,args)
    local sender = message.guild:getMember(message.author.id)
    local target = message.mentionedUsers.first

    if not target then
        message:newReply("Mention a member to ban!")

        return
    end

    if not sender:hasPermission("banMembers") then
        message:newReply("You don't have permission to run this command!")

        return
    end

    
end