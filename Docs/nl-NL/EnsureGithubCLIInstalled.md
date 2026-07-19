# EnsureGithubCLIInstalled

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Zorgt ervoor dat GitHub CLI correct is geïnstalleerd en geconfigureerd op het systeem.

## Description

Voert uitgebreide controles en instellingen uit voor GitHub CLI (gh):
- Controleert of GitHub CLI is geïnstalleerd en toegankelijk is in PATH
- Installeert GitHub CLI via WinGet als deze niet aanwezig is
- Configureert de systeem-PATH-omgevingsvariabele
- Installeert de GitHub Copilot-extensie
- Stelt GitHub-authenticatie in
De functie handelt alle vereisten af en zorgt voor een werkende GitHub CLI-installatie.

## Syntax

```powershell
[CmdletBinding()]
    param()

    begin {

        ########################################################################
        <#
        .SYNOPSIS
        Verifies if WinGet PowerShell module is installed.

        .DESCRIPTION
        Attempts to import WinGet module and checks if it's available.

        .OUTPUTS
        System.Boolean. Returns true if WinGet is installed, false otherwise.
        #>
        function IsWinGetInstalled {
            try {
                Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client' -ErrorAction Stop
                $ModuleObj = Microsoft.PowerShell.Core\Get-Module 'Microsoft.WinGet.Client' -ErrorAction Stop
                return $null -ne $ModuleObj
            }
            catch [System.IO.FileNotFoundException] {
                Microsoft.PowerShell.Utility\Write-Verbose 'WinGet module not found'
                return $false
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Verbose "Error checking WinGet installation: $_"
                return $false
            }
        }

        ########################################################################
        <#
        .SYNOPSIS
        Installs the WinGet PowerShell module.

        .DESCRIPTION
        Forces installation of the Microsoft.WinGet.Client module and imports it.
        #>
        function InstallWinGet {
            try {
                # Check user consent before installing WinGet module
                $consent = GenXdev\Confirm-InstallationConsent `
                    -ApplicationName 'Microsoft.WinGet.Client PowerShell Module' `
                    -Source 'PowerShell Gallery' `
                    -Description 'Required for automated software package management via WinGet' `
                    -Publisher 'Microsoft'

                if (-not $consent) {
                    throw 'User declined installation of Microsoft.WinGet.Client PowerShell module'
                }

                Microsoft.PowerShell.Utility\Write-Verbose 'Installing WinGet PowerShell client...'
                PowerShellGet\Install-Module 'Microsoft.WinGet.Client' -Force -AllowClobber -ErrorAction Stop
                Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client' -ErrorAction Stop
            }
            catch [System.UnauthorizedAccessException] {
                throw "Insufficient permissions to install WinGet module. Run as administrator: $_"
            }
            catch {
                throw "Failed to install WinGet module: $_"
            }
        }
    }


    process {
        try {
            # First check and install Git if needed
            if (@(Microsoft.PowerShell.Core\Get-Command 'git.exe' -ErrorAction SilentlyContinue).Length -eq 0) {
                Microsoft.PowerShell.Utility\Write-Verbose 'Git not found, installing...'

                # Check user consent before installing Git
                $gitConsent = GenXdev\Confirm-InstallationConsent `
                    -ApplicationName 'Git for Windows' `
                    -Source 'WinGet' `
                    -Description 'Version control system required for GitHub CLI functionality' `
                    -Publisher 'Git for Windows Project'

                if (-not $gitConsent) {
                    throw 'User declined installation of Git for Windows'
                }

                if (-not (IsWinGetInstalled)) {
                    InstallWinGet
                }

                try {
                    $null = Microsoft.WinGet.Client\Install-WinGetPackage -Id 'Git.Git' -Force
                }
                catch {
                    throw "Failed to install Git via WinGet: $_"
                }

                if (-not (Microsoft.PowerShell.Core\Get-Command 'git.exe' -ErrorAction SilentlyContinue)) {
                    throw 'Git installation failed: Command not found after installation'
                }
            }

            # Then proceed with GitHub CLI installation
            if (@(Microsoft.PowerShell.Core\Get-Command 'gh.exe' -ErrorAction SilentlyContinue).Length -eq 0) {
                Microsoft.PowerShell.Utility\Write-Verbose 'GitHub CLI not found in PATH, checking installation...'
                $githubCliPath = "$env:ProgramFiles\GitHub CLI"
                $currentPath = [Environment]::GetEnvironmentVariable('PATH', 'User')

                if ($currentPath -notlike "*$githubCliPath*") {
                    Microsoft.PowerShell.Utility\Write-Verbose 'Adding GitHub CLI to PATH...'
                    [Environment]::SetEnvironmentVariable(
                        'PATH',
                        "$currentPath;$githubCliPath",
                        'User')
                }

                # Update current session PATH only if not already present
                if ($env:PATH -notlike "*$githubCliPath*") {
                    $env:PATH = "$env:PATH;$githubCliPath"
                }

                if (@(Microsoft.PowerShell.Core\Get-Command 'gh.exe' -ErrorAction SilentlyContinue).Length -eq 0) {
                    Microsoft.PowerShell.Utility\Write-Verbose 'Installing GitHub CLI...'

                    # Check user consent before installing GitHub CLI
                    $ghConsent = GenXdev\Confirm-InstallationConsent `
                        -ApplicationName 'GitHub CLI' `
                        -Source 'WinGet' `
                        -Description 'Command-line tool for GitHub operations and authentication' `
                        -Publisher 'GitHub'

                    if (-not $ghConsent) {
                        throw 'User declined installation of GitHub CLI'
                    }

                    if (-not (IsWinGetInstalled)) {
                        InstallWinGet
                    }

                    try {
                        $null = Microsoft.WinGet.Client\Install-WinGetPackage -Id 'GitHub.cli' -Force
                    }
                    catch {
                        throw "Failed to install GitHub CLI via WinGet: $_"
                    }

                    if (-not (Microsoft.PowerShell.Core\Get-Command 'gh.exe' -ErrorAction SilentlyContinue)) {
                        throw 'GitHub CLI installation failed: Command not found after installation'
                    }

                    try {
                        Microsoft.PowerShell.Utility\Write-Verbose 'Initiating GitHub authentication...'
                        $null = gh auth login --web -h github.com
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Error "GitHub authentication failed: $_"
                    }
                }
            }
        }
        catch {
            $errorMessage = "Failed to setup GitHub CLI: $($_.Exception.Message)"
            Microsoft.PowerShell.Utility\Write-Error -Exception $_.Exception -Message $errorMessage -Category OperationStopped
            throw
        }
    }

    end {}
```

## Examples

### EnsureGithubCLIInstalled This will verify and setup GitHub CLI if needed.

```powershell
EnsureGithubCLIInstalled
This will verify and setup GitHub CLI if needed.
```

## Related Links

- [EnsureGithubCLIInstalled on GitHub](https://github.com/genXdev/genXdev)
