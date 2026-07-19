# EnsureWinMergeInstalled

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> WinMerge가 설치되어 파일 비교 작업에 사용 가능한지 확인합니다.

## Description

WinMerge가 시스템 PATH에 설치 및 올바르게 구성되었는지 확인합니다.
발견되지 않으면 WinGet을 사용하여 WinMerge를 설치하고 사용자의 PATH에 추가합니다.
설치 및 구성 프로세스를 자동으로 완전히 처리합니다.

## Syntax

```powershell
[CmdletBinding()]
    param()

    begin {

        ########################################################################
        <#
        .SYNOPSIS
        Checks if the WinGet PowerShell module is installed.

        .DESCRIPTION
        Attempts to import the Microsoft.WinGet.Client module and verifies its
        presence.

        .EXAMPLE
        IsWinGetInstalled
        #>
        function IsWinGetInstalled {

            # attempt to load the winget module silently
            Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client' `
                -ErrorAction SilentlyContinue

            # verify if module was loaded successfully
            $ModuleObj = Microsoft.PowerShell.Core\Get-Module 'Microsoft.WinGet.Client' `
                -ErrorAction SilentlyContinue

            return $null -ne $ModuleObj
        }

        ########################################################################
        <#
        .SYNOPSIS
        Installs the WinGet PowerShell module.

        .DESCRIPTION
        Installs and imports the Microsoft.WinGet.Client module for package
        management.

        .EXAMPLE
        InstallWinGet
        #>
        function InstallWinGet {

            # request user consent before installing winget module
            $consent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'Microsoft.WinGet.Client' `
                -Source 'PowerShell Gallery' `
                -Description 'PowerShell module for Windows Package Manager operations' `
                -Publisher 'Microsoft'

            if (-not $consent) {
                throw 'Installation of Microsoft.WinGet.Client was denied by user.'
            }

            # install and import winget module with force to ensure success
            Microsoft.PowerShell.Utility\Write-Verbose 'Installing WinGet PowerShell client...'
            $null = PowerShellGet\Install-Module 'Microsoft.WinGet.Client' -Force -AllowClobber

            # load the newly installed module
            Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client'
        }
    }


    process {

        # verify if winmerge is available in current session
        if (@(Microsoft.PowerShell.Core\Get-Command 'WinMergeU.exe' -ErrorAction SilentlyContinue).Length -eq 0) {

            # define the standard installation location for winmerge
            $winMergePath = Microsoft.PowerShell.Management\Join-Path $env:LOCALAPPDATA 'Programs\WinMerge'

            # get the current user's path environment variable
            $currentPath = [Environment]::GetEnvironmentVariable('PATH', 'User')

            # ensure winmerge path exists in user's path variable
            if ($currentPath -notlike "*$winMergePath*") {

                Microsoft.PowerShell.Utility\Write-Verbose 'Adding WinMerge to system PATH...'
                [Environment]::SetEnvironmentVariable(
                    'PATH',
                    "$currentPath;$winMergePath",
                    'User')
            }

            # update current session's path only if not already present
            if ($env:PATH -notlike "*$winMergePath*") {
                $env:PATH = "$env:PATH;$winMergePath"
            }


            # check if winmerge is now accessible
            if (@(Microsoft.PowerShell.Core\Get-Command 'WinMergeU.exe' -ErrorAction SilentlyContinue).Length -gt 0) {
                return
            }

            Microsoft.PowerShell.Utility\Write-Host 'WinMerge not found. Installing WinMerge...'

            # ensure winget is available for installation
            if (-not (IsWinGetInstalled)) {
                InstallWinGet
            }

            # request user consent before installing winmerge
            $consentWinMerge = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'WinMerge' `
                -Source 'WinGet' `
                -Description 'Visual diff and merge tool for files and folders' `
                -Publisher 'WinMerge Team'

            if (-not $consentWinMerge) {
                throw 'Installation of WinMerge was denied by user.'
            }

            # install winmerge using winget package manager
            $null = Microsoft.WinGet.Client\Install-WinGetPackage -Id 'WinMerge.WinMerge' -Force
            # define the standard installation location for winmerge
            $winMergePath = Microsoft.PowerShell.Management\Join-Path $env:LOCALAPPDATA 'Programs\WinMerge'

            # get the current user's path environment variable
            $currentPath = [Environment]::GetEnvironmentVariable('PATH', 'User')

            # ensure winmerge path exists in user's path variable
            if ($currentPath -notlike "*$winMergePath*") {

                Microsoft.PowerShell.Utility\Write-Verbose 'Adding WinMerge to system PATH...'
                [Environment]::SetEnvironmentVariable(
                    'PATH',
                    "$currentPath;$winMergePath",
                    'User')
            }

            # update current session's path only if not already present
            if ($env:PATH -notlike "*$winMergePath*") {
                $env:PATH = "$env:PATH;$winMergePath"
            }

            # verify successful installation
            if (-not (Microsoft.PowerShell.Core\Get-Command 'WinMergeU.exe' -ErrorAction SilentlyContinue)) {
                throw 'WinMerge installation failed.'
            }
        }
    }

    end {
    }
```

## Examples

### EnsureWinMergeInstalled Ensures WinMerge is installed and properly configured.

```powershell
EnsureWinMergeInstalled
Ensures WinMerge is installed and properly configured.
```

## Related Links

- [EnsureWinMergeInstalled on GitHub](https://github.com/genXdev/genXdev)
