# Restore VS Code plugins backed up with getCodePlugins.ps
# (https://stackoverflow.com/questions/35773299/how-can-you-export-vs-code-extension-list)

$data_location = (Split-Path -Parent $script:MyInvocation.MyCommand.Path)

cat $data_location\data\code_extensions.list |% { code.cmd --install-extension $_}