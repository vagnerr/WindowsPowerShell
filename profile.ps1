# Thanks to https://stackoverflow.com/questions/8264655/how-to-make-powershell-tab-completion-work-like-bash
# Propper tab completion :)
Set-PSReadlineKeyHandler -Key Tab -Function Complete

# Fixup VSCode with a code.ps1 rather than code.cmd so that it can
# cope with UNC paths see...
#   https://github.com/Microsoft/vscode/issues/14529
# uses utility provided by 3rd party...
#   https://github.com/wtjones/PSCode (https://www.powershellgallery.com/packages/PSCode/1.0.7)
# does need the PSCode installed as administrator first...
#   C:\WINDOWS\system32> Install-Module -Name PSCode
Import-Module PSCode



#https://stackoverflow.com/questions/1011243/where-to-put-powershell-scripts
$ProfileRoot = (Split-Path -Parent $script:MyInvocation.MyCommand.Path)
$env:path += ";$ProfileRoot\Scripts"

#https://superuser.com/questions/34492/powershell-equivalent-to-unix-which-command
New-Alias which get-command
