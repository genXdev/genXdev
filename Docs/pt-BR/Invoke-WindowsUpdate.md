# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
