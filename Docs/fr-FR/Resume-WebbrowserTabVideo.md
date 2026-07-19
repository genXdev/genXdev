# Resume-WebbrowserTabVideo

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbvideoplay

## Synopsis

> Reprend la lecture de la vidéo dans un onglet du navigateur YouTube.

## Description

Trouve l'onglet YouTube actif dans le navigateur et reprend la lecture de la vidéo en exécutant la méthode play() sur tous les éléments vidéo trouvés dans la page. Si aucun onglet YouTube n'est trouvé, la fonction génère une erreur. Cette fonction est particulièrement utile pour automatiser le contrôle de la lecture vidéo dans des sessions de navigation.

## Syntax

```powershell
[CmdletBinding()]
    [Alias('wbvideoplay')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    param (
        ########################################################################
    )

    begin {

        # search for a youtube tab in the current browser session
        Microsoft.PowerShell.Utility\Write-Verbose 'Attempting to locate an active YouTube tab...'
        $null = GenXdev\Select-WebbrowserTab -Name '*youtube*'
    }


    process {

        # verify that a youtube tab was successfully found and selected
        if ($null -eq $Global:chromeSession) {

            throw 'No YouTube tab found in current browser session'
        }

        Microsoft.PowerShell.Utility\Write-Verbose 'YouTube tab found - initiating video playback...'

        # execute the play() method on all video elements in the current page
        $null = GenXdev\Get-WebbrowserTabDomNodes 'video' 'e.play()'

        Microsoft.PowerShell.Utility\Write-Verbose 'Video playback successfully resumed'
    }

    end {
    }
```

## Examples

### Resume-WebbrowserTabVideo

```powershell
Resume-WebbrowserTabVideo
```

### wbvideoplay

```powershell
wbvideoplay
```

## Related Links

- [Resume-WebbrowserTabVideo on GitHub](https://github.com/genXdev/genXdev)
