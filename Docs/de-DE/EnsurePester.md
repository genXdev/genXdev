# EnsurePester

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Stellt sicher, dass das Pester-Testframework zur Verfügung steht.

## Description

Diese Funktion überprüft, ob das Pester-Modul in der aktuellen PowerShell-Umgebung installiert ist. Wenn es nicht gefunden wird, installiert es es automatisch aus dem PowerShell-Katalog und importiert es in die aktuelle Sitzung. Dies stellt sicher, dass Pester-Testfunktionen bei Bedarf verfügbar sind.

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
