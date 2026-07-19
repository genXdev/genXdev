# VSCode

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Abre um ou mais arquivos no Visual Studio Code.

## Description

Esta função recebe caminhos de arquivo e os abre no Visual Studio Code. Ela expande caminhos e valida a existência do arquivo antes de tentar abri-los. A função suporta tanto caminhos de arquivo diretos quanto entrada de pipeline, sendo ideal para abrir rapidamente vários arquivos a partir de pesquisas no terminal.

## Syntax

```powershell
VSCode -FilePath <String[]> [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue) | 0 | — | O caminho para o arquivo que será aberto no VSCode |
| `-Copilot` | SwitchParameter | — | — | Named | — | Adicionar arquivo de origem à sessão de edição do Copilot |

## Examples

### VSCode -FilePath "C:\path\to\file.txt" -Copilot

```powershell
VSCode -FilePath "C:\path\to\file.txt" -Copilot
```

### Get-ChildItem *.js -Recurse | VSCode

```powershell
Get-ChildItem *.js -Recurse | VSCode
```

## Related Links

- [VSCode on GitHub](https://github.com/genXdev/genXdev)
