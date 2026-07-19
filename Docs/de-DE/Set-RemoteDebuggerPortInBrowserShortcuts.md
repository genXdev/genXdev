# Set-RemoteDebuggerPortInBrowserShortcuts

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Aktualisiert Browser-Verknüpfungen, um Remote-Debugging-Ports zu aktivieren.

## Description

Modifiziert Verknüpfungen von Chrome und Edge, um Remote-Debugging-Port-Parameter einzuschließen. Dies ermöglicht Automatisierungsskripten, über deren Debugging-Schnittstellen mit den Browsern zu interagieren. Behandelt sowohl benutzerspezifische als auch systemweite Verknüpfungen.

Die Funktion:
- Entfernt vorhandene Debugging-Port-Parameter
- Fügt aktuelle Debugging-Ports für Chrome und Edge hinzu
- Aktualisiert Verknüpfungen an gängigen Speicherorten (Desktop, Startmenü, Schnellstart)
- Erfordert Administratorrechte für systemweite Verknüpfungen

## Syntax

```powershell
[CmdletBinding(SupportsShouldProcess)]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    param()

    begin {
        # initialize windows shell automation object for shortcut manipulation
        $shell = Microsoft.PowerShell.Utility\New-Object -ComObject WScript.Shell
        Microsoft.PowerShell.Utility\Write-Verbose 'Created WScript.Shell COM object for shortcut management'
    }


    process {

        ########################################################################
        <#
        .SYNOPSIS
        Sanitizes shortcut arguments by removing existing debugging port settings.

        .DESCRIPTION
        Removes any existing remote debugging port parameters from shortcut
        arguments to prevent duplicate or conflicting port settings.

        .PARAMETER Arguments
        The current shortcut arguments string to clean.

        .EXAMPLE
        Remove-PreviousPortParam "--remote-debugging-port=9222 --other-param"
        Returns: "--other-param"
        #>
        function Remove-PreviousPortParam {

            [CmdletBinding(SupportsShouldProcess)]
            [OutputType([string])]
            param(
                [Parameter(
                    Mandatory = $true,
                    Position = 0,
                    HelpMessage = 'Shortcut arguments string to sanitize'
                )]
                [string] $Arguments
            )

            # initialize working copy of arguments
            $cleanedArgs = $Arguments

            # find first occurrence of port parameter
            $portParamIndex = $cleanedArgs.IndexOf('--remote-debugging-port=')

            # continue cleaning while port parameters exist
            while ($portParamIndex -ge 0) {

                if ($PSCmdlet.ShouldProcess(
                        "Removing debug port parameter at position $portParamIndex",
                        'Remove port parameter?',
                        'Cleaning shortcut arguments')) {

                    # remove port parameter and preserve other arguments
                    $cleanedArgs = $cleanedArgs.Substring(0, $portParamIndex).Trim() `
                        + ' ' + $cleanedArgs.Substring($portParamIndex + 25).Trim()

                    # remove any remaining port number digits
                    while ($cleanedArgs.Length -ge 0 -and
                        '012345679'.IndexOf($cleanedArgs[0]) -ge 0) {

                        $cleanedArgs = if ($cleanedArgs.Length -ge 1) {
                            $cleanedArgs.Substring(1)
                        }
                        else {
                            ''
                        }
                    }
                }

                # check for additional port parameters
                $portParamIndex = $cleanedArgs.IndexOf('--remote-debugging-port=')
            }

            return $cleanedArgs
        }

        # configure chrome debugging settings
        $chromePort = GenXdev\Get-ChromeRemoteDebuggingPort
        $chromeParam = " --remote-allow-origins=* --remote-debugging-port=$chromePort"
        Microsoft.PowerShell.Utility\Write-Verbose "Configuring Chrome debugging port: $chromePort"

        # define chrome shortcut paths to process
        $chromePaths = @(
            "$Env:AppData\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Google Chrome.lnk",
            "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\Google Chrome.lnk",
            (Microsoft.PowerShell.Management\Join-Path (GenXdev\Get-KnownFolderPath StartMenu) 'Google Chrome.lnk'),
            (Microsoft.PowerShell.Management\Join-Path (GenXdev\Get-KnownFolderPath Desktop) 'Google Chrome.lnk')
        )

        # update chrome shortcuts
        $chromePaths | Microsoft.PowerShell.Core\ForEach-Object {
            Microsoft.PowerShell.Management\Get-ChildItem -LiteralPath $PSItem -File -Recurse -ErrorAction SilentlyContinue |
                Microsoft.PowerShell.Core\ForEach-Object {

                    if ($PSCmdlet.ShouldProcess(
                            $PSItem.FullName,
                            "Update Chrome shortcut with debug port $chromePort")) {

                        try {
                            $shortcut = $shell.CreateShortcut($PSItem.FullName)
                            $shortcut.Arguments = $shortcut.Arguments.Replace('222', '')
                            $shortcut.Arguments = "$(Remove-PreviousPortParam `
                            $shortcut.Arguments) $chromeParam".Trim()
                            $null = $shortcut.Save()
                            Microsoft.PowerShell.Utility\Write-Verbose "Updated Chrome shortcut: $($PSItem.FullName)"
                        }
                        catch {
                            Microsoft.PowerShell.Utility\Write-Verbose "Failed to update Chrome shortcut: $($PSItem.FullName)"
                        }
                    }
                }
            }

            # configure edge debugging settings
            $edgePort = GenXdev\Get-EdgeRemoteDebuggingPort
            $edgeParam = " --remote-allow-origins=* --remote-debugging-port=$edgePort"
            Microsoft.PowerShell.Utility\Write-Verbose "Configuring Edge debugging port: $edgePort"

            # define edge shortcut paths to process
            $edgePaths = @(
                "$Env:AppData\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Microsoft Edge.lnk",
                "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk",
            (Microsoft.PowerShell.Management\Join-Path (GenXdev\Get-KnownFolderPath StartMenu) 'Microsoft Edge.lnk'),
            (Microsoft.PowerShell.Management\Join-Path (GenXdev\Get-KnownFolderPath Desktop) 'Microsoft Edge.lnk')
            )

            # update edge shortcuts
            $edgePaths | Microsoft.PowerShell.Core\ForEach-Object {
                Microsoft.PowerShell.Management\Get-ChildItem -LiteralPath $PSItem -File -Recurse -ErrorAction SilentlyContinue |
                    Microsoft.PowerShell.Core\ForEach-Object {

                        if ($PSCmdlet.ShouldProcess(
                                $PSItem.FullName,
                                "Update Edge shortcut with debug port $edgePort")) {

                            try {
                                $shortcut = $shell.CreateShortcut($PSItem.FullName)
                                $shortcut.Arguments = "$(Remove-PreviousPortParam `
                            $shortcut.Arguments.Replace($edgeParam, '').Trim())$edgeParam"
                                $null = $shortcut.Save()
                                Microsoft.PowerShell.Utility\Write-Verbose "Updated Edge shortcut: $($PSItem.FullName)"
                            }
                            catch {
                                Microsoft.PowerShell.Utility\Write-Verbose "Failed to update Edge shortcut: $($PSItem.FullName)"
                            }
                        }
                    }
                }
            }

            end {
            }
```

## Examples

### Set-RemoteDebuggerPortInBrowserShortcuts Updates all Chrome and Edge shortcuts with their respective debugging ports.

```powershell
Set-RemoteDebuggerPortInBrowserShortcuts
Updates all Chrome and Edge shortcuts with their respective debugging ports.
```

## Related Links

- [Set-RemoteDebuggerPortInBrowserShortcuts on GitHub](https://github.com/genXdev/genXdev)
