# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst

## Synopsis

> Immediately stops any ongoing text-to-speech output.

## Description

표준 및 사용자 정의 음성 합성 작업을 모두 취소하여 모든 활성 및 대기 중인 음성 합성을 중단합니다. 이는 진행 중인 모든 텍스트 음성 변환 활동에 즉각적인 무음을 제공합니다.

## Syntax

```powershell
[CmdletBinding(SupportsShouldProcess = $true)]
    [Alias('sst')]
    param()

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose 'Initiating speech cancellation request'
    }


    process {

        try {
            if ($PSCmdlet.ShouldProcess('Text-to-speech output', 'Stop')) {
                # cancel all pending standard speech operations
                $null = [GenXdev.Helpers.Misc]::Speech.SpeakAsyncCancelAll()

                # cancel all pending customized speech operations
                $null = [GenXdev.Helpers.Misc]::SpeechCustomized.SpeakAsyncCancelAll()

                Microsoft.PowerShell.Utility\Write-Verbose 'Successfully cancelled all speech operations'
            }
        }
        catch {
            # silently handle any speech cancellation errors
            Microsoft.PowerShell.Utility\Write-Verbose 'Error occurred while attempting to cancel speech'
        }
    }

    end {
    }
```

## Examples

### PS C:\> Stop-TextToSpeech Immediately stops any ongoing speech

```powershell
PS C:\> Stop-TextToSpeech
Immediately stops any ongoing speech
```

### PS C:\> say "Hello world"; sst Starts speaking but gets interrupted immediately

```powershell
PS C:\> say "Hello world"; sst
Starts speaking but gets interrupted immediately
```

## Related Links

- [Stop-TextToSpeech on GitHub](https://github.com/genXdev/genXdev)
