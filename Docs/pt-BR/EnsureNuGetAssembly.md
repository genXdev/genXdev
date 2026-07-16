# EnsureNuGetAssembly

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
EnsureNuGetAssembly -PackageKey <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-Destination <String>] [-ForceConsent] [-ForceLatest] [-ManifestPath <String>] [-Publisher <String>] [-TypeName <String>] [-Version <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PackageKey` | String | ✅ | — | 0 | — | Chave do pacote de packages.json ou NuGet PackageId direto. |
| `-ManifestPath` | String | — | — | Named | — | Caminho para packages.json; assume a raiz do módulo se omitido. |
| `-Version` | String | — | — | Named | — | Versão específica; se omitido, usar a mais recente do JSON. |
| `-TypeName` | String | — | — | Named | — | Digite o nome para verificar o carregamento. |
| `-ForceLatest` | SwitchParameter | — | — | Named | — | Recorre à versão mais recente se a versão exata falhar. |
| `-Destination` | String | — | — | Named | — | Destino de instalação personalizado; padrão para cache local persistente ou global. |
| `-Description` | String | — | — | Named | — | Descrição opcional do software e seu propósito para consentimento. |
| `-Publisher` | String | — | — | Named | — | Editor ou fornecedor opcional do software para consentimento. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forçar um aviso mesmo se a preferência estiver definida para consentimento. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automaticamente com a instalação de software de terceiros e definir sinalizador persistente. |

## Related Links

- [EnsureNuGetAssembly on GitHub](https://github.com/genXdev/genXdev)
