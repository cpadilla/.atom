# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"
# atom C:\Windows\System32\drivers\etc

atom.beep()

atom.commands.add 'atom-text-editor', 'custom:copy-with-ctrl-c', ->
  editor = atom.workspace.getActiveTextEditor()
  editor.selectLinesContainingCursors()
  editor.copySelectedText()

#atom.commands.add 'atom-text-editor', 'custom:move-to-end-of-line', ->
#  editor = atom.workspace.getActiveTextEditor()
#  editor.selectLinesContainingCursors()
