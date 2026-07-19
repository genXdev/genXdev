# Set-VLCPlayerFocused

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `showvlc, `vlcf, `fvlc

## Synopsis

> Sets focus to the VLC media player window.

## Description

Locates a running instance of VLC media player and brings its window to the
foreground, making it the active window. If VLC is not running, silently
continues without error. Uses Windows API calls to manipulate window focus.

## Syntax

```powershell
[CmdletBinding(SupportsShouldProcess = $true)]
    [Alias('showvlc', 'vlcf', 'fvlc')]
    param()

    begin {

        # log operation start for troubleshooting
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Set-VLCPlayerFocused operation'
    }


    process {

        try {
            # find vlc window by process name, returns null if not found
            Microsoft.PowerShell.Utility\Write-Verbose 'Attempting to locate VLC player window'
            $window = GenXdev\Get-Window -ProcessName vlc

            # only proceed if window was found and ShouldProcess confirms
            if ($window -and $PSCmdlet.ShouldProcess('VLC media player window',
                    'Set as foreground window')) {

                Microsoft.PowerShell.Utility\Write-Verbose 'Setting VLC window as foreground window'

                $null = $window.Focus()
            }
        }
        catch {
            # silently continue if window not found or other errors occur
            Microsoft.PowerShell.Utility\Write-Verbose "Failed to set VLC window focus: $_"
        }
    }

    end {
    }
```

## Examples

### Set-VLCPlayerFocused Brings the VLC player window to front and gives it focus

```powershell
Set-VLCPlayerFocused
Brings the VLC player window to front and gives it focus
```

### vlcf Same operation using the short alias

```powershell
vlcf
Same operation using the short alias
```

## Related Links

- [Set-VLCPlayerFocused on GitHub](https://github.com/genXdev/genXdev)
