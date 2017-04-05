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
#   Casey Lawrence <casey.j.lawrence@gmail.com>
#

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
    robot.hear /(^|\s)(arnold|arnie)(\s|$|[\W])/ig, (msg) ->
        msg.send msg.random arnie_quotes
