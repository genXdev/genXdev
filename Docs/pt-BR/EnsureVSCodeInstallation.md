# EnsureVSCodeInstallation

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Instala e configura o Visual Studio Code com extensões recomendadas.

## Description

Verifica se o Visual Studio Code está instalado e, se não estiver, instala-o usando o WinGet.
Configura as configurações do usuário, atalhos de teclado e instala extensões recomendadas a partir da configuração do workspace. Também configura o PSGallery como um repositório confiável e configura configurações específicas de extensões.

## Syntax

```powershell
EnsureVSCodeInstallation [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureVSCodeInstallation

```powershell
EnsureVSCodeInstallation
```

## Related Links

- [EnsureVSCodeInstallation on GitHub](https://github.com/genXdev/genXdev)
