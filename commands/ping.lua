return function(message,args)
    message:newReply("pong! args: "..table.concat(args))
end