# Projeto do curso Django do python.pro.br

### Instalação

Clonar repositório
```zsh
git clone git@github.com:lucasmartinseti/cursodjango.git
```

Copiar o arquivo `contrib/env-sample` para a pasta `pypro` e renomear como `.env`

```env
DEBUG=True
SECRET_KEY='HASH'
ALLOWED_HOSTS='*'
```
Para usar outro SGBD adicione `DATABASE_URL` no arquivo `.env`.
```env
DATABASE_URL=postgres://dev:dev@127.0.0.1:5432/dev-app
```

### Usando [Docker Compose](https://docs.docker.com/compose/install/)
Na raiz no projeto execute:
```docker
docker-compose up --build
```
Para subir um dump de banco na inicialização do container SGBD, coloque na pasta contrib/db/ o dump
em formato `*.sql`, `*.sql.gz`, or `*.sh` para executar um script.



## Usando [Poetry](https://python-poetry.org/)
Instale os modulos com o `poetry` na pasta raiz do projeto.
```zsh
poetry install
```
> Caso não tenha o `poetry` instalado, segue a documentação. [Poetry Install](https://python-poetry.org/docs/#installation)

Inicie o servidor Django.
```zsh
poetry run ./manage.py migrate
poetry run ./manage.py runserver
```

Caso queira ativar o VirtualEnv do projeto.
```zsh
poetry shell
```

### Atualizações do projeto.

1. Entrega Contínua - CI

- [x] Instalação e configuração do `pyenv`
  - [x] Foi trocado pelo `poetry`, por estar de acorado com a PEP631.

- [x] Integração Pipenv Travis e Pyup.
  - [x] Foi usado o GitHub Actions no lugar do Travis por ser FREE.
  - [ ] Alterantiva para o Pyup.

- [x] Setup do Projeto e Arquivos Manage.

- [x] Publicação no Heroku.

- [x] Deploy Automático.

- [x] Rodando Servidor no Pycharm
  - [x] Foi usado o `nvim` por ter mais facilidade de uso junto com o `zsh`.

- [x] Olá Django.

- [x] Pytest Django.

- [x] Cobertura de Testes.
