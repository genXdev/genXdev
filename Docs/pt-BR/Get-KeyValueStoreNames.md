# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames

## Synopsis

> Recupera os nomes dos armazenamentos de chave-valor disponíveis.

## Description

* Examina o diretório do armazenamento de pares chave-valor em busca de arquivos JSON e extrai nomes de armazenamentos exclusivos com base no padrão de chave de sincronização especificado.
* Garante que o diretório de armazenamento exista e sincroniza armazenamentos não locais, se necessário.

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | Chave para identificar o escopo de sincronização, padrão é todos |
| `-DatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados do armazenamento chave-valor |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

Recupera todos os nomes de lojas da localização padrão.

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

Recupera os nomes das lojas para o escopo de sincronização 'Local'.

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

Recupera todos os nomes de lojas de um caminho de banco de dados personalizado usando o alias.

## Related Links

- [Get-KeyValueStoreNames on GitHub](https://github.com/genXdev/genXdev)
