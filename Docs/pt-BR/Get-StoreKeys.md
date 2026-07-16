# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-StoreKeys [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nome da loja cujas chaves devem ser recuperadas |
| `-SynchronizationKey` | String | — | — | 1 | — | Chave para identificar o escopo de sincronização, padrão é todos |
| `-DatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados do armazenamento chave-valor |

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
