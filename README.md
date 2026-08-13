# n8n_docker_env

Ambiente Docker com n8n + PostgreSQL. Minha primeira experiência real com automação de workflow e uso de IA via API. 

## Motivos

Uma pipeline do apache Aiflow terminava um processo sem um aviso/notificação.
Queria que, a partir de webhook, o n8n avisasse que um relatório estava pronto
e usasse IA para transformar/formatar os dados antes de enviar uma versão reduzida por e-mail.

## Resumo e Problemas

- n8n é ótimo para orquestrar esse tipo de fluxo (webhook -> transformação -> notificação) sem escrever tudo à mão.
- Tentei rodar Python puro dentro do container do n8n e não deu certo (n8n é Node.js
  por natureza) — contornei fazendo essa parte fora, no próprio pipeline de origem.
- Ainda é um fluxo básico, não chegou a rodar em produção — mas validou a ideia.

## Ambiente (Docker)

### Subir o ambiente
```bash
docker compose build
docker compose up -d 
```

### Comandos úteis
```bash
docker compose down                  # para parar o ambiente mantendo os volumes
docker compose down -v ou --volumes  # para o ambiente e remove os volumes
docker ps                            # containers rodando
docker logs <containerId>            # debug
``` 
## Notas
<!-- espaço para você completar detalhes específicos que só você sabe -->
