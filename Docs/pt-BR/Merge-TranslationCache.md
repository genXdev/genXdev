# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Merge-TranslationCache [-GetCache] [<CommonParameters>]

Merge-TranslationCache -Key <String> -Language <String> -Value <String> [<CommonParameters>]

Merge-TranslationCache -PersistNow [<CommonParameters>]

Merge-TranslationCache -ClearCache [<CommonParameters>]

Merge-TranslationCache -PurgeFromCache [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-GetCache` | SwitchParameter | — | — | Named | — | Retorna a tabela hash do cache em memória *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | código de idioma BCP 47 para a entrada de cache *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | O texto fonte a ser armazenado em cache *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | Você é um assistente útil projetado para gerar JSON. *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | Gravar todos os caches sujos no disco e limpar a memória *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | Limpe o cache na memória e exclua todos os arquivos em disco *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | Remova entradas não traduzidas de todos os caches de idioma no disco *(Parameter set: )* |

## Outputs

- `Collections.Hashtable`

## Related Links

- [Merge-TranslationCache on GitHub](https://github.com/genXdev/genXdev)
