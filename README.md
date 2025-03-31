# Monitoramento de Logs - Script Bash


<img width="694" alt="image" src="https://github.com/user-attachments/assets/886a1b00-cf18-4010-883a-f2bfbfc83776" />


Este projeto contém um script em **Bash** para monitoramento e processamento de logs. O objetivo do script é filtrar, anonimizar, ordenar e gerar relatórios a partir de logs de aplicação, com foco em dados sensíveis e em erros.

## 🛠 Funcionalidades

- **Filtragem de erros**: O script busca por logs que contenham a palavra-chave `ERROR` e também por informações sensíveis como `SENSITIVE_DATA`, `User password`, `API key`, e `credit card`.
- **Anonimização de dados**: Substitui informações sensíveis, como senhas de usuário e tokens de sessão, por `REDACTED`.
- **Processamento de logs**: Ordena e remove duplicatas dos logs, gerando arquivos únicos e resumidos.
- **Relatórios**: Cria relatórios estatísticos sobre os logs processados, incluindo o número de linhas e palavras, e armazena as estatísticas em arquivos de log.
- **Combinação de logs**: Combina os logs filtrados e organizados de acordo com o tipo (frontend ou backend), criando um único arquivo de logs combinados.
- **Compactação**: Após o processamento, compacta os logs em um arquivo `.tar.gz` para armazenamento e arquivamento.

## 🛠 Tecnologias Utilizadas

- **Bash** - Linguagem de script para automação e processamento de arquivos.
- **find** - Para localizar arquivos `.log` no diretório de logs.
- **grep** - Para filtrar linhas que contenham erros ou dados sensíveis.
- **sed** - Para realizar substituições de dados sensíveis.
- **sort** - Para ordenar os logs por data ou outro critério.
- **uniq** - Para remover duplicatas de logs.
- **tar** - Para compactar os arquivos de log após o processamento.

## 🚀 Como Usar

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/SEU_USUARIO/monitoramento-logs.git
   cd monitoramento-logs
