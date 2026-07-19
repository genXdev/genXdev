# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> Recupera um valor de um armazenamento de chave-valor baseado em JSON.

## Description

* Recupera um valor para uma chave especificada de um armazenamento chave-valor baseado em arquivo JSON.
* Suporta valores padrão opcionais e sincronização entre diferentes escopos.
* Fornece inicialização automática de diretório e sincronização.

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

## Examples

### Example 1

```powershell
Get-ValueByKeyFromStore -StoreName "AppSettings" -KeyName "Theme" -DefaultValue "Dark"
```

Recupera o valor do "Theme" em "AppSettings", retornando "Dark" se não encontrado.

### Example 2

```powershell
getvalue AppSettings Theme
```

Usa o alias 'getvalue' para recuperar um valor.

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
