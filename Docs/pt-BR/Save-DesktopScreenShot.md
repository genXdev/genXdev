# Save-DesktopScreenShot

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Captura uma captura de tela do monitor especificado e a salva no caminho especificado.

## Description

* Tira um screenshot da área de trabalho do monitor especificado e salva
  como um arquivo de imagem.
* Suporta múltiplos monitores e detecta automaticamente os limites corretos da tela
  e fatores de escala para telas de alta DPI.

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

## Examples

### Example 1

```powershell
Save-DesktopScreenShot -Monitor 0 -OutputPath "C:\Screenshots\primary.png"
```

Captura uma captura de tela do monitor principal e a salva como PNG.

### Example 2

```powershell
Save-DesktopScreenShot -Monitor 1 -OutputPath "C:\Screenshots\monitor2.jpg" -Quality 95
```

Captura uma captura de tela do segundo monitor com alta qualidade JPEG.

### Example 3

```powershell
Save-DesktopScreenShot -Monitor -1 -OutputPath "C:\Screenshots\all_monitors.png"
```

Captura todos os monitores combinados em uma única imagem de captura de tela.

## Related Links

- [Save-DesktopScreenShot on GitHub](https://github.com/genXdev/genXdev)
