# Push-Window

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `pushw

## Synopsis

> 将当前窗口推入窗口栈，可带可选修改。

## Description

将当前焦点窗口的窗口辅助对象推入堆栈。允许在推入前后应用各种窗口变换。此函数捕获当前窗口并存储，以便稍后通过 Pop-Window 检索，同时可选择应用定位、大小调整和视觉效果。

## Syntax

```powershell
Push-Window [-AlwaysOnTop] [-Bottom] [-Centered] [-FadeOut] [-Focus] -Height <Int32> [-Hide] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-Opacity <Byte>] [-PassThru] [-Restore] [-Right] [-Show] [-ShowWindow] [-Top] -Width <Int32> [<CommonParameters>]

Push-Window [-AlwaysOnTop] [-Bottom] [-Centered] [-FadeOut] [-Focus] [-Hide] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-Opacity <Byte>] [-PassThru] [-Restore] [-Right] [-Show] [-ShowWindow] [-Top] -X <Int32> -Y <Int32> [<CommonParameters>]

Push-Window [-AlwaysOnTop] [-Bottom] [-Centered] [-FadeOut] [-Focus] [-Hide] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-Opacity <Byte>] [-PassThru] [-Restore] [-Right] [-Show] [-ShowWindow] [-Top] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Maximize` | SwitchParameter | — | — | Named | — | The `-Maximize` parameter. *(Parameter set: )* |
| `-Minimize` | SwitchParameter | — | — | Named | — | The `-Minimize` parameter. *(Parameter set: )* |
| `-Restore` | SwitchParameter | — | — | Named | — | The `-Restore` parameter. *(Parameter set: )* |
| `-Hide` | SwitchParameter | — | — | Named | — | The `-Hide` parameter. *(Parameter set: )* |
| `-Show` | SwitchParameter | — | — | Named | — | The `-Show` parameter. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | The `-NoBorders` parameter. *(Parameter set: )* |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | The `-AlwaysOnTop` parameter. *(Parameter set: )* |
| `-Opacity` | Byte | — | — | Named | — | The `-Opacity` parameter. *(Parameter set: )* |
| `-X` | Int32 | ✅ | — | Named | `-999999` | The `-X` parameter. *(Parameter set: )* |
| `-Y` | Int32 | ✅ | — | Named | `-999999` | The `-Y` parameter. *(Parameter set: )* |
| `-Width` | Int32 | ✅ | — | Named | `-1` | The `-Width` parameter. *(Parameter set: )* |
| `-Height` | Int32 | ✅ | — | Named | `-1` | The `-Height` parameter. *(Parameter set: )* |
| `-Focus` | SwitchParameter | — | — | Named | — | The `-Focus` parameter. *(Parameter set: )* |
| `-FadeOut` | SwitchParameter | — | — | Named | — | The `-FadeOut` parameter. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | The `-Left` parameter. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | The `-Right` parameter. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | The `-Top` parameter. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | The `-Bottom` parameter. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | The `-Centered` parameter. *(Parameter set: )* |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | The `-ShowWindow` parameter. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | — | The `-Monitor` parameter. *(Parameter set: )* |

## Examples

### Push-Window -Maximize -AlwaysOnTop Maximizes the current window, sets it to be always on top, and pushes it onto the stack.

```powershell
Push-Window -Maximize -AlwaysOnTop
Maximizes the current window, sets it to be always on top, and pushes it onto the stack.
```

### Push-Window -X 100 -Y 100 -Width 800 -Height 600 -NoBorders Positions and resizes the current window, removes its borders, and pushes it onto the stack.

```powershell
Push-Window -X 100 -Y 100 -Width 800 -Height 600 -NoBorders
Positions and resizes the current window, removes its borders, and pushes it onto the stack.
```

### pushw -Left Positions the current window on the left half of the screen and pushes it onto the stack using the alias.

```powershell
pushw -Left
Positions the current window on the left half of the screen and pushes it
onto the stack using the alias.
```

### Push-Window -Monitor 1 -Maximize Moves the current window to the first monitor, maximizes it, and pushes it onto the stack.

```powershell
Push-Window -Monitor 1 -Maximize
Moves the current window to the first monitor, maximizes it, and pushes it onto the stack.
```

### Push-Window -Monitor -2 -Fullscreen Moves the current window to the secondary monitor, makes it fullscreen, and pushes it onto the stack. ##############################################################################

```powershell
Push-Window -Monitor -2 -Fullscreen
Moves the current window to the secondary monitor, makes it fullscreen,
and pushes it onto the stack.
##############################################################################
```

## Related Links

- [Push-Window on GitHub](https://github.com/genXdev/genXdev)
