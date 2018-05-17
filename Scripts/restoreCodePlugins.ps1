# Restore VS Code plugins backed up with getCodePlugins.ps
# (https://stackoverflow.com/questions/35773299/how-can-you-export-vs-code-extension-list)
#
# Note: running code.cmd explicitly in case PSCode has been installed.

$data_location = (Split-Path -Parent $script:MyInvocation.MyCommand.Path)

Get-Content $data_location\data\code_extensions.list |ForEach-Object { code.cmd --install-extension $_}
