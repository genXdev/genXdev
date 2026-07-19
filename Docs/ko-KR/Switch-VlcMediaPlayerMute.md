# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcmute, `vlcunmute

## Synopsis

> VLC 미디어 플레이어의 음소거 상태를 전환합니다.

## Description

이 함수는 VLC 미디어 플레이어에 'm' 키를 전송하여 오디오 음소거 상태와 음소거 해제 상태를 전환합니다. 함수는 VLC에 포커스를 맞추고, 음소거/음소거 해제 명령을 보낸 후, 이전에 활성화된 창으로 포커스를 복원합니다.

## Syntax

```powershell
[CmdletBinding()]
    [Alias('vlcmute', 'vlcunmute')]

    param (
    )

    begin {

    }

    process {

        # send the 'm' key to vlc media player to toggle mute state
        GenXdev\Open-VlcMediaPlayer -KeysToSend 'm' -RestoreFocus
    }

    end {

    }
```

## Examples

### Switch-VlcMediaPlayerMute

```powershell
Switch-VlcMediaPlayerMute
```

vlc_media_player_mute

### vlcmute

```powershell
vlcmute
```

단축 별칭을 사용하여 VLC 미디어 플레이어의 음소거 상태를 전환합니다.

## Related Links

- [Switch-VlcMediaPlayerMute on GitHub](https://github.com/genXdev/genXdev)
