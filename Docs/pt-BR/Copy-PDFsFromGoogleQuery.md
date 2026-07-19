# Copy-PDFsFromGoogleQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Baixa arquivos PDF encontrados através de resultados de pesquisa do Google.

## Description

Realiza uma consulta no Google na aba do navegador previamente selecionada e baixa todos os arquivos PDF encontrados para o diretório atual. Suporta múltiplas consultas e filtro de idioma.

## Syntax

```powershell
Copy-PDFsFromGoogleQuery -Queries <String[]> [[-Max] <Int32>] [[-Language] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Os termos de pesquisa para consultar PDFs no Google |
| `-Max` | Int32 | — | — | 1 | `200` | Número máximo de resultados a recuperar (padrão: 200) |
| `-Language` | String | — | — | 2 | — | Filtro opcional de idioma para resultados de pesquisa |

## Examples

### Open-Webbrowser Select-WebbrowserTab $null = New-Item -ItemType Directory -Name pdfs Set-Location pdfs Copy-PDFsFromGoogleQuery "scientific paper co2" -Max 50 -Language "English"

```powershell
Open-Webbrowser
Select-WebbrowserTab
$null = New-Item -ItemType Directory -Name pdfs
Set-Location pdfs
Copy-PDFsFromGoogleQuery "scientific paper co2" -Max 50 -Language "English"
```

## Related Links

- [Copy-PDFsFromGoogleQuery on GitHub](https://github.com/genXdev/genXdev)
