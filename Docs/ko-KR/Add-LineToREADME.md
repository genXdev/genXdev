# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Add-LineToREADME [[-Line] <String>] -Section <String> -Prefix <String> [-Code] [-Done] [-Show] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | README에 추가할 줄 |
| `-Section` | String | ✅ | — | 1 | — | The section to add the line to |
| `-Prefix` | String | ✅ | — | 2 | `'* '` | 줄에 사용할 접두사 |
| `-Code` | SwitchParameter | — | — | Named | — | 수정 후 Visual Studio Code에서 열기 |
| `-Show` | SwitchParameter | — | — | Named | — | 수정된 섹션 표시 |
| `-Done` | SwitchParameter | — | — | Named | — | 완료로 표시 |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | PowerShell 프로필 디렉터리에서 README 사용 |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive 디렉토리에 있는 README를 사용하세요 |

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
