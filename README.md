# Monitoramento de Logs - Script Bash


<img width="694" alt="image" src="https://github.com/user-attachments/assets/886a1b00-cf18-4010-883a-f2bfbfc83776" />

<img width="1101" height="694" alt="image" src="https://github.com/user-attachments/assets/ae755b3f-12c3-459e-a421-304bfe9c161e" />



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
   ```
   
   Clone o repositório:

```bash
git clone https://github.com/SEU_USUARIO/monitoramento-logs.git
cd monitoramento-logs
```

Configuração de diretórios: Certifique-se de que o diretório de logs (myapp/logs) exista e contenha arquivos .log para que o script funcione corretamente.

Execute o script: Após garantir que os diretórios estão configurados corretamente, execute o script Bash:

```bash
bash monitoramento_logs.sh
```

O script irá processar os logs, gerar os arquivos filtrados e compactados, e armazená-los no diretório myapp/logs-processados.

## 📂 **Estrutura de Diretórios**


myapp/logs: Contém os arquivos de log originais.

myapp/logs-processados: Onde os arquivos filtrados, únicos e combinados são armazenados, juntamente com os relatórios.

myapp/logs-temp: Diretório temporário para armazenar os arquivos antes da compactação.

## 📑 **Exemplos de Saída**


logs_combinados_YYYY-MM-DD.log: Arquivo que contém todos os logs combinados (frontend e backend) para o dia.

log_stats_YYYY-MM-DD.txt: Relatório com o número de linhas e palavras de cada arquivo de log processado.

logs_YYYY-MM-DD.tar.gz: Arquivo compactado contendo os logs processados e relatórios do dia.


## 🧑‍🤝‍🧑 **Contribuindo**
Se você desejar contribuir para este projeto, siga os passos abaixo:

Faça um fork deste repositório.

Crie uma nova branch (git checkout -b minha-nova-feature).

Realize as mudanças necessárias e faça commit (git commit -am 'Adicionando nova funcionalidade').

Envie para o seu fork (git push origin minha-nova-feature).

Abra um pull request para a branch principal deste repositório.
