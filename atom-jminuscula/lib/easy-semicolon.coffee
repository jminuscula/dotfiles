# https://gist.github.com/darklight721/1eb9badf1f4d0425918a

path = require 'path'
{CompositeDisposable} = require 'atom'

module.exports =
class EasySemicolon
    constructor: (state) ->
        @subscriptions = new CompositeDisposable
        @subscriptions.add atom.commands.add 'atom-workspace', 'easy-semicolon:end-line': => @endLine(false);
        @subscriptions.add atom.commands.add 'atom-workspace', 'easy-semicolon:end-new-line': => @endLine(true);

    destroy: ->
        @subscriptions.dispose()

    endLine: (insertNewLine) ->
        editor = atom.workspace.getActiveTextEditor()
        if path.extname(editor.getPath()) is '.js'
            editor.getCursors().forEach((cursor) ->
                buffer = cursor.getCurrentLineBufferRange()
                line = editor.getTextInBufferRange(buffer).trim()
                if line && ';({,=?:'.indexOf(line[line.length - 1]) is -1
                    cursor.moveToEndOfLine()
                    editor.insertText(';')
            )

        if insertNewLine
            editor.insertNewlineBelow()
