# Add-FeatureLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `feature

## Synopsis

> 向README文件中添加一个带时间戳的功能行。

## Description

为指定的README文件添加一行特性说明，以当前日期（yyyyMMdd格式）为前缀。该行可以格式化为代码，并可选择性显示。

## Syntax

```powershell
Add-FeatureLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | 要添加的功能描述文本 |
| `-Code` | SwitchParameter | — | — | Named | — | `const query = 'Hello, World!';` |
| `-Show` | SwitchParameter | — | — | Named | — | # Example Project

This is a sample README file.

## Installation

Run `npm install` to get started.

## Usage

```javascript
const example = require('example');
console.log(example());
```

===== CRITICAL JSON OUTPUT REQUIREMENT =====
You MUST respond with ONLY valid json. NO other text is allowed.
Do NOT include any explanation, commentary, or text before or after the json.
Your response must be parseable json that conforms EXACTLY to this schema:
{
  "type": "json_schema",
  "json_schema": {
    "name": "text_transformation_response",
    "strict": true,
    "schema": {
      "required": [
        "response"
      ],
      "properties": {
        "response": {
          "type": "string",
          "description": "The transformed text output"
        }
      },
      "type": "object"
    }
  }
}

Example response format: {"response":"your actual response here"}
===== END REQUIREMENT ===== |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | 使用主目录中的 README |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | 使用 OneDrive 目录中的 README |
| `-Priority` | Int32 | — | — | Named | `1` | 排序优先级（数值越大越靠前显示，默认为1） |
| `-SortByDate` | SwitchParameter | — | — | Named | — | 按日期（yyyyMMdd前缀）排序，而非优先级 |
| `-Ascending` | SwitchParameter | — | — | Named | — | 将排序顺序颠倒（升序改为降序） |
| `-First` | Int32 | — | — | Named | `0` | 限制 - 仅显示前 N 行输出 |

## Examples

### Add-FeatureLineToREADME -Line "Added new Git feature"

```powershell
Add-FeatureLineToREADME -Line "Added new Git feature"
```

### feature "Added new Git feature" -Code -Show

```powershell
feature "Added new Git feature" -Code -Show
```

## Related Links

- [Add-FeatureLineToREADME on GitHub](https://github.com/genXdev/genXdev)
