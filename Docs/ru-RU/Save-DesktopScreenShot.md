# Save-DesktopScreenShot

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Делает снимок экрана указанного монитора и сохраняет его по указанному пути.

## Description

* Делает снимок экрана рабочего стола с указанного монитора и сохраняет его как файл изображения.
* Поддерживает несколько мониторов и автоматически определяет правильные границы экрана и коэффициенты масштабирования для дисплеев с высоким DPI.

## Syntax

```powershell
Save-DesktopScreenShot [-Monitor] <int> [-OutputPath] <string> [-Quality <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | ✅ | ✅ (ByPropertyName) | 0 | `0` | Индекс монитора для захвата (0=основной, 1+=конкретный монитор, -1=все мониторы) |
| `-OutputPath` | String | ✅ | ✅ (ByPropertyName) | 1 | — | Полный путь, по которому будет сохранен скриншот |
| `-Quality` | Int32 | — | — | Named | `0` | Уровень качества JPEG (1-100), применяется только к формату JPEG |

## Examples

### Example 1

```powershell
Save-DesktopScreenShot -Monitor 0 -OutputPath "C:\Screenshots\primary.png"
```

Делает скриншот основного монитора и сохраняет его в формате PNG.

### Example 2

```powershell
Save-DesktopScreenShot -Monitor 1 -OutputPath "C:\Screenshots\monitor2.jpg" -Quality 95
```

Делает снимок экрана второго монитора в высоком качестве JPEG.

### Example 3

```powershell
Save-DesktopScreenShot -Monitor -1 -OutputPath "C:\Screenshots\all_monitors.png"
```

Захватывает все мониторы, объединенные в единое изображение снимка экрана.

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
