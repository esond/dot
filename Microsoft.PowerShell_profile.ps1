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

    Write-Host ""
    Write-Host "                     __,-~~/~    `---.                   "
    Write-Host "                   _/_,---(      ,    )                  "
    Write-Host "                __ /        <    /   )  \___             "
    Write-Host "               ====------------------===;;;==            "
    Write-Host "                   \/  ~ ~ ~ ~ ~ ~\~ ~)~ ,1/             "
    Write-Host "                   (_ (   \  (     >    \)               "
    Write-Host "                    \_( _ \<         >_>'                "
    Write-Host "                       ~ `-i' ::>/--'                    "
    Write-Host "                           I;|.|.|                       "
    Write-Host "                          <|i::|i|>                      "
    Write-Host "                           |[::|.|                       "
    Write-Host "                            ||: |                        "
    Write-Host " _________________________GROUND ZERO___________________ "
    Write-Host ""
}
Set-Alias -Name gnuke -Value GitNuke
