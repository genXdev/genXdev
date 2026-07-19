# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit

## Synopsis

> Создает и отправляет новый коммит git со всеми изменениями.

## Description

Добавляет все изменения в текущем репозитории Git в индекс, создаёт коммит с указанным заголовком и отправляет изменения в удалённый репозиторий origin. Автоматически настраивает отслеживание вышестоящей ветки, если это необходимо.

## Syntax

```powershell
New-GitCommit [[-Title] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | Заголовок сообщения коммита для использования |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

git commit -m "Added new authentication feature"

### Example 2

```powershell
commit "Hotfix for login issue"
```

Создать коммит с помощью псевдонима 'commit' с сообщением по умолчанию.

## Related Links

- [New-GitCommit on GitHub](https://github.com/genXdev/genXdev)
