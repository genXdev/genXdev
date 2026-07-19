# Switch-VlcMediaPlayerRepeat

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcrepeat

## Synopsis

> VLC 미디어 플레이어의 반복 모드를 전환합니다.

## Description

이 함수는 'r' 키 명령을 VLC 미디어 플레이어로 전송하여 반복 모드(반복 없음, 현재 항목 반복, 전체 반복)를 전환합니다. 함수는 VLC가 아직 실행 중이지 않으면 열고, 명령을 전송한 후 이전 창으로 포커스를 복원합니다.

## Syntax

```powershell
[CmdletBinding()]
    [Alias('vlcrepeat')]

    param(
    )

    begin {

    }

    process {

        # send the repeat toggle key ('r') to vlc media player
        GenXdev\Open-VlcMediaPlayer -KeysToSend 'r' -RestoreFocus
    }

    end {

    }
```

## Examples

### Switch-VlcMediaPlayerRepeat

```powershell
Switch-VlcMediaPlayerRepeat
```

### vlcrepeat

```powershell
vlcrepeat
```

## Related Links

- [Switch-VlcMediaPlayerRepeat on GitHub](https://github.com/genXdev/genXdev)
