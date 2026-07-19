# Copy-PDFsFromGoogleQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Загружает PDF-файлы, найденные через результаты поиска Google.

## Description

Выполняет поиск Google в ранее выбранной вкладке веб-браузера и загружает все найденные PDF-файлы в текущий каталог. Поддерживает несколько запросов и фильтрацию по языку.

## Syntax

```powershell
Copy-PDFsFromGoogleQuery -Queries <String[]> [[-Max] <Int32>] [[-Language] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Поисковые запросы для поиска PDF-файлов в Google |
| `-Max` | Int32 | — | — | 1 | `200` | Максимальное количество результатов для получения (по умолчанию: 200) |
| `-Language` | String | — | — | 2 | — | Необязательный языковой фильтр для результатов поиска |

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
