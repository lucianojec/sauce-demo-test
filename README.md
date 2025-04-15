# 🧪 Sauce Demo Test

Este projeto realiza automação de testes no site [SauceDemo](https://www.saucedemo.com/) utilizando o **Robot Framework** com padrão **BDD (Behavior-Driven Development)** e a biblioteca **SeleniumLibrary**.

## 📁 Estrutura do Projeto

```
sauce-demo-test/
│
├── features/          # Cenários de teste (formato BDD)
├── steps/             # Implementação dos passos do BDD
├── pages/             # Mapeamento dos elementos de interface
├── resources/         # Variáveis globais e keywords reutilizáveis
├── requirements.txt   # Dependências do projeto
└── README.md          # Este arquivo
```

---

## 🚀 Como executar o projeto

### 1. Clone o repositório

```bash
git clone https://github.com/lucianojec/sauce-demo-test.git
cd sauce-demo-test
```

### 2. Crie um ambiente virtual (opcional, mas recomendado)

```bash
python -m venv venv
source venv/bin/activate  # Linux/macOS
venv\Scripts\activate     # Windows
```

### 3. Instale as dependências

```bash
pip install -r requirements.txt
```

---

## 🧪 Executando os testes

Execute um cenário individual:

```bash
robot features/login.robot
```

Ou:

```bash
robot features/checkout.robot
```

Os relatórios serão gerados automaticamente:

- 📄 `log.html`
- 📄 `report.html`
- 📄 `output.xml`

---

## ✅ Funcionalidades Testadas

- Login com credenciais válidas
- Adição de dois produtos ao carrinho
- Finalização de pedido (checkout completo)

---

## 🔧 Tecnologias Utilizadas

- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/)
- [Python 3.12+](https://www.python.org/)
- Google Chrome (via WebDriver)

---

## 📸 Evidências

Capturas de tela são armazenadas automaticamente em caso de falha.

---

## 💡 Melhorias futuras

- Teste de login inválido
- Validação do valor total do carrinho
- Integração com GitHub Actions
- Parametrização para rodar em múltiplos navegadores

---

## 👨‍💻 Autor

Desenvolvido por **Luciano Fagundes**

📧 [luciano.fagundes02@gmail.com](mailto:luciano.fagundes02@gmail.com)

---

## 📝 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
