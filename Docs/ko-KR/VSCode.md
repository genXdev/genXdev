# VSCode

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Visual Studio Code에서 하나 이상의 파일을 엽니다.

## Description

이 함수는 파일 경로를 받아 Visual Studio Code에서 엽니다. 파일을 열기 전에 경로를 확장하고 파일 존재 여부를 확인합니다. 이 함수는 직접 파일 경로와 파이프라인 입력을 모두 지원하므로 터미널 검색에서 여러 파일을 빠르게 열기에 적합합니다.

## Syntax

```powershell
VSCode -FilePath <String[]> [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue) | 0 | — | VSCode에서 열 파일의 경로 |
| `-Copilot` | SwitchParameter | — | — | Named | — | Add sourcefile to Copilot edit-session |

## Examples

### VSCode -FilePath "C:\path\to\file.txt" -Copilot

```powershell
VSCode -FilePath "C:\path\to\file.txt" -Copilot
```

### Get-ChildItem *.js -Recurse | VSCode

```powershell
Get-ChildItem *.js -Recurse | VSCode
```

## Related Links

- [VSCode on GitHub](https://github.com/genXdev/genXdev)
