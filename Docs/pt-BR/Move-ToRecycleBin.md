# Move-ToRecycleBin

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Move arquivos e pastas para a Lixeira do Windows com segurança.

## Description

* Move com segurança arquivos ou diretórios para a lixeira usando a API Shell do Windows, mesmo que estejam em uso no momento.
* A função usa o objeto COM Shell.Application para realizar a operação, garantindo o comportamento adequado de reciclagem e capacidade de desfazer.

## Syntax

```powershell
Move-ToRecycleBin [-Path] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Especifique o(s) caminho(s) para mover para a lixeira |

## Examples

### Example 1

```powershell
Move-ToRecycleBin -Path "C:\temp\old-report.txt"
```

Mover um único arquivo para a lixeira.

### Example 2

```powershell
"file1.txt","file2.txt" | recycle
```

Mova vários arquivos para a lixeira usando pipeline e alias.

## Related Links

- [Move-ToRecycleBin on GitHub](https://github.com/genXdev/genXdev)
