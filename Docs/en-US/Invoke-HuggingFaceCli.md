# Invoke-HuggingFaceCli

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Invokes the Hugging Face CLI with the specified arguments.

## Description

Calls EnsureHuggingFace to ensure the CLI is installed, then executes the
Hugging Face CLI with the provided arguments. Reads the CLI path from
$ENV:LOCALAPPDATA\GenXdev.PowerShell\hfclilocation.json. Returns the command
output as a string; throws Write-Error on failure.

## Syntax

```powershell
Invoke-HuggingFaceCli -Arguments <String[]> [[-Timeout] <Int32>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Arguments` | String[] | ✅ | — | 0 | — | The arguments to pass to the Hugging Face CLI |
| `-Timeout` | Int32 | — | — | 1 | `36000` | Timeout in seconds for CLI execution and dependency installation |
| `-Force` | SwitchParameter | — | — | Named | — | Forces reinstallation of the Hugging Face CLI |

## Examples

### Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force

```powershell
Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force
```

Invokes the CLI with the "login" command, forcing reinstallation.

### Invoke-HuggingFaceCli @("whoami") 300

```powershell
Invoke-HuggingFaceCli @("whoami") 300
```

Invokes the CLI with the "whoami" command and a 300-second timeout.

## Related Links

- [Invoke-HuggingFaceCli on GitHub](https://github.com/genXdev/genXdev)
