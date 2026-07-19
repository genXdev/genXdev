# Set-LocationParent

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `..

## Synopsis

> 현재 위치를 상위 디렉토리로 변경하고 그 내용을 나열합니다.

## Description

* 파일 시스템 계층 구조에서 한 단계 위 디렉터리로 이동합니다.
* 새 현재 디렉터리의 내용을 표시합니다.
* 빠른 디렉터리 탐색을 위해 편리한 '..' 별칭을 제공합니다.

## Syntax

```powershell
Set-LocationParent [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-LocationParent
```

상위 디렉터리로 변경하고 그 내용을 나열합니다.

### Example 2

```powershell
..
```

별명을 사용하여 상위 디렉터리로 변경합니다.

## Related Links

- [Set-LocationParent on GitHub](https://github.com/genXdev/genXdev)
