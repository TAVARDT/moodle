# Moodle LMS Security Hardening

<div align="center">
  <p>Elite B2B Security Configurations for Moodle E-Learning Infrastructure.</p>
  <p>
    <a href="#-english">🇺🇸 English</a> | 
    <a href="#-português">🇧🇷 Português</a>
  </p>
</div>

---

## 🇺🇸 English

### High-Performance Moodle Security
This repository contains the official **TAVARDT Agency** hardening templates for corporate Moodle LMS environments. These snippets are designed to secure sensitive student data, mitigate path disclosure, and optimize database performance during peak concurrent accesses.

### Contents
- **`.htaccess-secure`**: Apache rules to protect `config.php`, block `.git` access, and secure `moodledata`.
- **`config-secure.php`**: Core directives to force HTTPS cookies, disable update footprinting, and integrate Redis session caching.
- **`secure-cron.sh`**: A shell script to execute the Moodle cron via CLI, avoiding fatal web server timeouts.

### Implementation Guide
1. Ensure your server meets the requirements for Redis if you plan to use the session caching directives.
2. The `secure-cron.sh` file must be executed via the system `crontab`, never placed in the public web root.

### Contact & Services
Looking for elite B2B infrastructure and high-ticket digital engineering?
- **Website:** [ag.tavardt.com](https://ag.tavardt.com/)
- **Email:** contact@tavardt.com

---

## 🇧🇷 Português

### Segurança e Alta Performance para Moodle LMS
Este repositório contém os templates oficiais de "Hardening" (blindagem) da **TAVARDT** para ambientes corporativos E-Learning baseados em Moodle. Estes códigos foram projetados para proteger dados sensíveis de alunos, mitigar a exposição de caminhos do servidor e otimizar a performance do banco de dados durante picos de acessos simultâneos.

### Conteúdo
- **`.htaccess-secure`**: Regras de Apache para proteger `config.php`, bloquear acesso a `.git` e blindar a pasta `moodledata`.
- **`config-secure.php`**: Diretivas essenciais para forçar cookies HTTPS, desabilitar notificações (footprinting) e integrar o cache de sessões via Redis.
- **`secure-cron.sh`**: Um script shell para executar a limpeza e envio de e-mails (cron) via CLI, evitando lentidão fatal no servidor web.

### Guia de Implementação
1. Certifique-se de que o seu servidor possui o Redis instalado e configurado caso deseje utilizar as diretivas de cache de sessão.
2. O arquivo `secure-cron.sh` deve ser executado pelo `crontab` do sistema, nunca inserido dentro do diretório público (`public_html`).

### Contato & Serviços
Procurando por infraestrutura B2B de elite e engenharia digital high-ticket?
- **Site:** [ag.tavardt.com/br/](https://ag.tavardt.com/br/)
- **E-mail:** contato@tavardt.com
