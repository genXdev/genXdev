# Start-NextRefactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `nextrefactor

## Synopsis

> Continúa o reinicia una sesión de refactorización de código.

## Description

Gestiona las operaciones de refactorización de código procesando las definiciones de refactorización en orden de prioridad. Maneja la selección de archivos, el seguimiento del progreso, la gestión de errores y proporciona control interactivo al usuario sobre el proceso de refactorización.

## Syntax

```powershell
Start-NextRefactor [[-Name] <String[]>] [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-CleanUpDeletedFiles] [-MarkAllCompleted] [-RedoLast] [-Reset] [-ResetLMSelections] [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | The name of the refactor, accepts wildcards 🌐 *Supports wildcards* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 1 | `@()` | Nombres de archivos a añadir |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 2 | `@()` | Nombres de archivos a eliminar |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Limpiar archivos eliminados |
| `-Reset` | SwitchParameter | — | — | Named | — | Empieza desde el principio del conjunto de refactorización |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Restart all LLM selections |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Mark all files as refactored |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Repite la última refactorización |
| `-Speak` | SwitchParameter | — | — | Named | — | The next refactor will focus on extracting the payment processing logic into a separate service class. This will involve moving the payment validation, gateway interaction, and receipt generation out of the OrderController into a new PaymentService. The controller will then delegate these responsibilities, improving separation of concerns and testability. |

## Examples

### Start-NextRefactor -Name "RefactorProject" -Reset -CleanUpDeletedFiles Restarts refactoring for "RefactorProject" and removes deleted files.

```powershell
Start-NextRefactor -Name "RefactorProject" -Reset -CleanUpDeletedFiles
Restarts refactoring for "RefactorProject" and removes deleted files.
```

### nextrefactor -Name "*Test*" -Speak Processes all refactor sets matching "*Test*" pattern with speech enabled.

```powershell
nextrefactor -Name "*Test*" -Speak
Processes all refactor sets matching "*Test*" pattern with speech enabled.
```

## Related Links

- [Start-NextRefactor on GitHub](https://github.com/genXdev/genXdev)
