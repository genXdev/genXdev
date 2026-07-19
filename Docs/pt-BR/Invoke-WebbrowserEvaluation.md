# Invoke-WebbrowserEvaluation

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `Eval, `et

## Synopsis

> Executa código JavaScript em uma guia do navegador web selecionada.

## Description

<details>
<summary><b>Expand description</b></summary>

Executa código JavaScript em uma aba do navegador selecionada com suporte a async/await, promessas e sincronização de dados entre o PowerShell e o contexto do navegador. Pode executar código a partir de strings, arquivos ou URLs.

Esta função fornece acesso abrangente às APIs do navegador, incluindo IndexedDB, localStorage, sessionStorage e outros recursos da plataforma web. Inclui tratamento de erros integrado, gerenciamento de tempo limite e suporte para produzir múltiplos resultados a partir de funções geradoras.

A função usa o Playwright para automação do navegador, que fornece acesso privilegiado que contorna as restrições padrão de segurança do JavaScript no contexto da página atual. Isso permite acesso a APIs de armazenamento, recursos de origem cruzada (dentro da mesma aba) e outros recursos do navegador que normalmente seriam restritos em contextos web padrão.

Principais capacidades:
- Suporte a async/await e Promessas
- Funções geradoras com suporte a yield
- Sincronização de dados via $Global:Data
- Acesso privilegiado a APIs de armazenamento do navegador
- Contorna restrições de política de mesma origem para armazenamento da página atual
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
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Evitar seleção automática de guias |
| `-Edge` | SwitchParameter | — | — | Named | — | Use o navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use o navegador Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Use o Microsoft Edge ou o Google Chrome, dependendo de qual é o navegador padrão |
| `-Firefox` | SwitchParameter | — | — | Named | — | Use o navegador Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Use o navegador WebKit gerenciado pelo Playwright |
| `-Page` | Object | — | — | Named | — | Referência do objeto de página do navegador |
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
$Global:Data = @{ files= (Get-ChildItem *.* -file | % FullName)};

[int] $number = Invoke-WebbrowserEvaluation "

    document.body.innerHTML = JSON.stringify(data.files);
    data.title = document.title;
    return 123;
";

Write-Host "
    Título do documento : $($Global:Data.title)
    Valor de retorno    : $Number
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

// esta função retorna todas as linhas de todas as tabelas/armazenamentos de dados de todos os bancos de dados indexedDb na guia selecionada
// cuidado, nem todos os sites usam indexedDb, pode retornar um conjunto vazio

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$AllIndexedDbData = Invoke-WebbrowserEvaluation "

    // enumerar todos os bancos de dados indexedDB
    for (let db of await indexedDB.databases()) {

        // solicitação para abrir banco de dados
        let openRequest = await indexedDB.open(db.name);

        // aguardar que os eventhandlers sejam chamados
        await new Promise((resolve,reject) => {
            openRequest.onsuccess = resolve;
            openRequest.onerror = reject
        });

        // obter referência
        let openedDb = openRequest.result;

        // inicializar resultado
        let result = { DatabaseName: db.name, Version: db.version, Stores: [] }

        // iterar sobre os nomes das object stores
        for (let i = 0; i < openedDb.objectStoreNames.length; i++) {

            // referência
            let storeName = openedDb.objectStoreNames[i];

            // iniciar transação somente leitura
            let tr = openedDb.transaction(storeName);

            // obter handle da objectstore
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

        // enviar este conteúdo do banco de dados para o pipeline do PowerShell e continuar
        yield result;
    }
";

$AllIndexedDbData | Out-Host

// NOTA DE SEGURANÇA: Este exemplo básico funciona porque o módulo usa automação de navegador Playwright,
// que ignora as restrições normais de segurança do JavaScript no contexto da página atual.
// Páginas da web padrão não podem acessar IndexedDB de outras origens,
// mas o Playwright tem os mesmos privilégios do próprio site.
// Veja o exemplo avançado abaixo para mais detalhes sobre considerações de segurança.

### PS>

```powershell
PS>
```

// Enumeração aprimorada do IndexedDB com metadados e tratamento de erros

// Esta abordagem aprimorada fornece extração de dados do IndexedDB mais abrangente, incluindo
// contagens de bancos de dados, tratamento de erros e metadados. Diferente do exemplo básico acima, esta
// versão lida com restrições de segurança, fornece informações detalhadas sobre os armazenamentos e
// inclui contagens de registros sem necessariamente recuperar todos os dados.

Select-WebbrowserTab -Force;
Set-WebbrowserTabLocation "https://www.youtube.com/"
Start-Sleep 3
$EnhancedIndexedDbData = Invoke-WebbrowserEvaluation "

    // Enumeração aprimorada do IndexedDB com tratamento abrangente de erros
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
// 6. Mais adequado para bancos de dados grandes onde recuperar todos os dados seria lento

// CONSIDERAÇÕES DE SEGURANÇA PARA ACESSO AO INDEXEDDB:
// Ambos os exemplos funcionam porque este módulo usa automação de navegador Playwright,
// que contorna restrições de segurança padrão do JavaScript no contexto
// da página atual:

// Limitações do JavaScript Padrão:
// - A política de mesma origem restringe o acesso ao IndexedDB de outras origens
// - Alguns bancos de dados podem estar ocultos ou protegidos por recursos de segurança do navegador
// - O acesso a bancos de dados de origens cruzadas é normalmente bloqueado
// - Bancos de dados de service workers podem ter proteção adicional

// Como este exemplo contorna as restrições:
// - Usa automação de navegador Playwright para acesso privilegiado
// - Executa no contexto da página real, não em um ambiente isolado
// - Tem as mesmas permissões que o próprio site para seu próprio armazenamento
// - Pode acessar todos os bancos de dados criados pela origem/domínio atual

// Limitações:
// - Não pode acessar bancos de dados de outras origens/domínios no mesmo navegador
// - Não pode acessar bancos de dados de outros perfis de navegador ou navegação privada
// - Algumas extensões do navegador podem criar armazenamento isolado não acessível via JavaScript

// Abordagens Alternativas para Acesso Máximo:
// - Use GenXdev.Webbrowser com várias abas de diferentes origens
// - Combine com acesso ao sistema de arquivos para diretórios de perfil do navegador (quando possível)
// - Use automação de navegador para navegar entre diferentes domínios

### PS>

```powershell
PS>
```

Suporte para resultados de pipeline produzidos
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

## Related Links

- [Invoke-WebbrowserEvaluation on GitHub](https://github.com/genXdev/genXdev)
