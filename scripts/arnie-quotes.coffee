# Description:
#   Listens for mentions of Arnie and replies with an Arnie quote
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
    'You are one ugly mothersucker',
    'It`s not a tumor!',
    'When I said you should screw yourself I didn`t mean it literally.',
    'Can you hurry up. My horse is getting tired',
    'Are these all your lunches? You mean you eat other peoples` lunches? STOP IT!!',
    'I`m the party pooper',
    'Who is your daddy and what does he do?',
    'What killed the dinosaurs?... THE ICE AGE!',
    'If revenge is a dish best served cold, then put on your Sunday finest. It`s time to feast!',
    'I need a vacation',
    'But I’m all woman',
    'You`ve just been ERASED',
    'YOU’RE A QUOIREBOY COMPARED TO ME! A HUGGING QUOIREBOY!',
    'YOU SHOULD HAVE CLONED YOURSELF! – (WHY`S THAT?) – SO YOU CAN GO HUG YOURSELF!',
    'RUBBER-BABY-BUGGY-BUMPERS',
    'DO IT. DO IT NOW!',
    'If it bleeds, we can kill it',
    'Come with me if you want to live',
    'Chill out rick wad',
    'THERE IS NO BATHROOM!',
    'I`m a cop you idiot!',
    'You killed my father... BIG MISTAKE',
    'I`m not sitting on you!',
    'No problemo',
    'Talk to the hand',
    'Allow me to break the ice',
    'I`m the famous comedian Arnold Brownschqieger',
    'Of course, I`m a terminator',
    'Get your butt to Mars!'
]

module.exports = (robot) ->
    robot.hear /(^|\s)(arnold|arnie)(\s|$|[\W])/ig, (msg) ->
        quote = msg.random arnie_quotes
        quote += ' <:arnold:298646907658436609>'
        msg.send quote
