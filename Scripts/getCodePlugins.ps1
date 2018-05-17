# Record VS Code extension list so it can be re-installed later
# restore with restoreCodePlugins.ps1
# ( https://stackoverflow.com/questions/35773299/how-can-you-export-vs-code-extension-list)
#
# Note: running code.cmd explicitly in case PSCode has been installed.

$data_location = (Split-Path -Parent $script:MyInvocation.MyCommand.Path)
code.cmd --list-extensions > $data_location\data\code_extensions.list