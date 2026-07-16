# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-LineToREADME [[-Line] <String>] -Section <String> -Prefix <String> [-Code] [-Done] [-Show] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | A linha a ser adicionada ao README |
| `-Section` | String | ✅ | — | 1 | — | A seção para adicionar a linha |
| `-Prefix` | String | ✅ | — | 2 | `'* '` | O prefixo a ser usado para a linha |
| `-Code` | SwitchParameter | — | — | Named | — | Abrir no Visual Studio Code após modificar |
| `-Show` | SwitchParameter | — | — | Named | — | Mostre a seção modificada |
| `-Done` | SwitchParameter | — | — | Named | — | Marcar item como concluído |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README no diretório do perfil do PowerShell |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use o README no diretório do OneDrive |

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
