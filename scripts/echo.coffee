# Description:
#   Command bot to reply back with given text
#
# Dependencies:
#   None
#
# Commands:
#   echo <text> - Reply back with <text>
#
# Author:
#   Casey Lawrence <casey.j.lawrence@gmail.com>
#
module.exports = (robot) ->
    robot.respond /echo/ , (msg) ->
        # text = msg.message.text.replace /echo /, ""
        # text = text.replace /!/, ""
        # text = text.replace /superbestbot /, "" 
        # msg.send text
        msg.send msg.message.text
        