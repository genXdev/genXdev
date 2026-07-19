# EnsureNuGetAssembly

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> 根据包密钥或 ID 从 NuGet 包中下载并加载 .NET 程序集。

## Description

此函数确保指定的NuGet包程序集被下载并加载到当前PowerShell会话中。它支持自动检测和加载，并可通过JSON清单进行配置覆盖以处理边缘情况（如存根依赖项，例如SQLite）。安装仅使用dotnet CLI进行可靠的包管理，并直接从全局NuGet缓存加载程序集而无需复制。延迟加载会在执行前检查类型是否已可用。

## Syntax

```powershell
EnsureNuGetAssembly -PackageKey <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-Destination <String>] [-ForceConsent] [-ForceLatest] [-ManifestPath <String>] [-Publisher <String>] [-TypeName <String>] [-Version <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PackageKey` | String | ✅ | — | 0 | — | Package key from packages.json or direct NuGet PackageId. |
| `-ManifestPath` | String | — | — | Named | — | 指向 packages.json 的路径；如果省略，则默认为模块根目录。 |
| `-Version` | String | — | — | Named | — | 特定版本；如果省略，则使用JSON或最新的最高版本。 |
| `-TypeName` | String | — | — | Named | — | 输入类型名称以验证加载。 |
| `-ForceLatest` | SwitchParameter | — | — | Named | — | 如果确切版本失败，则回退到最新版本。 |
| `-Destination` | String | — | — | Named | — | 自定义安装目录；默认为本地持久缓存或全局缓存。 |
| `-Description` | String | — | — | Named | — | 软件及其用途的可选说明，用于获得同意。 |
| `-Publisher` | String | — | — | Named | — | 同意所需的软件可选发布商或供应商。 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 即使用户偏好设置为需要同意，也强制提示。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意第三方软件安装并设置持久标志。 |

## Examples

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [EnsureNuGetAssembly on GitHub](https://github.com/genXdev/genXdev)
