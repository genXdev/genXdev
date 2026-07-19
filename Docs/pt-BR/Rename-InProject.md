# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> Realiza substituição de texto em todo um diretório de projeto.

## Description

Pesquisa recursivamente em arquivos e diretórios de um projeto para realizar substituições de texto. Lida tanto com nomes de arquivos/diretórios quanto com conteúdos de arquivos. Ignora arquivos binários comuns e pastas de repositório (.git, .svn) para evitar corrupção. Usa codificação UTF-8 sem BOM para operações de arquivo. Suporta modos de substituição sensíveis e insensíveis a maiúsculas e minúsculas.

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | O diretório, caminho do arquivo ou diretório+máscara de pesquisa |
| `-FindText` | String | ✅ | — | 1 | — | O texto a ser encontrado (a sensibilidade a maiúsculas/minúsculas é controlada pelo parâmetro CaseInsensitive) |
| `-ReplacementText` | String | ✅ | — | 2 | — | O texto a ser substituído corresponde a |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Perform case-insensitive text replacement |

## Examples

### Rename-InProject -Source .\src\*.js -FindText "oldName" `     -ReplacementText "newName"

```powershell
Rename-InProject -Source .\src\*.js -FindText "oldName" `
    -ReplacementText "newName"
```

### rip . "MyClass" "MyNewClass" -WhatIf

```powershell
rip . "MyClass" "MyNewClass" -WhatIf
```

### rip . "OLDNAME" "NewName" -CaseInsensitive

```powershell
rip . "OLDNAME" "NewName" -CaseInsensitive
```

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)
