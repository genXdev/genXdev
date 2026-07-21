# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> 현재 UTC(협정 세계시) 날짜와 시간을 가져옵니다.

## Description

현재 UTC 날짜와 시간을 System.DateTime 개체로 반환합니다. 이 함수는 다양한 시스템과 시간대에서 UTC 시간을 검색하는 표준화된 방법을 제공합니다. 반환된 DateTime 개체는 타임스탬프 동기화, 로깅 및 교차 시간대 작업에 사용할 수 있습니다.

## Syntax

```powershell
UtcNow [<CommonParameters>]
```

## Examples

### $currentUtc = UtcNow Returns the current UTC time as a DateTime object.

```powershell
$currentUtc = UtcNow
Returns the current UTC time as a DateTime object.
```

### $timestamp = (UtcNow).ToString("yyyy-MM-dd HH:mm:ss") Gets the current UTC time and formats it as a string.

```powershell
$timestamp = (UtcNow).ToString("yyyy-MM-dd HH:mm:ss")
Gets the current UTC time and formats it as a string.
```

## Outputs

- `DateTime`

## Related Links

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Stop-TextToSpeech.md)
