---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# Get-WindowPosition

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### Default (Default)
```
Get-WindowPosition [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### ProcessName
```
Get-WindowPosition [[-ProcessName] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### Process
```
Get-WindowPosition [-Process <Process>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### WindowHelper
```
Get-WindowPosition [-WindowHelper <WindowObj[]>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Process
The process of the window to get position for

```yaml
Type: Process
Parameter Sets: Process
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ProcessName
The process name of the window to get position for

```yaml
Type: String
Parameter Sets: ProcessName
Aliases: Name

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: True
```

### -WindowHelper
Get-Window helper object for direct window manipulation

```yaml
Type: WindowObj[]
Parameter Sets: WindowHelper
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

### System.Diagnostics.Process

### GenXdev.Helpers.WindowObj[]

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
