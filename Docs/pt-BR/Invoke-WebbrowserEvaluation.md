# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval`, `et`

## Synopsis

> Executa código JavaScript em uma aba do navegador selecionada.

## Description

<details>
<summary><b>Expand description</b></summary>

Executa código JavaScript em uma guia do navegador selecionada com suporte para async/await,
promises e sincronização de dados entre o PowerShell e o contexto do navegador.
Pode executar código a partir de strings, arquivos ou URLs.

Esta função fornece acesso abrangente às APIs do navegador, incluindo IndexedDB,
localStorage, sessionStorage e outros recursos da plataforma web. Possui
tratamento de erros integrado, gerenciamento de tempo limite e suporte para retornar
múltiplos resultados de funções geradoras.

A função usa Playwright para automação do navegador, o que fornece acesso
privilegiado que ignora as restrições de segurança padrão do JavaScript no contexto
da página atual. Isso permite acesso a APIs de armazenamento, recursos de
origem cruzada (dentro da mesma guia) e outros recursos do navegador que
normalmente seriam restritos em contextos web padrão.

Principais capacidades:
- Suporte a async/await e Promise
- Funções geradoras com suporte a yield
- Sincronização de dados via $Global:Data
- Acesso privilegiado a APIs de armazenamento do navegador
- Ignora restrições de política de mesma origem para armazenamento da página atual
- Enumeração e extração de dados do IndexedDB
- Manipulação do DOM e acesso a APIs web
- Tratamento de erros e gerenciamento de tempo limite

</details>
## Syntax

