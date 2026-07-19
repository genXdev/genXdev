# Invoke-Fasti

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fasti

## Synopsis

> 현재 디렉토리에 있는 압축 파일을 각각의 폴더로 추출한 후 삭제합니다.

## Description

현재 디렉토리에서 발견된 일반적인 아카이브 형식(zip, 7z, tar 등)을 자동으로 추출하여 각 아카이브 이름으로 된 개별 폴더에 저장합니다. 추출이 성공적으로 완료되면 원본 아카이브 파일은 삭제됩니다. 시스템에 7-Zip이 설치되어 있어야 합니다.

## Syntax

```powershell
Invoke-Fasti [[-Password] <String>] [-ExtractOutputToo] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Password` | String | — | — | 0 | — | 암호화된 아카이브의 비밀번호를 입력하세요 |
| `-ExtractOutputToo` | SwitchParameter | — | — | Named | — | 추출된 폴더 내에서 발견된 아카이브를 재귀적으로 추출 |

## Examples

### PS C:\Downloads> Invoke-Fasti

```powershell
PS C:\Downloads> Invoke-Fasti
```

### PS C:\Downloads> fasti

```powershell
PS C:\Downloads> fasti
```

## Related Links

- [Invoke-Fasti on GitHub](https://github.com/genXdev/genXdev)
