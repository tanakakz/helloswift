import Cocoa
var response = true
do {
  let panel = NSAlert()
  if CommandLine.argc > 1 {
    panel.messageText = CommandLine.arguments[1]
    if CommandLine.argc > 2 {
      panel.informativeText = CommandLine.arguments[2]
    }
  }
  panel.addButton(withTitle:"OK")
  panel.addButton(withTitle:"Cancel")
  response = panel.runModal() == .alertFirstButtonReturn
} // panel is free'ed
exit( response ? 0 : 1 )
