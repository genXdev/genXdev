# EnsureGithubCLIInstalled

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> GitHub CLI가 시스템에 올바르게 설치되고 구성되었는지 확인합니다.

## Description

GitHub CLI(gh)에 대한 포괄적인 확인 및 설정을 수행합니다:
- GitHub CLI가 설치되어 있고 PATH에 접근 가능한지 확인
- WinGet을 통해 GitHub CLI를 설치(없는 경우)
- 시스템 PATH 환경 변수 구성
- GitHub Copilot 확장 설치
- GitHub 인증 설정
이 함수는 모든 필수 조건을 처리하고 작동하는 GitHub CLI 설정을 보장합니다.

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
