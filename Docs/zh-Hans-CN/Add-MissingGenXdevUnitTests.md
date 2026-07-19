# Add-MissingGenXdevUnitTests

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 为 GenXdev cmdlet 添加缺失的单元测试。

## Description

该函数扫描所有 GenXdev cmdlet，并为尚未有测试的 cmdlet 创建基本单元测试文件。这些测试包括 PSScriptAnalyzer 规则检查。

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