```powershell
Invoke-WebbrowserEvaluation [[-Scripts] <Object[]>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Inspect] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Código JavaScript, caminho de arquivo ou URL para executar |
| `-Inspect` | SwitchParameter | — | — | Named | — | Interromper no depurador do navegador antes de executar |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Prevenir a seleção automática de guias |
| `-Edge` | SwitchParameter | — | — | Named | — | Use o navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use o navegador Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Use o Microsoft Edge ou o Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Use o navegador Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Use o navegador WebKit gerenciado pelo Playwright |
| `-Page` | Object | — | — | Named | — | Referência do objeto da página do navegador |
| `-ByReference` | PSObject | — | — | Named | — | Objeto de referência de sessão do navegador |

## Examples

### // Execute simple JavaScript Invoke-WebbrowserEvaluation "document.title = 'hello world'"

```powershell
// Execute simple JavaScript
Invoke-WebbrowserEvaluation "document.title = 'hello world'"
```

### PS>

```powershell
PS>
```

// Sincronizando dados
Select-WebbrowserTab -Force;
$Global:Data = @{ arquivos= (Get-ChildItem *.* -file | % FullName)};

[int] $numero = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.arquivos);
    data.title = document.title;
    return 123;
";

Write-Host "
    Título do documento : $($Global:Data.title)
    valor de retorno    : $numero
";

### PS>

```powershell
PS>
```

Suporte para promessas
Select-WebbrowserTab -Force;
Invoke-WebbrowserEvaluation "
    let myList = [];
    return new Promise((resolve) => {
        let i = 0;
        let a = setInterval(() => {
            myList.push(++i);
            if (i == 10) {
                clearInterval(a);
                resolve(myList);
            }
        }, 1000);
    });
"

### PS>

```powershell
PS>
```

// Suporte para promises e mais

// esta função retorna todas as linhas de todas as tabelas/armazenamentos de dados de todos os bancos de dados do indexedDb na aba selecionada
// cuidado, nem todos os sites usam indexedDb, pode retornar um conjunto vazio

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // enumerar todos os bancos de dados indexedDB
    for (let db of await indexedDB.databases()) {

        // solicitar abertura do banco de dados
        let openRequest = await indexedDB.open(db.name);

        // aguardar que os manipuladores de eventos sejam chamados
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // obter referência
        let openedDb = openRequest.result;

        // inicializar resultado
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // iterar nomes dos object stores
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // referência
            let storeName = openedDb.objectStoreNames[i];

            // iniciar transação somente leitura
            let tr = openedDb.transaction(storeName);

            // obter handle do object store
            let store = tr.objectStore(storeName);

            // solicitar todos os dados
            let getRequest = store.getAll();

            // aguardar resultado
            await new Promise((resolve,reject) => {
                getRequest.onsuccess = resolve;
                getRequest.onerror = reject;
            });

            // adicionar resultado
            result.Stores.push({ StoreName: storeName, Data: getRequest.result});
        }

        // enviar o conteúdo deste banco de dados para o pipeline do PowerShell e continuar
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// NOTA DE SEGURANÇA: Este exemplo básico funciona porque o módulo usa automação de navegador Playwright,
// que contorna as restrições normais de segurança JavaScript no contexto da página atual.
// Páginas web padrão não podem acessar IndexedDB de outras origens, mas o Playwright tem os mesmos privilégios que o próprio site.
// Veja o exemplo aprimorado abaixo para mais detalhes sobre considerações de segurança.

### PS>

```powershell
PS>
```

// Enumeração IndexedDB aprimorada com metadados e tratamento de erros

// Esta abordagem aprimorada fornece extração de dados IndexedDB mais abrangente, incluindo
// contagens de banco de dados, tratamento de erros e metadados. Ao contrário do exemplo básico acima, esta
// versão lida com restrições de segurança, fornece informações detalhadas do armazenamento e
// inclui contagens de registros sem necessariamente recuperar todos os dados.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Enumeração IndexedDB aprimorada com tratamento abrangente de erros
    let results = [];

    for (let dbInfo of await indexedDB.databases()) {
        try {
            // Abrir banco de dados com timeout
            let db = await new Promise((resolve, reject) => {
                let req = indexedDB.open(dbInfo.name);
                req.onsuccess = () => resolve(req.result);
                req.onerror = () => reject(req.error);
                setTimeout(() => reject(new Error('Timeout ao abrir banco de dados')), 5000);
            });

            let dbResult = {
                DatabaseName: dbInfo.name,
                Version: dbInfo.version,
                ObjectStoreCount: db.objectStoreNames.length,
                Stores: []
            };

            // Processar cada object store
            for (let i = 0; i < db.objectStoreNames.length; i++) {
                let storeName = db.objectStoreNames[i];
                try {
                    let transaction = db.transaction(storeName, 'readonly');
                    let store = transaction.objectStore(storeName);

                    // Obter contagem de registros (mais rápido que recuperar todos os dados)
                    let count = await new Promise((resolve, reject) => {
                        let req = store.count();
                        req.onsuccess = () => resolve(req.result);
                        req.onerror = () => reject(req.error);
                        setTimeout(() => reject(new Error('Timeout na contagem')), 3000);
                    });

                    dbResult.Stores.push({
                        StoreName: storeName,
                        RecordCount: count,
                        KeyPath: store.keyPath,
                        AutoIncrement: store.autoIncrement,
                        IndexNames: Array.from(store.indexNames)
                    });

                } catch (storeError) {
                    dbResult.Stores.push({
                        StoreName: storeName,
                        Error: storeError.message
                    });
                }
            }

            results.push(dbResult);
            db.close();

        } catch (dbError) {
            results.push({
                DatabaseName: dbInfo.name,
                Error: dbError.message
            });
        }
    }

    yield results;
";

$EnhancedIndexedDbData | ConvertTo-Json -Depth 10

// Principais diferenças do exemplo básico:
// 1. Inclui tratamento de erros para problemas de acesso ao banco de dados
// 2. Fornece metadados (KeyPath, AutoIncrement, IndexNames)
// 3. Obtém contagens de registros sem recuperar todos os dados (mais eficiente)
// 4. Lida com cenários de timeout
// 5. Retorna informações estruturadas sobre o esquema do banco de dados
// 6. Mais adequado para grandes bancos de dados onde recuperar todos os dados seria lento

// CONSIDERAÇÕES DE SEGURANÇA PARA ACESSO INDEXEDDB:
// Ambos os exemplos funcionam porque este módulo usa automação de navegador Playwright,
// que contorna as restrições de segurança padrão do JavaScript no contexto
// da página atual:

// Limitações Padrão do JavaScript:
// - Política de mesma origem restringe acesso ao IndexedDB de outras origens
// - Alguns bancos de dados podem estar ocultos ou protegidos por recursos de segurança do navegador
// - Acesso a banco de dados entre origens é tipicamente bloqueado
// - Bancos de dados de service workers podem ter proteção adicional

// Como este exemplo contorna restrições:
// - Usa automação de navegador Playwright para acesso privilegiado
// - Executa no contexto da página real, não em um ambiente isolado
// - Tem as mesmas permissões que o próprio site para seu próprio armazenamento
// - Pode acessar todos os bancos de dados criados pela origem/domínio atual

// Limitações:
// - Não pode acessar bancos de dados de outras origens/domínios no mesmo navegador
// - Não pode acessar bancos de dados de outros perfis de navegador ou navegação privada
// - Algumas extensões de navegador podem criar armazenamento isolado não acessível via JavaScript

// Abordagens Alternativas para Acesso Máximo:
// - Use GenXdev.Webbrowser com várias guias de diferentes origens
// - Combine com acesso ao sistema de arquivos para diretórios de perfil do navegador (quando possível)
// - Use automação de navegador para navegar entre diferentes domínios

### PS>

```powershell
PS>
```

Suporte a resultados de pipeline gerados
Select-WebbrowserTab -Force;
Invoke-WebbrowserEvaluation "

    for (let i = 0; i < 10; i++) {

        await (new Promise((resolve) => setTimeout(resolve, 1000)));

        yield i;
    }
";

### PS> Get-ChildItem *.js | Invoke-WebbrowserEvaluation -Edge

```powershell
PS> Get-ChildItem *.js | Invoke-WebbrowserEvaluation -Edge
```

### PS> ls *.js | et -e

```powershell
PS> ls *.js | et -e
```

## Parameter Details

### `-Scripts <Object[]>`

> Código JavaScript, caminho de arquivo ou URL para executar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Inspect`

