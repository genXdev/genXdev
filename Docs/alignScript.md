---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# alignScript

## SYNOPSIS
Returns a string (with altered indentation) of a provided scriptblock string

## SYNTAX

```
alignScript [[-script] <String>] [[-spaces] <Int32>]
```

## DESCRIPTION
Changes the indentation of a scriptblock string while respecting the original code-block identations

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -script
The scriptblock string

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -spaces
The minimum number of spaces for each line

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
