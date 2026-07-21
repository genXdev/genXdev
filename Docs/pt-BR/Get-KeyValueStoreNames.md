# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> Recupera os nomes dos armazenamentos de chave-valor disponíveis.

## Description

* Examina o diretório do armazenamento de chave-valor em busca de arquivos JSON e extrai nomes de armazenamento exclusivos com base no padrão de chave de sincronização especificado.
* Garante que o diretório de armazenamento exista e sincroniza armazenamentos não locais, se necessário.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Chave para identificar o escopo de sincronização, o padrão é todos |
| `-DatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados do armazenamento chave-valor |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Recupera todos os nomes de loja do local padrão.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Recupera nomes de loja para o escopo de sincronização 'Local'.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Recupera todos os nomes de loja de um caminho de banco de dados personalizado usando o alias.

## Parameter Details

### `-SynchronizationKey <String>`

> Chave para identificar o escopo de sincronização, o padrão é todos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Sync-KeyValueStore.md)
