# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> Recupera todos os nomes de chave para um armazenamento de chave-valor.

## Description

* Consulta o arquivo JSON do KeyValueStore para recuperar todas as chaves ativas (não deletadas) de um armazenamento especificado.
* Opcionalmente, pode filtrar por escopo de sincronização.
* Inicializa automaticamente a estrutura de diretórios se não for encontrada e gerencia a sincronização para armazenamentos não locais.

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

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

Recupera todas as chaves do armazenamento de ApplicationSettings para o escopo Local.

### Example 2

```powershell
getkeys AppSettings
```

Recupera chaves usando o alias.

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
