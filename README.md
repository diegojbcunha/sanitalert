> Projeto em desenvolvimento. Acompanhe a jornada no [LinkedIn](https://linkedin.com/in/diegojbcunha).

# SanitAlert

Sistema de reporte de problemas em banheiros via QR Code, desenvolvido como projeto fullstack de portfólio.

Estudantes registram problemas escaneando um QR Code fixado na entrada do banheiro. A equipe de manutenção acompanha os chamados em um painel administrativo e atualiza o status em tempo real.

---

## Tecnologias

**Backend**
- Node.js
- Express
- PostgreSQL
- JWT para autenticação

**Frontend**
- HTML, CSS e JavaScript puro
- Mobile-first

---

## Funcionalidades planejadas

- Registro de chamados sem login (estudante via QR Code)
- Categorias: pia, vaso sanitário, porta, iluminação, limpeza
- Painel administrativo com filtros por status e banheiro
- Atualização de status inline: aberto, em andamento, resolvido
- Dashboard com indicadores operacionais
- Geração e impressão de QR Codes por banheiro
- Autenticação com JWT

---

## Status do projeto

| Etapa | Status |
|---|---|
| Planejamento e requisitos | Concluido |
| Modelagem do banco de dados | Concluido |
| API REST (backend) | Planejado |
| Frontend (todas as telas) | Planejado |
| Geracao de QR Codes | Planejado |
| Deploy | Planejado |
| Migracao para React | Planejado |
| Testes | Planejado |

---

## Banco de dados

O modelo de dados foi definido antes de qualquer linha de código. Três tabelas principais:

**usuarios** — equipe de manutenção com acesso ao painel administrativo.

**banheiros** — cada banheiro cadastrado com nome e localização. Registros nunca são deletados, apenas desativados, para preservar o histórico de chamados.

**chamados** — reporte gerado pelo estudante. Vinculado a um banheiro, com categoria, descrição opcional e status que evolui de aberto para em andamento e resolvido.

O schema completo está em `docs/schema.sql`.

---

## Como rodar localmente

### Pre-requisitos

- Node.js 18+
- PostgreSQL 14+

### Instalacao

```bash
git clone https://github.com/diegojbcunha/sanitalert.git
cd sanitalert/backend
npm install
```

### Banco de dados

Execute o arquivo `docs/schema.sql` no seu PostgreSQL para criar as tabelas e inserir os dados iniciais.

### Variaveis de ambiente

```bash
cp .env.example .env
```

Edite o `.env` com suas credenciais do PostgreSQL.

### Rodando

```bash
npm run dev
```

Acesse `http://localhost:3000`

---

## Estrutura do projeto

```
sanitalert/
├── docs/
│   └── schema.sql
├── backend/
│   └── src/
│       ├── config/       — conexao com o banco
│       ├── controllers/  — logica de negocio (em breve)
│       ├── middlewares/  — autenticacao JWT (em breve)
│       └── routes/       — endpoints da API (em breve)
└── frontend/             — em breve
```

---

## Proximos passos

- Construcao da API REST
- Frontend das telas do estudante e do tecnico
- Dashboard com indicadores
- Deploy na nuvem

---

Desenvolvido por [Diego Cunha](https://linkedin.com/in/diegojbcunha)