> Interromper no depurador do navegador antes de executar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoAutoSelectTab`

> Prevenir a seleção automática de guias

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Edge`

> Use o navegador Microsoft Edge

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `e` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chrome`

> Use o navegador Google Chrome

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ch` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Chromium`

> Use o Microsoft Edge ou o Google Chrome, dependendo de qual é o navegador padrão

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Firefox`

> Use o navegador Firefox

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ff` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Webkit`

> Use o navegador WebKit gerenciado pelo Playwright

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `wk` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Page <Object>`

> Referência do objeto da página do navegador

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ByReference <PSObject>`

> Objeto de referência de sessão do navegador

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Close-Webbrowser.md)
- [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Close-WebbrowserTab.md)
- [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Export-BrowserBookmarks.md)
- [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Find-BrowserBookmark.md)
- [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-BrowserBookmark.md)
- [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-DefaultWebbrowser.md)
- [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-PlaywrightSessionReference.md)
- [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-Webbrowser.md)
- [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-WebbrowserTabDomNodes.md)
- [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Import-BrowserBookmarks.md)
- [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Import-GenXdevBookmarkletMenu.md)
- [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-BrowserBookmarks.md)
- [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-Webbrowser.md)
- [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Open-WebbrowserSideBySide.md)
- [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Select-WebbrowserTab.md)
- [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-BrowserVideoFullscreen.md)
- [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-WebbrowserTabLocation.md)
- [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Show-WebsiteInAllBrowsers.md)
