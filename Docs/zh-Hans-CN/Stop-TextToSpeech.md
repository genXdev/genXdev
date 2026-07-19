# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst

## Synopsis

> Immediately stops any ongoing text-to-speech output.

## Description

通过取消标准和自定义语音合成操作，停止所有活动和排队中的语音合成。这将使任何正在进行的文本转语音活动立即静音。

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
