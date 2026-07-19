# EnsurePaintNet

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Zorgt ervoor dat Paint.NET correct is geïnstalleerd en toegankelijk is op het systeem.

## Description

Voert uitgebreide controles en installatie uit voor Paint.NET:
- Controleert of Paint.NET geïnstalleerd is en toegankelijk is via het PATH
- Installeert Paint.NET via WinGet indien niet aanwezig
- Configureert de systeem PATH-omgevingsvariabele
- Zorgt dat paintdotnet.exe beschikbaar is voor gebruik via de opdrachtregel
De functie handelt alle vereisten af en garandeert een werkende Paint.NET-installatie.

## Syntax

```powershell
[CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    param()

    begin {
        # ensure graphics assembly is loaded for image processing
        if (-not [System.Drawing.Rectangle]) {

            Microsoft.PowerShell.Utility\Add-Type -AssemblyName System.Drawing
        }

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
                # Request consent before installing WinGet PowerShell module
                $wingetConsent = GenXdev\Confirm-InstallationConsent `
                    -ApplicationName 'Microsoft.WinGet.Client PowerShell Module' `
                    -Source 'PowerShell Gallery' `
                    -Description 'Required for automated software package management via WinGet' `
                    -Publisher 'Microsoft'

                if (-not $wingetConsent) {
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
            # First, ensure current session PATH is up to date with both Machine and User PATH
            $paintNetPath = 'C:\Program Files\paint.net'

            # Only add Paint.NET path to user PATH if it's not already present
            $userPath = [Environment]::GetEnvironmentVariable('PATH', 'User')
            if ($userPath -notlike "*$paintNetPath*") {
                $userPath = "$userPath;$paintNetPath"
                [System.Environment]::SetEnvironmentVariable('PATH', $userPath, 'User')
            }

            # Only update session PATH if Paint.NET path is not already in current session
            if ($env:PATH -notlike "*$paintNetPath*") {
                $env:PATH = "$env:PATH;$paintNetPath"
            }

            # Check if Paint.NET is already accessible
            Microsoft.PowerShell.Utility\Write-Verbose 'Paint.NET not found in PATH, checking installation...'

            # Check again after updating PATH
            if (@(Microsoft.PowerShell.Core\Get-Command 'paintdotnet.exe' -ErrorAction SilentlyContinue).Length -eq 0) {

                # Request consent before installing Paint.NET
                $paintNetConsent = GenXdev\Confirm-InstallationConsent `
                    -ApplicationName 'Paint.NET' `
                    -Source 'WinGet' `
                    -Description 'Image editing software required for graphics processing operations' `
                    -Publisher 'dotPDN LLC'

                if (-not $paintNetConsent) {
                    throw 'User declined installation of Paint.NET. Cannot proceed without image editing capabilities.'
                }

                Microsoft.PowerShell.Utility\Write-Verbose 'Installing Paint.NET...'

                if (-not (IsWinGetInstalled)) {

                    InstallWinGet
                }

                try {
                    $null = Microsoft.WinGet.Client\Install-WinGetPackage -Id 'dotPDN.PaintDotNet' -Force
                }
                catch {
                    throw "Failed to install Paint.NET via WinGet: $_"
                }                    # Update PATH after installation
                $userPath = [Environment]::GetEnvironmentVariable('PATH', 'User')
                if ($userPath -notlike "*$paintNetPath*") {
                    try {
                        Microsoft.PowerShell.Utility\Write-Verbose 'Adding Paint.NET to User PATH after installation...'
                        [Environment]::SetEnvironmentVariable(
                            'PATH',
                            "$userPath;$paintNetPath",
                            'User')
                        # Update current session PATH only if not already present
                        if ($env:PATH -notlike "*$paintNetPath*") {
                            $env:PATH = "$env:PATH;$paintNetPath"
                        }
                    }
                    catch [System.Security.SecurityException] {
                        throw "Access denied while updating PATH environment variable: $_"
                    }
                }

                if (-not (Microsoft.PowerShell.Core\Get-Command 'paintdotnet.exe' -ErrorAction SilentlyContinue)) {
                    throw 'Paint.NET installation failed: paintdotnet.exe not found after installation'
                }
            }

            Microsoft.PowerShell.Utility\Write-Verbose "Paint.NET is now available at: $(Microsoft.PowerShell.Core\Get-Command 'paintdotnet.exe' -ErrorAction SilentlyContinue | Microsoft.PowerShell.Utility\Select-Object -ExpandProperty Source)"
        }
        catch {
            $errorMessage = "Failed to setup Paint.NET: $($_.Exception.Message)"
            Microsoft.PowerShell.Utility\Write-Error -Exception $_.Exception -Message $errorMessage -Category OperationStopped
            throw
        }
    }

    end {}
```

## Examples

### EnsurePaintNet This will verify and setup Paint.NET if needed.

```powershell
EnsurePaintNet
This will verify and setup Paint.NET if needed.
```

## Related Links

- [EnsurePaintNet on GitHub](https://github.com/genXdev/genXdev)
