# Test-PathUsingWindowsDefender

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `virusscan, `HasNoVirus

## Synopsis

> Сканирует файлы или каталоги на наличие вредоносных программ с помощью Защитника Windows.

## Description

* Выполняет целевую проверку указанных файлов или каталогов с помощью командной строки Защитника Windows (MpCmdRun.exe).
* Может выполняться в режиме только обнаружения или с включенным автоматическим устранением угроз.
* Возвращает true, если угрозы не обнаружены, и false, если угрозы найдены или проверка не удалась.

## Syntax

```powershell
Test-PathUsingWindowsDefender [-FilePath] <string> [-EnableRemediation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Путь к файлу или каталогу для сканирования |
| `-EnableRemediation` | SwitchParameter | — | — | Named | `False` | Дает команду Защитнику Windows на выполнение действий в отношении угроз |

## Examples

### Example 1

```powershell
Test-PathUsingWindowsDefender -FilePath "C:\Downloads\file.exe" -Verbose
```

Сканирует указанный файл и выводит подробные сведения.

### Example 2

```powershell
virusscan "C:\Downloads\file.exe" -EnableRemediation
```

Сканирует файл с помощью псевдонима и включает исправление.

### Example 3

```powershell
"C:\Downloads\file.exe" | HasNoVirus
```

Передает путь к файлу командлету с помощью псевдонима.

## Related Links

- [Test-PathUsingWindowsDefender on GitHub](https://github.com/genXdev/genXdev)
