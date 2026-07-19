# EnsureSSMSInstalled

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Garante que o SSMS esteja instalado e acessível a partir da linha de comando.

## Description

Verifica se o SSMS está instalado e disponível no PATH do sistema. Se não for encontrado, primeiro verifica se a variável de ambiente PATH precisa ser atualizada. Se isso não resolver o problema, instala o SSMS usando WinGet e configura a variável de ambiente PATH.

## Syntax

```powershell
EnsureSSMSInstalled [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureSSMSInstalled Checks and ensures SSMS is installed and accessible.

```powershell
EnsureSSMSInstalled
Checks and ensures SSMS is installed and accessible.
```

## Related Links

- [EnsureSSMSInstalled on GitHub](https://github.com/genXdev/genXdev)
