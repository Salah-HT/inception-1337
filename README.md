  
<div align="center">
  <img src="https://github.com/user-attachments/assets/44923c94-70bc-4657-b8fa-527f2ae35739" alt="gt">
</div>

# Inception - Containerized WordPress Stack

A Docker-based WordPress application with NGINX, MariaDB, and bonus services including Redis, FTP, Adminer, and a static website.

## Architecture

The project consists of multiple containerized services orchestrated with Docker Compose [1](#0-0) :

- **NGINX** (Port 443) - Web server with SSL
- **WordPress** (Port 9000) - Content management system  
- **MariaDB** (Port 3306) - Database server
- **Redis** (Port 6379) - Caching service
- **vsftpd** (Port 21) - FTP server
- **Adminer** (Port 8080) - Database administration
- **Website** (Port 80) - Static website

## Quick Start

### Prerequisites
- Docker Engine
- Docker Compose
- Make utility
- Sudo privileges

### Build and Deploy

```bash
# Launch existing configuration
make all

# Build from scratch
make build

# Rebuild after changes
make re
``` [2](#0-1) 

### Management Commands

```bash
# Stop services
make down

# Clean containers and data
make clean

# Complete cleanup
make fclean
```


## Data Persistence

The system creates persistent data directories:
- `~/data/wordpress/` - WordPress files and uploads
- `~/data/mariadb/` - Database files [4](#0-3) 

## Environment Configuration

Configure services using environment variables in `srcs/.env`:
- Database credentials (DB_NAME, DB_USER, DB_PASS, DB_ROOT)
- FTP credentials (FTP_USR, FTP_PWD)

## Access Points

- **WordPress**: https://shamsate.42.fr (requires hosts file modification)
- **Adminer**: http://localhost:8080
- **Static Website**: http://localhost:80
- **FTP**: ftp://localhost:21

## Development

The Makefile automates the build process by running directory setup scripts [5](#0-4)  and Docker Compose commands with proper environment configuration [6](#0-5) .

## Notes

This project implements the 42 School Inception project requirements, creating a complete containerized web application stack. The bonus services (Redis, FTP, Adminer, static website) extend the core LAMP stack functionality. All services are configured to restart automatically and use a custom bridge network for inter-container communication.

