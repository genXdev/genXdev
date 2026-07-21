# Switch-VlcMediaPlayerMute

> **Module:** GenXdev.Media | **Type:** Function | **Aliases:** `vlcmute`, `vlcunmute`

## Synopsis

> VLCメディアプレーヤーのミュート状態を切り替えます。

## Description

この関数は、VLCメディアプレーヤーに「m」キーを送信して、ミュートとミュート解除のオーディオ状態を切り替えます。関数はVLCにフォーカスを当て、ミュート/ミュート解除コマンドを送信し、その後以前のアクティブウィンドウにフォーカスを戻します。

## Syntax

```powershell
Switch-VlcMediaPlayerMute [<CommonParameters>]
```

## Examples

### Switch-VlcMediaPlayerMute

```powershell
Switch-VlcMediaPlayerMute
```

完全な関数名を使用して、VLCメディアプレーヤーのミュート状態を切り替えます。

### vlcmute

```powershell
vlcmute
```

ショートエイリアスを使用してVLCメディアプレーヤーのミュート状態を切り替えます。

## Related Links

- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ImageMetadata.md)
- [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-MediaFileCreationDate.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-MediaFile.md)
- [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-VlcMediaPlayer.md)
- [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Open-VlcMediaPlayerLyrics.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-VLCPlayerFocused.md)
- [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/StabilizeVideo.md)
- [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-VlcMediaPlayerNextInPlaylist.md)
- [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-VlcMediaPlayerPreviousInPlaylist.md)
- [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Switch-VLCMediaPlayerPaused.md)
- [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Switch-VlcMediaPlayerRepeat.md)
