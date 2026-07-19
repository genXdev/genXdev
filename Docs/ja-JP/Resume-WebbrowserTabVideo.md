# Resume-WebbrowserTabVideo

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbvideoplay

## Synopsis

> YouTubeブラウザタブでの動画再生を再開します。

## Description

アクティブなYouTubeブラウザタブを見つけ、ページ内のビデオ要素に対してplay()メソッドを実行することで動画の再生を再開します。YouTubeタブが見つからない場合は、関数はエラーをスローします。この関数は、ブラウザセッションでの動画再生制御を自動化する際に特に便利です。

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
