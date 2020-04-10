Set-Location C:\

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

# Aliases
## Git aliases
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
