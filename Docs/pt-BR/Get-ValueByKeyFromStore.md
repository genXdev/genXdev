# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue`

## Synopsis

> Recupera um valor de um armazenamento de chave-valor baseado em JSON.

## Description

* Recupera um valor para uma chave especificada em um armazenamento de chave-valor baseado em arquivo JSON.
* Suporta valores padrão opcionais e sincronização entre diferentes escopos.
* Fornece inicialização automática de diretório e sincronização.

## Syntax

```powershell
Get-ValueByKeyFromStore -StoreName <String> -KeyName <String> [[-DefaultValue] <String>] [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Nome do repositório de onde recuperar a chave |
| `-KeyName` | String | ✅ | — | 1 | — | Chave a ser recuperada do armazenamento especificado |
| `-DefaultValue` | String | — | — | 2 | — | Um valor padrão opcional |
| `-SynchronizationKey` | String | — | — | 3 | — | Chave para identificar o escopo de sincronização |
| `-DatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados do armazenamento chave-valor |

## Examples

### Example 1

```powershell
Get-ValueByKeyFromStore -StoreName "AppSettings" -KeyName "Theme" -DefaultValue "Dark"
```

Recupera o valor de "Theme" de "AppSettings", retornando "Dark" se não for encontrado.

### Example 2

```powershell
getvalue AppSettings Theme
```

Usa o alias 'getvalue' para recuperar um valor.

## Parameter Details

### `-StoreName <String>`

> Nome do repositório de onde recuperar a chave

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeyName <String>`

> Chave a ser recuperada do armazenamento especificado

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefaultValue <String>`

> Um valor padrão opcional

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> Chave para identificar o escopo de sincronização

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabasePath <String>`

> Caminho do banco de dados para arquivos de dados do armazenamento chave-valor

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-StoreKeys.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Sync-KeyValueStore.md)
