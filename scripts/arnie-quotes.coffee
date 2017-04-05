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
    'GET TO THE CHOPPA!',
    'Your clothes, give them to me, NOW!',
    'Hasta La Vista, Baby!',
    'DDDAAANNNAAAA!',
    'You are one ugly mothersucker.',
    'It`s not a tumor!',
    'When I said you should screw yourself I didn`t mean it literally.',
    'Can you hurry up. My horse is getting tired.',
    'Are these all your lunches? You mean you eat other peoples` lunches? STOP IT!!',
    'I`m the party pooper.',
    'Who is your daddy and what does he do?'
]

module.exports = (robot) ->
    robot.hear /(^|\s)arnie(\s|$|[\W])/ig, (msg) ->
        val = msg.random odds
        if val > 0 # Set Arnie to reply 100% for now
            msg.send msg.random arnie_quotes

    robot.hear /(^|\s)arnold(\s|$|[\W])/ig, (msg) ->
        val = msg.random odds
        if val > 0 # Set Arnie to reply 100% for now
            msg.send msg.random arnie_quotes