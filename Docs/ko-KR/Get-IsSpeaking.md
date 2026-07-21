# Get-IsSpeaking

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `iss`

## Synopsis

> TTS 엔진이 말하고 있으면 true를 반환합니다.

## Description

기본 및 사용자 지정 음성 합성기의 상태를 확인하여 현재 음성이 출력 중인지 확인합니다. 음성 출력이 진행 중이면 true를 반환하고, 그렇지 않으면 false를 반환합니다.

## Syntax

```powershell
Get-IsSpeaking [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-IsSpeaking
```

TTS 엔진이 말하고 있으면 true를 반환합니다.

### Example 2

```powershell
iss
```

텍스트 음성 변환 엔진이 말하고 있는지 여부를 반환합니다(별칭 사용).

## Related Links

- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-SnakeGame.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/UtcNow.md)
