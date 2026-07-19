# Get-SimularMovieTitles

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Encontra títulos de filmes semelhantes com base em propriedades em comum.

## Description

Analisa os filmes fornecidos para encontrar propriedades comuns e retorna uma lista de 10 títulos de filmes similares. Usa IA para identificar padrões e temas entre os filmes de entrada para sugerir recomendações relevantes.

## Syntax

```powershell
Get-SimularMovieTitles -Movies <String[]> [[-LLMQueryType] <String>] [-AcceptLang <String>] [-All] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-ApplicationMode] [-Attachments <String[]>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-Bottom <Int32>] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DisablePopupBlocker] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Firefox] [-FocusWindow] [-FullScreen] [-Functions <Collections.Hashtable[]>] [-Headless] [-Height <Int32>] [-ImageDetail <String>] [-IncludeThoughts] [-Instructions <String>] [-Language <String>] [-Left <Int32>] [-LengthPenalty <Double>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-Maximize] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoVOX] [-OnlyResponses] [-OpenInImdb] [-OutputMarkdownBlocksOnly] [-PlayWright] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right <Int32>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetClipboard] [-SetForeground] [-SideBySide] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-Webkit] [-Width <Int32>] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Movies` | String[] | ✅ | — | 0 | — | Array de títulos de filmes para analisar semelhanças |
| `-LLMQueryType` | String | — | — | 1 | `'Knowledge'` | O tipo de consulta LLM |
| `-Model` | String | — | — | Named | — | O identificador ou padrão do modelo a ser usado para operações de IA |
| `-ApiEndpoint` | String | — | — | Named | — | A URL do endpoint da API para operações de IA |
| `-ApiKey` | String | — | — | Named | — | A chave de API para operações de IA autenticadas |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | O tempo limite em segundos para operações de IA |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura para aleatoriedade da resposta (0.0-1.0) |
| `-OpenInImdb` | SwitchParameter | — | — | Named | — | Abre pesquisas no IMDB para cada resultado |
| `-Language` | String | — | — | Named | — | Idioma para pesquisa ou sessão de navegação do IMDB |
| `-Monitor` | Int32 | — | — | Named | `-1` | Índice ou nome do monitor para posicionamento da janela do navegador |
| `-Width` | Int32 | — | — | Named | `-1` | Largura da janela do navegador em pixels |
| `-Height` | Int32 | — | — | Named | `-1` | Altura da janela do navegador em pixels |
| `-AcceptLang` | String | — | — | Named | — | Cabeçalho HTTP Accept-Language para sessão do navegador |
| `-Private` | SwitchParameter | — | — | Named | — | Abrir navegador em modo privado/anonimato |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use o Google Chrome para a sessão do navegador |
| `-Chromium` | SwitchParameter | — | — | Named | — | Use Chromium for browser session |
| `-Firefox` | SwitchParameter | — | — | Named | — | Use Mozilla Firefox for browser session |
| `-Left` | Int32 | — | — | Named | — | Posição esquerda da janela do navegador em pixels |
| `-Right` | Int32 | — | — | Named | — | Posição direita da janela do navegador em pixels |
| `-Bottom` | Int32 | — | — | Named | — | Posição inferior da janela do navegador em pixels |
| `-Centered` | SwitchParameter | — | — | Named | — | Abrir janela do navegador centralizada na tela |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Abrir navegador em modo de tela cheia |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Abrir navegador no modo aplicativo (interface mínima) |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Desativar extensões do navegador para a sessão |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Desativar bloqueador de pop-ups na sessão do navegador |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focar a janela do navegador após abrir |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Colocar a janela do navegador em primeiro plano após abrir |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar a janela do navegador após abrir |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar o foco para a janela anterior após fechar o navegador |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Abrir cada resultado do IMDB em uma nova janela do navegador |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | https://www.imdb.com/search/title/ |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | https://www.google.com |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Enviar tecla Escape para o navegador após abrir |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Manter o foco do teclado no navegador após enviar teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter ao enviar teclas para o navegador |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Atraso em milissegundos entre o envio de teclas para o navegador |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Abrir janela do navegador sem bordas |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Use o navegador gerenciado pelo Playwright em vez do navegador instalado no sistema operacional |
| `-Webkit` | SwitchParameter | — | — | Named | — | Abre o navegador WebKit gerenciado pelo Playwright. Implica -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Execute o navegador sem uma janela visível |
| `-All` | SwitchParameter | — | — | Named | — | Abre em todos os navegadores modernos registrados |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Abra janelas do navegador lado a lado para cada resultado |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências de IA |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas em preferências persistentes sem afetar a sessão |
| `-Instructions` | String | — | — | Named | — | Instruções para o modelo de IA sobre como gerar a lista de strings |
| `-Attachments` | String[] | — | — | Named | — | Array de caminhos de arquivos para anexar |
| `-ImageDetail` | String | — | — | Named | — | Nível de detalhe da imagem para processamento de imagem. |
| `-Functions` | Collections.Hashtable[] | — | — | Named | — | Array de definições de funções que podem ser chamadas pelo modelo de IA durante o processamento. |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | — | Array de definições de comandos PowerShell para usar como ferramentas que a IA pode invocar. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Array de nomes de comandos que não exigem confirmação antes da execução. |
| `-AudioTemperature` | Double | — | — | Named | — | Temperatura para geração de áudio. |
| `-TemperatureResponse` | Double | — | — | Named | — | Temperatura para geração de resposta. |
| `-CpuThreads` | Int32 | — | — | Named | — | Número de threads da CPU a serem usados. |
| `-SuppressRegex` | String | — | — | Named | — | Expressão regular para suprimir determinadas saídas. |
| `-AudioContextSize` | Int32 | — | — | Named | — | Tamanho do contexto de áudio para processamento. |
| `-SilenceThreshold` | Double | — | — | Named | — | Limite de silêncio para processamento de áudio. |
| `-LengthPenalty` | Double | — | — | Named | — | Penalidade de comprimento para geração de sequência. |
| `-EntropyThreshold` | Double | — | — | Named | — | Limiar de entropia para filtragem de saída. |
| `-LogProbThreshold` | Double | — | — | Named | — | Limiar de probabilidade logarítmica para filtragem de saída. |
| `-NoSpeechThreshold` | Double | — | — | Named | — | Nenhum limite de fala para detecção de áudio. |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | Desabilite a saída de fala. |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | Desative a saída de pensamento. |
| `-NoVOX` | SwitchParameter | — | — | Named | — | Desativar VOX (ativação por voz). |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Use captura de áudio da área de trabalho. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Desativar uso de contexto. |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Use a estratégia de amostragem de busca em feixe. |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | Você é um assistente útil projetado para gerar JSON. |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | Quando especificado, copia a lista de strings resultante de volta para a área de transferência do sistema após o processamento. |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | {
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
          "description": "A saída de texto transformada"
        }
      },
      "type": "object"
    }
  }
} |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | Não adicione os pensamentos do modelo ao histórico da conversa |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | Desculpe, parece que a conversa anterior não foi fornecida. Por favor, compartilhe o contexto ou a mensagem anterior para que eu possa continuar. |
| `-Speak` | SwitchParameter | — | — | Named | — | Habilitar conversão de texto em fala para respostas de IA |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | Ativar conversão de texto em fala para respostas de pensamento da IA |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | Não armazenar sessão no cache de sessão |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | Habilitar ferramentas padrão para o modelo de IA. |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | Retorne apenas blocos de marcação na saída. |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | Filter for specific types of markup blocks. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Comprimento máximo de retorno de chamada para chamadas de ferramenta. |

## Examples

### Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb

```powershell
Get-SimularMovieTitle -Movies "The Matrix","Inception" -OpenInImdb
```

### moremovietitle "The Matrix","Inception" -imdb

```powershell
moremovietitle "The Matrix","Inception" -imdb
```

## Related Links

- [Get-SimularMovieTitles on GitHub](https://github.com/genXdev/genXdev)
