# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
EnsureGenXdev [-ConsentToThirdPartySoftwareInstallation] [-DownloadAllNugetPackages] [-Force] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Força a execução de operações de garantia mesmo que pareçam já terem sido concluídas |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | Baixa e carrega todos os pacotes NuGet definidos no arquivo de manifesto packages.json |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forçar um prompt de consentimento mesmo que a preferência esteja definida para instalação de software de terceiros. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automaticamente com a instalação de software de terceiros e definir sinalizador persistente para todos os pacotes. |

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
