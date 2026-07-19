# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Inicializa a estrutura de diretórios do KeyValueStore para armazenamento local e no OneDrive.

## Description

Cria a estrutura de diretórios para armazenamentos de chave-valor baseados em JSON em dois locais: máquina local para acesso imediato e pasta OneDrive para sincronização na nuvem. O cmdlet garante que ambos os diretórios existam e estejam configurados adequadamente.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | Caminho do banco de dados para arquivos de dados do armazenamento chave-valor |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

Cria os diretórios locais e do OneDrive padrão para armazenamentos de pares chave-valor.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

Cria diretórios de armazenamento chave-valor sob o caminho personalizado especificado.

## Related Links

- [Initialize-KeyValueStores on GitHub](https://github.com/genXdev/genXdev)
