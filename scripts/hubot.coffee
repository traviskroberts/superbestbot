# Description:
#   A simple interaction with the built in HTTP Daemon
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# URLS:
#   /hubot/version


module.exports = (robot) ->
  robot.router.get '/hubot/version', (req, res) ->
    res.end robot.version
