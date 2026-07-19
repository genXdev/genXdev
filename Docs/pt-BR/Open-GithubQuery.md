# Open-GithubQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qgithub, `qgh

## Synopsis

> Abre uma consulta de pesquisa de repositório do GitHub em um navegador web ou executa pesquisas avançadas contra a API REST do GitHub, suportando todos os qualificadores disponíveis e categorias de pesquisa (repositórios, código, issues, usuários, commits, discussões, tópicos, wikis).

## Description

Abre uma consulta de pesquisa de repositórios do Github em um navegador web com amplas opções de personalização ou realiza pesquisas avançadas via API. Esta função fornece uma interface poderosa para acessar rapidamente repositórios do Github a partir do PowerShell, com suporte para vários navegadores, posicionamento de janela, filtragem por idioma e automação de teclado, ou recuperação de dados estruturados via API. Principais recursos:

Suporte a múltiplas consultas de pesquisa com entrada por pipeline
Filtragem específica por idioma com localização automática
Suporte a vários navegadores (Edge, Chrome, Firefox)
Posicionamento avançado de janela e seleção de monitor
Modo de navegação privada/anônima
Modo aplicativo para navegação sem distrações
Automação de teclado e gerenciamento de foco
Opções de retorno de URL para uso programático
Pesquisa avançada por API com qualificadores, ordenação, paginação
Suporte a todos os tipos de pesquisa do GitHub
Autenticação com token de acesso pessoal
Execução assíncrona de tarefas para pesquisas via API
Saída em JSON bruto ou objeto estruturado

A função constrói automaticamente URLs de pesquisa do Github para modo web ou endpoints de API para modo API e passa todos os parâmetros relacionados ao navegador para a função Open-Webbrowser subjacente para comportamento consistente.

## Syntax

