# EnsureSQLiteStudioInstalled

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> SQLiteStudio가 설치되어 있고 명령줄에서 액세스 가능한지 확인합니다.

## Description

SQLiteStudio가 시스템 PATH에 설치되어 있고 사용 가능한지 확인합니다. 발견되지 않으면 먼저 PATH 환경 변수를 업데이트해야 하는지 확인합니다. 그래도 문제가 해결되지 않으면 WinGet을 사용하여 SQLiteStudio를 설치하고 PATH 환경 변수를 구성합니다.

## Syntax

```powershell
[CmdletBinding()]
    param()

    begin {

        ########################################################################
        <#
        .SYNOPSIS
        Checks if the WinGet PowerShell client module is installed.
        #>
        function IsWinGetInstalled {

            Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client' -ErrorAction SilentlyContinue
            $ModuleObj = Microsoft.PowerShell.Core\Get-Module 'Microsoft.WinGet.Client' -ErrorAction SilentlyContinue

            return $null -ne $ModuleObj
        }

        ########################################################################
        <#
        .SYNOPSIS
        Installs the WinGet PowerShell client module.
        #>
        function InstallWinGet {

            # Request consent before installing WinGet PowerShell client
            $consent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'Microsoft.WinGet.Client' `
                -Source 'PowerShell Gallery' `
                -Description 'PowerShell module required for package management operations' `
                -Publisher 'Microsoft'

            if (-not $consent) {
                Microsoft.PowerShell.Utility\Write-Error 'Installation consent denied for Microsoft.WinGet.Client module.'
                return
            }

            Microsoft.PowerShell.Utility\Write-Verbose 'Installing WinGet PowerShell client...'
            PowerShellGet\Install-Module 'Microsoft.WinGet.Client' -Force -AllowClobber
            Microsoft.PowerShell.Core\Import-Module 'Microsoft.WinGet.Client'
        }
    }


    process {

        # check if sqlitestudio executable is available in the system path
        if (@(Microsoft.PowerShell.Core\Get-Command 'SQLiteStudio.exe' -ErrorAction SilentlyContinue).Length -eq 0) {

            # determine the default installation directory for sqlitestudio
            $sqliteStudioPath = (GenXdev\Expand-Path "${env:ProgramFiles}\SQLiteStudio")

            # get current user path environment variable
            $currentPath = [Environment]::GetEnvironmentVariable('PATH', 'User')

            # add sqlitestudio to path if not already present
            if ($currentPath -notlike "*$sqliteStudioPath*") {

                Microsoft.PowerShell.Utility\Write-Verbose 'Adding SQLiteStudio directory to user PATH...'
                [Environment]::SetEnvironmentVariable(
                    'PATH',
                    "$currentPath;$sqliteStudioPath",
                    'User')
            }

            # ensure current session has updated path only if not already present
            if ($env:PATH -notlike "*$sqliteStudioPath*") {
                $env:PATH = "$env:PATH;$sqliteStudioPath"
            }

            # verify if path update resolved the missing executable
            if (@(Microsoft.PowerShell.Core\Get-Command 'SQLiteStudio.exe' -ErrorAction SilentlyContinue).Length -gt 0) {

                return
            }

            Microsoft.PowerShell.Utility\Write-Host 'SQLiteStudio not found. Installing SQLiteStudio...'

            # Request consent before installing SQLiteStudio
            $consent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'SQLiteStudio' `
                -Source 'Winget' `
                -Description 'Database management tool required for SQLite operations' `
                -Publisher 'Pawel Salawa'

            if (-not $consent) {
                Microsoft.PowerShell.Utility\Write-Error 'Installation consent denied for SQLiteStudio. SQLite operations may not be available.'
                return
            }

            # ensure winget package manager is available
            if (-not (IsWinGetInstalled)) {

                InstallWinGet
            }

            # attempt installation using winget
            Microsoft.PowerShell.Utility\Write-Verbose 'Installing SQLiteStudio using WinGet...'
            Microsoft.WinGet.Client\Install-WinGetPackage -Id 'PawelSalawa.SQLiteStudio' -Force

            # verify successful installation
            if (-not (Microsoft.PowerShell.Core\Get-Command 'SQLiteStudioU.exe' -ErrorAction SilentlyContinue)) {

                Microsoft.PowerShell.Utility\Write-Error 'SQLiteStudio installation failed.'
                return
            }
        }
    }

    end {}
```

## Examples

### EnsureSQLiteStudioInstalled Checks and ensures SQLiteStudio is installed and accessible.

```powershell
EnsureSQLiteStudioInstalled
Checks and ensures SQLiteStudio is installed and accessible.
```

## Related Links

- [EnsureSQLiteStudioInstalled on GitHub](https://github.com/genXdev/genXdev)
