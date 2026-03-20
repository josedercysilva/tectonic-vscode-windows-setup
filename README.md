# Tectonic + VS Code: Setup para Windows

Boilerplate/Template para configuração de ambiente LaTeX profissional no Windows usando Tectonic e VS Code.

## Introdução

Este repositório visa solucionar a complexidade de configuração do LaTeX no ambiente Windows. Em vez de depender de distribuições volumosas como o MiKTeX (aprox. 5GB), este setup utiliza o Tectonic, um motor autossuficiente que gerencia pacotes sob demanda.

### Benefícios Técnica

* **Minimalismo:** Evita o download e instalação de distribuições LaTeX de gigabytes.
* **Gerenciamento de Pacotes:** O Tectonic baixa automaticamente apenas as dependências utilizadas no documento (ex: classe `abntex2`).
* **Configuração de IDE:** Inclui arquivo `.vscode/settings.json` pré-configurado para integração "out-of-the-box" com a extensão LaTeX Workshop.

## Instalação e Uso

**Pré-requisito:** Recomendado utilizar este repositório como template clicando no botão verde **"Use this template"** acima.

Siga os três passos abaixo na máquina Windows:

### Passo 1: Aquisição do Binário do Tectonic

1. Baixe o executável homologado (versão 0.15.0): [tectonic-0.15.0-x86_64](https://github.com/tectonic-typesetting/tectonic/releases/download/tectonic%400.15.0/tectonic-0.15.0-x86_64-pc-windows-msvc.zip)
2. Extraia o arquivo `.zip`.
3. Mova o executável extraído de forma que o caminho final seja exatamente: `C:\Tectonic\tectonic.exe`.
   > **Nota de Segurança:** Para baixar diretamente da fonte ou auditar o código, acesse o repositório oficial: [Tectonic GitHub Releases](https://github.com/tectonic-typesetting/tectonic/releases).

### Passo 2: Configuração da Infraestrutura (PATH)

O sistema precisa saber onde encontrar o executável. Use o script de automação fornecido:

1. Localize o arquivo `setup-path.ps1` neste repositório.
2. Clique com o botão direito sobre ele e selecione **"Executar com o PowerShell"**.
3. O script injetará `C:\Tectonic` no PATH do usuário. Se já estiver configurado, ele avisará.
4. Reinicie o VS Code ou terminal para aplicar as mudanças.

### Passo 3: Configuração da IDE e Validação

1. Abra a pasta deste projeto no VS Code.
2. Certifique-se de ter a extensão **LaTeX Workshop** instalada.
3. Abra o arquivo `main.tex`.
4. Salve o arquivo (`Ctrl + S`). O LaTeX Workshop está configurado para compilar automaticamente ao salvar.
5. Na primeira execução, o Tectonic fará o download da classe `abntex2` e dependências. Isso pode demorar alguns segundos.
6. Se a compilação for bem-sucedida, o PDF será gerado na subpasta configurada.

---
## Licença

Este projeto está licenciado sob a Licença **MIT**.

---
*Template mantido por [José Dercy](https://github.com/josedercysilva)*
