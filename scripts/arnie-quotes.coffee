# Description:
#   Listens for words and sometimes replies with an Arnie quote
#
# Dependencies:
#   None
#
# Commands:
#   None
#
# Author:
#   Casey Lawrence <cjlaw@users.noreply.github.com>
#

odds  = [1...100]

arnie_quotes = [
    'GET TO THE CHOPPA! :arnold:',
    'Your clothes, give them to me, now! :arnold:',
    'Hasta La Vista, Baby! :arnold:',
    'DDDAAANNNAAAA! :arnold:',
    'You are one ugly mother******. :arnold:',
    'It`s not a tumor! :arnold:',
    'When I said you should screw yourself. I didn`t mean it literally. :arnold:',
    'Can you hurry up. My horse is getting tired. :arnold:',
    'Are these all your lunches? You mean you eat other peoples` lunches? STOP IT!! :arnold:',
    'I`m the party pooper. :arnold:',
    'Who is your daddy and what does he do? :arnold:'
]

module.exports = (robot) ->
    robot.hear /(^|\s)arnie(\s|$|[\W])/ig, (msg) ->
        val = msg.random odds
        if val > 50
            msg.send msg.random arnie_quotes

    robot.hear /(^|\s)arnold(\s|$|[\W])/ig, (msg) ->
        val = msg.random odds
        if val > 50
            msg.send msg.random arnie_quotes