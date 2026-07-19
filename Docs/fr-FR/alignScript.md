# alignScript

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Renvoie une chaîne (avec indentation modifiée) d'une chaîne de scriptblock fournie

## Description

Changes the indentation of a scriptblock string while respecting the original code-block indentations

## Syntax

```powershell
param([string] $script, [int] $spaces = 0)


    $lines = @($script.Replace("`r`n", "`n").Replace("`t", '    ').Split("`n"));

    [int] $NrOfSpacesToTrim = [int]::MaxValue;

    $lines | Microsoft.PowerShell.Core\ForEach-Object -ErrorAction SilentlyContinue {

        $c = 0;
        $s = $PSItem
        while (($s.Length -gt 0) -and ($s.substring(0, 1) -eq ' ')) {

            $c++;
            if ($s.Length -gt 1) {

                $s = $s.substring(1);
            }
            else {

                $s = '';
            }
        }

        $NrOfSpacesToTrim = [Math]::Min($NrOfSpacesToTrim, $c);
    }

    if ($NrOfSpacesToTrim -eq [int]::MaxValue) {

        $NrOfSpacesToTrim = 0;
    }

    @($lines | Microsoft.PowerShell.Core\ForEach-Object -ErrorAction SilentlyContinue {

            [int] $c = $NrOfSpacesToTrim;
            $a = $PSItem

            while (($a.Length -gt 0) -and ($a.substring(0, 1) -eq ' ') -and ($c -gt 0)) {

                $c--;

                if ($a.Length -gt 1) {

                    $a = $a.substring(1);
                }
                else {

                    $a = '';
                }
            }

            for ($i = 0; $i -lt $spaces; $i++) {

                $a = " $a"
            }

            $a
        }) -Join "`r`n"
```

## Related Links

- [alignScript on GitHub](https://github.com/genXdev/genXdev)
