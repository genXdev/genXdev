# ResolveInputObjectFileNames

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Expande objetos de entrada em nomes de arquivos e diretórios, suportando vários filtros e opções de saída.

## Description

Esta função processa objetos de entrada (arquivos, diretórios ou coleções) e os expande em nomes de arquivos e diretórios. Ela suporta filtragem, correspondência de padrões e pode gerar resultados como objetos. A função foi projetada para funcionar com entrada de pipeline e oferece opções para recursão, fluxos de dados alternativos e muito mais.

## Syntax

```powershell
ResolveInputObjectFileNames [[-InputObject] <Object>] [[-RelativeBasePath] <String>] [-AllDrives] [-File] [-IncludeAlternateFileStreams] [-NoRecurse] [-PassThru] [<CommonParameters>]

ResolveInputObjectFileNames [[-Pattern] <String>] [<CommonParameters>]

ResolveInputObjectFileNames [-Directory] [-FilesAndDirectories] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Objeto de entrada contendo nomes de arquivos ou diretórios |
| `-File` | SwitchParameter | — | — | Named | — | Retornar apenas arquivos |
| `-Pattern` | String | — | — | 1 | — | Padrão de expressão regular para pesquisar dentro do conteúdo *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Caminho base para resolução de caminhos relativos na saída |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Pesquisar em todas as unidades disponíveis |
| `-Directory` | SwitchParameter | — | — | Named | — | Pesquisar apenas por diretórios *(Parameter set: )* |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Inclua arquivos e diretórios *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | {} |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Incluir fluxos de dados alternativos nos resultados da pesquisa |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Não recorrer a subdiretórios |

## Examples

### ResolveInputObjectFileNames -Input "C:\Temp" -File

```powershell
ResolveInputObjectFileNames -Input "C:\Temp" -File
```

## Related Links

- [ResolveInputObjectFileNames on GitHub](https://github.com/genXdev/genXdev)
