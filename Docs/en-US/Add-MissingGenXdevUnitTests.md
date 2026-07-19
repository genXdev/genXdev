# Add-MissingGenXdevUnitTests

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Adds missing unit tests for GenXdev cmdlets.

## Description

This function scans all GenXdev cmdlets and creates basic unit test files
    for those that don't have tests yet. The tests include PSScriptAnalyzer
    rule checks.

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
