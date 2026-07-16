# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ValueByKeyFromStore [-StoreName] <string> [-KeyName] <string> [[-DefaultValue] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nome da loja para recuperar a chave |
| `-KeyName` | String | ✅ | — | 1 | — | Chave a ser recuperada do armazenamento especificado |
| `-DefaultValue` | String | — | — | 2 | — | Um valor padrão opcional |
| `-SynchronizationKey` | String | — | — | 3 | — | Chave para identificar o escopo de sincronização |
| `-DatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados do armazenamento chave-valor |

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
