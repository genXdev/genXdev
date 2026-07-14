---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version:
schema: 2.0.0
---

# New-GenXdevMCPToken

## SYNOPSIS
Generates a secure random Bearer token for GenXdev MCP server
authentication.

## SYNTAX

```
New-GenXdevMCPToken [[-Length] <Int32>] [-SetEnvironmentVariable] [-Force] [-ProgressAction <ActionPreference>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates a cryptographically secure random token and optionally stores
it in the user environment variable GENXDEV_MCP_TOKEN.
The token is
used to authenticate requests to the GenXdev MCP server from clients on
the local network.

## EXAMPLES

### EXAMPLE 1
```
New-GenXdevMCPToken
```

Generates and displays a new random token without storing it.

### EXAMPLE 2
```
New-GenXdevMCPToken -SetEnvironmentVariable
```

Generates a new token and stores it in the GENXDEV_MCP_TOKEN user
environment variable.
Prompts if a token already exists.

### EXAMPLE 3
```
New-GenXdevMCPToken -Length 64 -SetEnvironmentVariable -Force
```

Generates a longer 64-byte token, stores it in the environment
variable, and overwrites any existing token without prompting.

### EXAMPLE 4
```
$token = New-GenXdevMCPToken
Start-GenXdevMCPServer -Token $token
```

Generates a token and passes it directly to the MCP server without
storing in environment.

## PARAMETERS

### -Length
The length of the token in bytes.
Default is 32 bytes (256 bits),
which produces a 44-character base64 string.
Minimum is 16 bytes (128
bits).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 32
Accept pipeline input: False
Accept wildcard characters: False
```

### -SetEnvironmentVariable
If specified, stores the generated token in the GENXDEV_MCP_TOKEN user
environment variable.
This makes the token available to the MCP server
and VS Code MCP client automatically.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
If specified, overwrites an existing GENXDEV_MCP_TOKEN environment
variable without prompting.
Only used with -SetEnvironmentVariable.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
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

## OUTPUTS

### System.String. The generated Bearer token as a base64-encoded string.
## NOTES
- Token is cryptographically random using
  System.Security.Cryptography.RandomNumberGenerator
- Default 32-byte token provides 256 bits of entropy (highly secure)
- Stored tokens persist across PowerShell sessions and system reboots
- To remove the token, use:
  \[System.Environment\]::SetEnvironmentVariable('GENXDEV_MCP_TOKEN',
  $null, 'User')

## RELATED LINKS
