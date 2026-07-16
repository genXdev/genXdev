# Save-DesktopScreenShot

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
