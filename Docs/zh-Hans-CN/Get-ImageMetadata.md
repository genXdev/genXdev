# Get-ImageMetadata

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ImageMetadata -ImagePath <String> [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要分析的图像文件路径 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 即使已设置首选项，也要强制显示同意提示以安装ImageSharp包。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意第三方软件安装，并为ImageSharp包设置持久标志。 |

## Outputs

- `GenXdev.Helpers.ImageSearchResultMetadata`

## Related Links

- [Get-ImageMetadata on GitHub](https://github.com/genXdev/genXdev)
