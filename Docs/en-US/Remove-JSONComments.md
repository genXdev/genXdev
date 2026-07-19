# Remove-JSONComments

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Removes comments from JSON content.

## Description

* Processes JSON content and removes both single-line and multi-line
  comments while preserving the JSON structure.
* Useful for cleaning up JSON files that contain documentation comments
  before parsing.
* Supports both single-line comments (//) and multi-line comments (/* */).

## Syntax

```powershell
Remove-JSONComments [-Json] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Json` | String | ✅ | — | 0 | — | JSON content to process as string array |

## Examples

### Example 1

```powershell
$jsonContent = @'
{
    // This is a comment
    "name": "test", /* inline comment */
    "value": 123
}
'@ -split "`n"
Remove-JSONComments -Json $jsonContent
```

Removes comments from JSON content stored in a variable.

### Example 2

```powershell
$jsonContent | Remove-JSONComments
```

Processes JSON content from the pipeline.

## Related Links

- [Remove-JSONComments on GitHub](https://github.com/genXdev/genXdev)
