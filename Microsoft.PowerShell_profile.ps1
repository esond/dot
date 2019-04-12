Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-a4faccd\src\posh-git.psd1'

Set-Location C:\
Set-PSReadlineOption -BellStyle None

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Git aliases
function GitStatus { git status }
Set-Alias -Name gs -Value GitStatus

function GitBranch { git branch -v }
Set-Alias -Name gb -Value GitBranch

function GitRemoteBranch { git branch -rv }
Set-Alias -Name gbr -Value GitRemoteBranch

function GitDiff { git diff }
Set-Alias -Name gd -Value GitDiff

function GitAddAll { git add .}
Set-Alias -Name gaa -Value GitAddAll

function GitAddAllCommit($message) { git add .; git commit -m "$message" }
Set-Alias -Name gac -Value GitAddAllCommit

function GitNuke {
    git reset --hard
    git clean -f -d

write-host ""
write-host "                     __,-~~/~    `---.                   "
Write-Host "                   _/_,---(      ,    )                  "
write-host "                __ /        <    /   )  \___             "
write-host "               ====------------------===;;;==            "
write-host "                   \/  ~ ~ ~ ~ ~ ~\~ ~)~ ,1/             "
write-host "                   (_ (   \  (     >    \)               "
write-host "                    \_( _ \<         >_>'                "
write-host "                       ~ `-i' ::>/--'                    "
write-host "                           I;|.|.|                       "
write-host "                          <|i::|i|>                      "
write-host "                           |[::|.|                       "
write-host "                            ||: |                        "
write-host " _________________________GROUND ZERO___________________ "
write-host ""
}
Set-Alias -Name gnuke -Value GitNuke
