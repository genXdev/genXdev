# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlcmute`, `vlcunmute`

## Synopsis

> VLC 미디어 플레이어의 음소거 상태를 전환합니다.

## Description

이 함수는 VLC 미디어 플레이어에 'm' 키를 보내 음소거 및 음소거 해제 오디오 상태를 전환합니다. 함수는 VLC에 포커스를 맞추고, 음소거/음소거 해제 명령을 보낸 후 이전에 활성화된 창에 포커스를 복원합니다.

## Syntax

```powershell
Switch-VlcMediaPlayerMute [<CommonParameters>]
```

## Examples

### Switch-VlcMediaPlayerMute

```powershell
Switch-VlcMediaPlayerMute
```

VLC 미디어 플레이어의 음소거 상태를 전체 함수 이름을 사용하여 전환합니다.

### vlcmute

```powershell
vlcmute
```

짧은 별칭을 사용하여 VLC 미디어 플레이어의 음소거 상태를 전환합니다.

## Related Links

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Switch-VlcMediaPlayerRepeat.md)
