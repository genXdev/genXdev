# Add-MissingGenXdevUnitTests

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev cmdlet에 대한 누락된 단위 테스트를 추가합니다.

## Description

이 함수는 모든 GenXdev cmdlet을 스캔하여 아직 테스트가 없는 것들에 대해 기본 단위 테스트 파일을 생성합니다. 테스트에는 PSScriptAnalyzer 규칙 검사가 포함됩니다.

## Syntax

```powershell
# dont remove this line [dontrefactor]

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', 'Add-MissingGenXdevUnitTests')]
    param()

    return;

    # get all cmdlets that need unit tests
    GenXdev\Get-GenXDevCmdlet | Microsoft.PowerShell.Core\ForEach-Object {

        $genXdevCmdlet = $_

        # skip if test file already exists and has content
        if ([IO.File]::Exists($_.ScriptTestFilePath) -and
            ([IO.File]::ReadAllText($_.ScriptTestFilePath).Trim() -ne '')) {

            return
        }

        # create test file content
        $prompt = (@"
###############################################################################
Describe `"`$CmdletName`" {

    It `"should pass PSScriptAnalyzer rules`" {

# get the script path for analysis
        `$scriptPath = GenXdev\Expand-Path `"`$($MyInvocation.MyCommand.Module.ModuleBase)\Functions\`$FullModuleName\`$CmdLetNoTestName.ps1`"

# run analyzer with explicit settings
        `$analyzerResults = GenXdev\Invoke-GenXdevScriptAnalyzer ``
            -Path `$scriptPath

        [string] `$message = `"`"
        `$analyzerResults | Microsoft.PowerShell.Core\ForEach-Object {

            `$message = `$message + @`"
--------------------------------------------------
Rule: `$(`$_.RuleName)``
Description: `$(`$_.Description)
Message: `$(`$_.Message)
``r``n
`"@
        }

        `$analyzerResults.Count | Should -Be 0 -Because @`"
The following PSScriptAnalyzer rules are being violated:
`$message
`"@;
    }
}
###############################################################################
"@).Replace(
            "`$CmdletName", $genXdevCmdlet.Name
        ).Replace(
            "`$FullModuleName", $genXdevCmdlet.ModuleName
        ).Replace(
            "`$CmdLetNoTestName", $genXdevCmdlet.Name
        )

        # write test file
        $null = $prompt | Microsoft.PowerShell.Utility\Out-File (
            (GenXdev\Expand-Path ($genXdevCmdlet.ScriptTestFilePath) -CreateDirectory)
        ) -Force

        Microsoft.PowerShell.Utility\Write-Verbose "Created test file: $($genXdevCmdlet.ScriptTestFilePath)"
        Microsoft.PowerShell.Utility\Write-Output $prompt
    }
```

## Examples

### Add-MissingGenXdevUnitTests

```powershell
Add-MissingGenXdevUnitTests
```

## Related Links

- [Add-MissingGenXdevUnitTests on GitHub](https://github.com/genXdev/genXdev)
