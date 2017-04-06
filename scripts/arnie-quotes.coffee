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
    'GET TO THE CHOPPA! <:arnold:298646907658436609>',
    'Your clothes, give them to me, NOW! <:arnold:298646907658436609>',
    'Hasta La Vista, Baby! <:arnold:298646907658436609>',
    'DDDAAANNNAAAA! <:arnold:298646907658436609>',
    'You are one ugly mothersucker. <:arnold:298646907658436609>',
    'It`s not a tumor! <:arnold:298646907658436609>',
    'When I said you should screw yourself I didn`t mean it literally. <:arnold:298646907658436609>',
    'Can you hurry up. My horse is getting tired. <:arnold:298646907658436609>',
    'Are these all your lunches? You mean you eat other peoples` lunches? STOP IT!! <:arnold:298646907658436609>',
    'I`m the party pooper. <:arnold:298646907658436609>',
    'Who is your daddy and what does he do? <:arnold:298646907658436609>'
]

module.exports = (robot) ->
    robot.hear /(^|\s)(arnold|arnie)(\s|$|[\W])/ig, (msg) ->
        console.log(msg.guilds)
        msg.send msg.random arnie_quotes
