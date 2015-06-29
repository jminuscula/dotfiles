
EasySemicolon = require './easy-semicolon'

module.exports =

    activate: ->
        @easySemicolon = new EasySemicolon

    deactivate: ->
        @easySemicolon.dispose()
