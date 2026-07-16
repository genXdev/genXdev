# Remove-ItemWithFallback

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rmf

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-ItemWithFallback -Path <String> [-CountRebootDeletionAsSuccess] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Het pad naar het item dat verwijderd moet worden |
| `-CountRebootDeletionAsSuccess` | SwitchParameter | — | — | Named | `$false` | The `-CountRebootDeletionAsSuccess` parameter. |

## Outputs

- `Boolean`

## Related Links

- [Remove-ItemWithFallback on GitHub](https://github.com/genXdev/genXdev)
