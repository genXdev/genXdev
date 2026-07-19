# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> Verifica se o Windows está atualizado e opcionalmente instala as atualizações disponíveis.

## Description

Esta função verifica atualizações do Windows, atualizações de pacotes do winget e atualizações de módulos do PowerShell. Ela pode exibir as atualizações disponíveis ou instalá-las automaticamente. A função requer privilégios administrativos para instalar atualizações do Windows e pode opcionalmente reiniciar o sistema se as atualizações exigirem uma reinicialização.

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | Instalar automaticamente as atualizações disponíveis do Windows |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | Reiniciar automaticamente se as atualizações exigirem uma reinicialização |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0"` | Critérios personalizados de pesquisa do Windows Update |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | Incluir drivers na busca por atualizações |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | Agrupar e colorir saída por categoria de atualização |
| `-NoBanner` | SwitchParameter | — | — | Named | — | Desativar saída de banner/status |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | Pular verificação/relato de requisito de reinicialização |

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

Verifica se há atualizações disponíveis do Windows e do winget sem instalá-las.

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

Instala automaticamente todas as atualizações disponíveis do Windows e winget.

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

Instala todas as atualizações e reinicia automaticamente, se necessário, usando o alias.

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

Exibe as atualizações disponíveis agrupadas por categoria para melhor organização.

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

Verifica atualizações incluindo drivers com critérios de pesquisa personalizados.

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
