
EasySemicolon = require './easy-semicolon'
FixTabindex = require './fix-tabindex'

module.exports =

    activate: ->
        @easySemicolon = new EasySemicolon
        @fixTabindex = new FixTabindex

    deactivate: ->
        @easySemicolon.dispose()
        @fixTabindex.dispose()
