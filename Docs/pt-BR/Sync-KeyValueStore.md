# Sync-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Sincroniza arquivos JSON de armazenamento chave-valor locais e do OneDrive.

## Description

Realiza sincronização bidirecional entre arquivos JSON sombra locais e do OneDrive usando uma estratégia de timestamp da última modificação. Os registros são mesclados com base no horário da última modificação, com as versões mais recentes tendo precedência.

## Syntax

```powershell
Sync-KeyValueStore [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Chave para identificar o escopo de sincronização |
| `-DatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados do armazenamento chave-valor |

## Examples

### Example 1

```powershell
Sync-KeyValueStore
```

### Example 2

```powershell
Sync-KeyValueStore -SynchronizationKey "UserSettings"
```

## Related Links

- [Sync-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)
