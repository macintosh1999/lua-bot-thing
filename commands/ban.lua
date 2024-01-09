return function(message, args)
    local sender = message.guild:getMember(message.author.id)
    local target = message.guild:getMember(message.mentionedUsers.first.id)

    table.remove(args,1)

    for i,v in ipairs(args) do
        print(i,v)
        args[i] = args[i].." "
    end

    local reason = table.concat(args)

    if reason == "" then
        reason = "No reason given."
    end

    if not target then
        message:newReply("Mention a member to ban!")

        return
    end

    if not sender:hasPermission("banMembers") then
        message:newReply("You don't have permission to run this command!")

        return
    end

    if sender.highestRole.position < target.highestRole.position then
        message:newReply("You can't ban " .. target.mentionString .. " as they have a higher role than you.")

        return
    end

    if sender == target then
        message:newReply("You can't ban yourself!")

        return
    end

    if message.guild.me.highestRole.position < target.highestRole.position then
        message:newReply("I can't ban ' .. target.mentionString .. ' as they have a higher role than me.")

        return
    end

    target:ban(reason)

    message:newReply('Successfully banned '..target.mentionString..' for: '..reason)
end
