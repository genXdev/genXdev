# Stop-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `sst

## Synopsis

> Stopt onmiddellijk alle lopende tekst-naar-spraak uitvoer.

## Description

Stopt alle actieve en wachtende spraaksynthese door zowel standaard als aangepaste spraakbewerkingen te annuleren. Dit zorgt voor onmiddellijke stilte bij eventuele lopende tekst-naar-spraakactiviteiten.

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
