# enable global confirm in choco
choco feature enable -n=allowGlobalConfirmation

$packages = @(
    "7zip.install"
    "awscli"
    "AWSTools.Powershell"
    "curl"
    "fiddler"
    "fiddler4"
    "gpg4win"
    "hackfont"
    "html-tidy"
    "notepadplusplus.install"
    "poshgit"
    "scriptcs"
    "sysinternals"
    "windirstat"
)

ForEach ($packageName In $packages)
{
    Write-Host "Installing $packageName..."
    choco install -y $packageName
    Write-Host "Finished installing $packageName"
}

# Install git.install with the unix stuff (ls, etc) on %PATH%
choco install -y git.install -params '"/GitAndUnixToolsOnPath"'
