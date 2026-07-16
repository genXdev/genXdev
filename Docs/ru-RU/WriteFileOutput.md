# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
WriteFileOutput -CallerInvocation <Object> -Input <Object> [-FullPaths] [-Prefix <String>] [-RelativeBasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallerInvocation` | Object | ✅ | ✅ (ByValue) | 0 | — | Информация о вызове из вызывающей функции |
| `-Input` | Object | ✅ | ✅ (ByValue) | 1 | — | The input object to process, which can be a file path or object |
| `-Prefix` | String | — | — | Named | — | Необязательный строковый префикс, добавляемый к выводимому отображению для дополнительного контекста |
| `-RelativeBasePath` | String | — | — | Named | — | Базовый путь для создания относительных путей файлов в выводе |
| `-FullPaths` | SwitchParameter | — | — | Named | — | Принудительно использовать полные абсолютные пути вместо относительных путей |

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)
