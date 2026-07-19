# Test-DeepLinkImageFile

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 指定されたファイルパスが、サポートされているフォーマットの有効な画像ファイルかどうかをテストします。

## Description

この関数は、指定されたパスにファイルが存在し、サポートされている画像ファイル拡張子を持つことを検証します。PNG、JPG、JPEG、GIF、BMP、WebP、TIFF、TIFファイルを含む一般的な画像形式をチェックします。無効なパスまたはサポートされていないファイル形式に対しては例外をスローします。

## Syntax

```powershell
Test-DeepLinkImageFile -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | — | 0 | — | テスト対象の画像ファイルへのパス |

## Examples

### Test-DeepLinkImageFile -Path "C:\Images\photo.jpg"

```powershell
Test-DeepLinkImageFile -Path "C:\Images\photo.jpg"
```

### Test-DeepLinkImageFile "C:\Images\logo.png"

```powershell
Test-DeepLinkImageFile "C:\Images\logo.png"
```

## Related Links

- [Test-DeepLinkImageFile on GitHub](https://github.com/genXdev/genXdev)
