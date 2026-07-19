# EnsurePester

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Pester 테스트 프레임워크를 사용할 수 있도록 보장합니다.

## Description

이 함수는 현재 PowerShell 환경에 Pester 모듈이 설치되어 있는지 확인합니다. 설치되어 있지 않은 경우 PowerShell 갤러리에서 자동으로 설치하여 현재 세션으로 가져옵니다. 이렇게 하면 필요할 때 Pester 테스트 기능을 사용할 수 있습니다.

## Syntax

```powershell
[CmdletBinding()]
    param()

    begin {

        # inform user that we're checking pester installation
        Microsoft.PowerShell.Utility\Write-Verbose 'Checking for Pester module installation...'
    }


    process {

        # attempt silent import of pester to check if it's available
        Microsoft.PowerShell.Core\Import-Module -Name Pester -ErrorAction SilentlyContinue

        $found = (Microsoft.PowerShell.Core\Get-Module -Name Pester -ErrorAction SilentlyContinue);

        # verify if pester module is now loaded in the current session
        if ((-not $found) -or ($found.Version -lt '5.7.0')) {

            # notify about installation attempt through verbose and regular output
            Microsoft.PowerShell.Utility\Write-Verbose 'Pester module not found, attempting installation...'
            Microsoft.PowerShell.Utility\Write-Host 'Pester not found. Installing Pester...'

            try {
                # install pester module from the powershell gallery
                $null = PowerShellGet\Install-Module -Name Pester `
                    -Force `
                    -SkipPublisherCheck

                # load the newly installed pester module
                $null = Microsoft.PowerShell.Core\Import-Module -Name Pester -Force

                # confirm successful installation
                Microsoft.PowerShell.Utility\Write-Host 'Pester installed successfully.'
                Microsoft.PowerShell.Utility\Write-Verbose 'Pester module installation and import completed.'
            }
            catch {
                # report any installation failures
                Microsoft.PowerShell.Utility\Write-Error "Failed to install Pester. Error: $PSItem"
                Microsoft.PowerShell.Utility\Write-Verbose 'Pester installation failed with error.'
            }
        }
        else {
            # inform that pester is already available
            Microsoft.PowerShell.Utility\Write-Verbose 'Pester module already installed and imported.'
        }
    }

    end {
    }
```

## Examples

### EnsurePester This ensures Pester is installed and ready for use

```powershell
EnsurePester
This ensures Pester is installed and ready for use
```

## Related Links

- [EnsurePester on GitHub](https://github.com/genXdev/genXdev)
