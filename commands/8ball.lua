return function(message,args)
    local possible = {
        ":8ball: My indications read yes.",
        ":8ball: My indications read no.",
        ":8ball: Try your luck again.",
        ":8ball: Yes.",
        ":8ball: No.",
        ":8ball: Affirmative.",
        ":8ball: Negative.",
        ":8ball: My sources say yes.",
        ":8ball: My sources say no.",
        ":8ball: You may rely on it.",
        ":8ball: Don't count on it.",
        ":8ball: Come back another time.",
        ":8ball: Ask again later.",
        ":8ball: Cannot predict now.",
    }

    local nr = math.random(1,#possible)
    local choice = possible[nr]

    if table.concat(args) == "" then
        message:newReply("You shake the magic 8 ball... but realize you forgot to ask it something.")

        return
    end

    message:newReply('You shake the magic 8 ball...... \n'..choice)
end