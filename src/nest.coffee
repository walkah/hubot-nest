# Description
#   A hubot script for nest thermostats
#
# Configuration:
#   NEST_LOGIN
#   NEST_PASSWORD
#
# Commands:
#   nest temp - get the current nest temperature
#   nest status - get the current nest target temperature
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   walkah

nest = require('nesting')

options =
	 user: process.env.NEST_USER
	 password: process.env.NEST_PASSWORD

module.exports = (robot) ->
	robot.respond /nest temp/i, (msg) ->
		nest.login options.user, options.password, (data) ->
			nest.fetchStatus (data) ->
        for device, info of data.shared
          current_temp = info.current_temperature
          msg.send "Nest says it's " + current_temp + "ºC."

	# nest target temperature
	robot.respond /nest status/i, (msg) ->
		nest.login options.user, options.password, (data) ->
			nest.fetchStatus (data) ->
        for device, info of data.shared
          current_target = info.target_temperature
          msg.send "Nest is currently set to " + current_target + "ºC."
