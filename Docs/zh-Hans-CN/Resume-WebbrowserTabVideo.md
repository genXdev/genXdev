# Resume-WebbrowserTabVideo

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbvideoplay

## Synopsis

> 在YouTube浏览器标签页中恢复视频播放。

## Description

查找活动的 YouTube 浏览器标签页，并通过在页面中找到的任何视频元素上执行 play() 方法来恢复视频播放。如果没有找到 YouTube 标签页，该函数会抛出错误。这个函数对于在浏览器会话中自动化视频播放控制特别有用。

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
