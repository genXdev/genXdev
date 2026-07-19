# Get-ImageGeolocation

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 画像ファイルから地理位置情報データを抽出します。

## Description

* 画像ファイルからEXIFメタデータを読み取り、緯度と経度の座標を抽出します。
* EXIFデータにGPSメタデータが含まれている画像をサポートします。
* System.Drawing.Imageクラスを使用して画像を読み込み、プロパティアイテムからGPS座標を解析します。

## Syntax

```powershell
Get-ImageGeolocation [-ImagePath] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 分析する画像ファイルへのパス |

## Examples

### Example 1

```powershell
Get-ImageGeolocation -ImagePath "C:\Pictures\vacation.jpg"
```

休暇の写真からGPS座標を抽出します。

### Example 2

```powershell
"C:\Pictures\vacation.jpg" | Get-ImageGeolocation
```

パイプラインを使用して画像のパスを渡します。

## Related Links

- [Get-ImageGeolocation on GitHub](https://github.com/genXdev/genXdev)
