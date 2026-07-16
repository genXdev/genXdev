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
| `-Monitor` | Int32 | ✅ | ✅ (ByPropertyName) | 0 | `0` | Índice do monitor para captura (0=principal, 1+=monitor específico, -1=todos os monitores) |
| `-OutputPath` | String | ✅ | ✅ (ByPropertyName) | 1 | — | Caminho completo onde a captura de tela será salva |
| `-Quality` | Int32 | — | — | Named | `0` | Nível de qualidade JPEG (1-100), aplica-se apenas ao formato JPEG |

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
