<div align="center">
<img src="https://img.shields.io/github/created-at/CristianoSFMothe/test-pick-robot" alt="GitHub Created At"/>

<img src="https://img.shields.io/github/contributors/CristianoSFMothe/test-pick-robot" alt="GitHub contributors" />

<img src="https://img.shields.io/github/license/CristianoSFMothe/test-pick-robot" alt="GitHub License" />

<img src="https://img.shields.io/github/last-commit/CristianoSFMothe/test-pick-robot" alt="GitHub last commit" />

<img src="https://img.shields.io/github/languages/top/CristianoSFMothe/test-pick-robot" alt="GitHub top language" />

<img src="https://img.shields.io/github/languages/count/CristianoSFMothe/test-pick-robot" alt="GitHub language count" />

<img src="https://img.shields.io/github/actions/workflow/status/CristianoSFMothe/test-pick-robot/ci.yml" alt="GitHub Actions Workflow Status" />
<br />
<img alt="GitHub forks" src="https://img.shields.io/github/forks/CristianoSFMothe/test-pick-robot" />

<img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/CristianoSFMothe/test-pick-robot" />

<img alt="GitHub User's stars" src="https://img.shields.io/github/stars/CristianoSFMothe" />

</div>

# Test Pick - Robot Framework

Este repositório contém testes automatizados para a aplicação **Test Pick**, utilizando o **Robot Framework** com a **Library Browser**, geração de relatórios com **Allure Report** e integração contínua com **GitHub Actions**.

## 📂 Estrutura do Projeto

```
📦 test-pick-robot
├── 📂 .github
│   ├── 📂 workflows
│   │   ├── ci.yml  # Pipeline de integração contínua
├── 📂 resources
│   ├── 📂 config
│   │   ├── Libs.resource  # Configuração de bibliotecas
│   ├── 📂 fixtures
│   │   ├── login.json  # Massa de dados para login
│   ├── 📂 locators
│   │   ├── homeLocators.yml  # Localizadores da Home
│   ├── 📂 pages
│   │   ├── homePage.resource  # Keywords da Home
│   ├── 📂 utils
│   │   ├── commonKeywords.resource  # Keywords reutilizáveis
│   │   ├── OpenPage.resource  # Keyword para abrir páginas
├── 📂 tests
│   ├── home.robot  # Testes da Home Page
└── README.md  # Documentação do projeto
```

## 🚀 Tecnologias Utilizadas

- **Robot Framework** → Framework de automação de testes
- **Library Browser** → Biblioteca para automação web baseada no Playwright
- **Allure Report** → Geração de relatórios detalhados dos testes
- **GitHub Actions** → Pipeline de CI/CD para execução dos testes automatizados

## 🛠️ Configuração do Ambiente

### 1️⃣ Pré-requisitos

Certifique-se de ter instalado:

- [Python](https://www.python.org/downloads/) (versão recomendada: 3.8+)
- [Node.js](https://nodejs.org/) (para suporte ao Playwright)
- Gerenciador de pacotes `pip`

### 2️⃣ Criando o Ambiente Virtual (`venv`)

É recomendado criar um **ambiente virtual** para isolar as dependências do projeto.

#### No **Windows** (CMD ou PowerShell):

```bash
python -m venv venv
venv\Scripts\activate
```

#### No **Linux/Mac** (Terminal):

```bash
python3 -m venv venv
source venv/bin/activate
```

Após ativar o ambiente virtual, o terminal exibirá `(venv)` no início da linha de comando.

Para desativar o ambiente virtual:

```bash
deactivate
```

### 3️⃣ Instalação das Dependências

Com o ambiente virtual ativado, instale as dependências:

```bash
pip install -r requirements.txt
```

### 4️⃣ Inicializando o Browser

Para garantir o funcionamento da **Library Browser**, instale os navegadores necessários:

```bash
rfbrowser init
```

## ▶️ Executando os Testes

Para rodar os testes localmente:

```bash
robot -d reports tests/
```

Para gerar o relatório no **Allure**:

```bash
robot -d ./logs --listener allure_robotframework tests
```

## 🔄 Pipeline no GitHub Actions

Os testes são executados automaticamente no GitHub Actions sempre que há um push ou pull request para o repositório.

### 📊 Relatórios e Logs

Após a execução, os relatórios de testes ficam disponíveis na pasta `reports/`.

## 📌 Autor

Projeto desenvolvido por [Cristiano SFMothe](https://github.com/CristianoSFMothe). 🚀

---

Agora o README está bem completo! Se precisar de mais alguma alteração, só avisar. 😊
