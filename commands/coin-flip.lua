return function(message,args)
    local possible = {
        "Tails.",
        "Heads."
    }

    local nr = math.random(1,#possible)
    local choice = possible[nr]

    message:newReply(choice)
end