# Resume-WebbrowserTabVideo

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbvideoplay

## Synopsis

> YouTube 브라우저 탭에서 동영상 재생을 재개합니다.

## Description

활성화된 YouTube 브라우저 탭을 찾아 페이지에서 발견된 비디오 요소에 대해 play() 메서드를 실행하여 비디오 재생을 재개합니다. YouTube 탭이 없으면 함수는 오류를 발생시킵니다. 이 함수는 브라우저 세션에서 비디오 재생 제어를 자동화하는 데 특히 유용합니다.

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