```powershell
Open-GithubQuery -Query <String[]> [-AcceptLang <String>] [-All] [-CaseSensitive] [-Headless] [-In <String[]>] [-Language <String>] [-Order <String>] [-Org <String>] [-Page <Int32>] [-PassThru] [-PerPage <Int32>] [-PlayWright] [-Repo <String>] [-Size <String>] [-SortBy <String>] [-Type <String>] [-User <String>] [-Webkit] [<CommonParameters>]

Open-GithubQuery [-Extension <String>] [-Filename <String>] [-Path <String>] [<CommonParameters>]

Open-GithubQuery [-Assignee <String>] [-Author <String>] [-Labels <String[]>] [-No <String[]>] [-State <String>] [<CommonParameters>]

Open-GithubQuery [-Api] [-AsJob] [-RawResponse] [-Token <String>] [<CommonParameters>]

Open-GithubQuery [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Query` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | As consultas de pesquisa a serem executadas no Github. Suporta múltiplas consultas e entrada de pipeline para busca em lote. Cada consulta será codificada em URL e usada para pesquisar no Github. |
| `-Type` | String | — | — | Named | `'Code'` | A categoria principal para pesquisa. O padrão é 'Code'. |
| `-In` | String[] | — | — | Named | — | Campo(s) a pesquisar. Apenas opções válidas para o Tipo selecionado serão aceitas. |
| `-User` | String | — | — | Named | — | Restringir a pesquisa aos recursos de um usuário (repositórios, código, issues, etc.). |
| `-Org` | String | — | — | Named | — | Restringir busca a uma organização. |
| `-Repo` | String | — | — | Named | — | Restringir a pesquisa a um repositório nomeado ('proprietário/repo'). |
| `-Path` | String | — | — | Named | — | Restringir busca de código a caminhos de arquivo ou diretório específicos (suporta curingas de acordo com a Sintaxe de Pesquisa do GitHub). *(Parameter set: )* |
| `-Filename` | String | — | — | Named | — | Filtrar resultados pelo nome do arquivo (não pelo caminho). *(Parameter set: )* |
| `-Extension` | String | — | — | Named | — | Restringir pesquisa de código a extensões de arquivo. *(Parameter set: )* |
| `-Language` | String | — | — | Named | — | Filtrar por linguagem de programação. |
| `-Size` | String | — | — | Named | — | Tamanho do arquivo/repositório. Suporta sintaxe numérica e de intervalo (veja exemplos). |
| `-State` | String | — | — | Named | — | Para problemas/PR. *(Parameter set: )* |
| `-Author` | String | — | — | Named | — | Issues/PR: limitar àqueles criados por um usuário específico. *(Parameter set: )* |
| `-Assignee` | String | — | — | Named | — | Issues/PR: limitar aos que têm um usuário atribuído. *(Parameter set: )* |
| `-Labels` | String[] | — | — | Named | — | Issues/PR: deve ser marcado com todas as strings especificadas. *(Parameter set: )* |
| `-No` | String[] | — | — | Named | — | Issues/PR: devem faltar certos metadados (ex.: etiqueta, marco). *(Parameter set: )* |
| `-SortBy` | String | — | — | Named | — | Campo de ordenação (depende do Tipo). Ex.: "stars", "forks", "updated", etc. |
| `-Order` | String | — | — | Named | — | "asc" ou "desc" para ordenação. |
| `-PerPage` | Int32 | — | — | Named | `10` | Tamanho da página (máx. 100). |
| `-Page` | Int32 | — | — | Named | `1` | Número da página para resultados paginados. |
| `-Token` | String | — | — | Named | — | Token OAuth do GitHub ou Token de Acesso Pessoal. Se não for fornecido, usa GITHUB_TOKEN ou variável de ambiente. *(Parameter set: )* |
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Atraso entre o envio de diferentes sequências de teclas em milissegundos. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | O monitor para exibir os resultados. 0 = padrão, -1 = descartar, -2 = secundário. *(Parameter set: )* |
| `-Width` | Int32 | — | — | Named | `-1` | A largura inicial da janela do navegador. *(Parameter set: )* |
| `-Height` | Int32 | — | — | Named | `-1` | A altura inicial da janela do navegador. *(Parameter set: )* |
| `-X` | Int32 | — | — | Named | `-999999` | A posição inicial X da janela do navegador. *(Parameter set: )* |
| `-Y` | Int32 | — | — | Named | `-999999` | A posição Y inicial da janela do navegador. *(Parameter set: )* |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes a serem enviados para a janela do navegador; veja a documentação do cmdlet GenXdev\Send-Key. *(Parameter set: )* |
| `-CaseSensitive` | SwitchParameter | — | — | Named | — | Corresponder apenas a resultados que diferenciam maiúsculas de minúsculas (quando suportado). |
| `-AsJob` | SwitchParameter | — | — | Named | — | Execute a pesquisa de forma assíncrona como um trabalho do PowerShell. *(Parameter set: )* |
| `-RawResponse` | SwitchParameter | — | — | Named | — | The `-RawResponse` parameter. *(Parameter set: )* |
| `-Api` | SwitchParameter | — | — | Named | — | Use o modo API em vez de abrir no navegador da web. *(Parameter set: )* |
| `-Private` | SwitchParameter | — | — | Named | — | Abre o navegador no modo de navegação privada/anonimato para buscas anônimas. *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Força a ativação da porta de depuração, interrompendo navegadores existentes se necessário. *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Abre os resultados da pesquisa no navegador Microsoft Edge. *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Abre os resultados da pesquisa no navegador Google Chrome. *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Abre os resultados da pesquisa no Microsoft Edge ou Google Chrome, dependendo de qual é o navegador padrão. *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Abre os resultados da pesquisa no navegador Mozilla Firefox. *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Use o navegador gerenciado pelo Playwright em vez do navegador instalado no sistema operacional |
| `-Webkit` | SwitchParameter | — | — | Named | — | Abre o navegador WebKit gerenciado pelo Playwright. Implica -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Execute o navegador sem uma janela visível |
| `-All` | SwitchParameter | — | — | Named | — | Abre em todos os navegadores modernos registrados |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Abre o navegador em modo tela cheia. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | Coloque a janela do navegador no lado esquerdo da tela. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | Coloque a janela do navegador no lado direito da tela. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | Coloque a janela do navegador no lado superior da tela. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | Coloque a janela do navegador na parte inferior da tela. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | Coloque a janela do navegador no centro da tela. *(Parameter set: )* |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Ocultar os controles do navegador. *(Parameter set: )* |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Impedir o carregamento de extensões do navegador. *(Parameter set: )* |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Desative o bloqueador de pop-ups no navegador. *(Parameter set: )* |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focar a janela do navegador após abrir. *(Parameter set: )* |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Definir a janela do navegador como primeiro plano após abrir. *(Parameter set: )* |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximizar a janela após o posicionamento. *(Parameter set: )* |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restaurar o foco da janela do PowerShell. *(Parameter set: )* |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Não reutilize a janela do navegador existente; em vez disso, crie uma nova. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Retorna um objeto [System.Diagnostics.Process] do processo do navegador no modo web ou um objeto de consulta no modo API. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Não abra o navegador, apenas retorne a url. *(Parameter set: )* |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | Após abrir o navegador, retorne a URL. *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters when sending keys. *(Parameter set: )* |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Evitar que o foco do teclado retorne ao PowerShell após o envio de teclas. *(Parameter set: )* |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Enviar Shift+Enter em vez de Enter normal para quebras de linha. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remova as bordas e a barra de título da janela para uma aparência mais limpa. *(Parameter set: )* |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Coloque a janela do navegador lado a lado com o PowerShell no mesmo monitor. *(Parameter set: )* |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências. *(Parameter set: )* |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Configurações alternativas claras armazenadas na sessão para preferências. *(Parameter set: )* |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Armazenar configurações apenas nas preferências persistentes sem afetar a sessão. *(Parameter set: )* |

## Examples

### Open-GithubQuery -Query "powershell module" -Language "PowerShell" Opens a search for PowerShell modules in Github with language filtering.

```powershell
Open-GithubQuery -Query "powershell module" -Language "PowerShell"
Opens a search for PowerShell modules in Github with language filtering.
```

### qgithub "azure functions" -Monitor 0 Opens a search for Azure Functions on the primary monitor using the alias.

```powershell
qgithub "azure functions" -Monitor 0
Opens a search for Azure Functions on the primary monitor using the alias.
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 Repository search: Find top-starred PowerShell repo in GitHub

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1
Repository search: Find top-starred PowerShell repo in GitHub
```

### Open-GithubQuery -Type Code -Query "def " -Language python -In File Code search for function definitions in Python

```powershell
Open-GithubQuery -Type Code -Query "def " -Language python -In File
Code search for function definitions in Python
```

### Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels bug -State open Issue search: All open bugs mentioning 'security' in microsoft/vscode

```powershell
Open-GithubQuery -Type Issue -Query security -Repo microsoft/vscode -Labels
bug -State open
Issue search: All open bugs mentioning 'security' in microsoft/vscode
```

### Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc -PerPage 1 -Api API mode for repository search.

```powershell
Open-GithubQuery -Type Repository -Query PowerShell -SortBy stars -Order desc
-PerPage 1 -Api
API mode for repository search.
```

## Outputs

- `PSObject`

## Related Links

- [Open-GithubQuery on GitHub](https://github.com/genXdev/genXdev)
