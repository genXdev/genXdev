# Resume-WebbrowserTabVideo

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbvideoplay

## Synopsis

> Возобновляет воспроизведение видео на вкладке браузера YouTube.

## Description

Находит активную вкладку YouTube в браузере и возобновляет воспроизведение видео, выполняя метод play() для любых найденных на странице видеоэлементов. Если вкладка YouTube не найдена, функция выдаёт ошибку. Эта функция особенно полезна для автоматизации управления воспроизведением видео в сеансах браузера.

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
