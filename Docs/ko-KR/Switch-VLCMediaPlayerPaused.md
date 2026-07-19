# Switch-VLCMediaPlayerPaused

> **Module:** GenXdev.Console.Vlc | **Type:** Function | **Aliases:** `vlcpause, `vlcplay

## Synopsis

> VLC 미디어 플레이어의 일시 정지/재생 상태를 전환합니다.

## Description

이 함수는 VLC 미디어 플레이어에 스페이스 키를 보내 일시 정지와 재생 상태를 전환합니다. 키 명령을 보낸 후 원래 창에 포커스를 자동으로 복원합니다.

## Syntax

```powershell
[CmdletBinding()]
    [Alias('vlcpause', 'vlcplay')]

    param (
    )

    begin {

    }

    process {

        # send space key to vlc media player to toggle pause/play state
        Microsoft.PowerShell.Utility\Write-Verbose "Toggling VLC Media Player pause/play state"

        # send the space key command and restore focus to original window
        GenXdev\Open-VlcMediaPlayer -KeysToSend ' ' -RestoreFocus
    }

    end {

    }
```

## Examples

### Switch-VLCMediaPlayerPaused

```powershell
Switch-VLCMediaPlayerPaused
```

VLC 미디어 플레이어의 일시 정지/재생 상태를 전환합니다.

### vlcpause

```powershell
vlcpause
```

별칭을 사용하여 일시 중지/재생 상태를 전환합니다.

### vlcplay

```powershell
vlcplay
```

별칭을 사용하여 일시 중지/재생 상태를 전환합니다.

## Related Links

- [Switch-VLCMediaPlayerPaused on GitHub](https://github.com/genXdev/genXdev)
