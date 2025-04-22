# Data Engineering Postgraduate Repository

This repository contains materials and code for my Postgraduate in Data Engineering program. It is organized by module, covering topics ranging from relational databases and SQL to cloud computing and humanities. The first module focuses on setting up and using SQL Server in Docker.


## Course Schedule

| #  | Discipline                                                                  | Start Date  | Duration  |
|----|-----------------------------------------------------------------------------|-------------|-----------|
| 1  | Relational Databases and SQL Language                                        | 24/03/2025  | 24 hours  |
| 2  | Discrete and Continuous Data Stream Processing                               | 28/04/2025  | 24 hours  |
| 3  | Python for Data Engineering                                                  | 19/05/2025  | 24 hours  |
| 4  | Data Governance                                                              | 09/06/2025  | 24 hours  |
| 5  | Architectures and Services for Data Lakes and Data Warehousing               | 30/06/2025  | 24 hours  |
| 6  | Infrastructure Provisioning and Pipelines                                    | 14/07/2025  | 24 hours  |
| 7  | DevOps Culture and Practices                                                 | 04/08/2025  | 24 hours  |
| 8  | NoSQL Databases                                                              | 25/08/2025  | 24 hours  |
| 9  | Security in Data Storage, Processing, and Consumption                        | 15/09/2025  | 24 hours  |
| 10 | Massive and Distributed Data Storage and Processing                          | 06/10/2025  | 24 hours  |
| 11 | Data Consumption Layers and Services                                         | 27/10/2025  | 24 hours  |
| 12 | Optimization, Monitoring, and Operation in Databases                         | 17/11/2025  | 24 hours  |
| 13 | Data Ingestion and Cataloging                                                | 08/12/2025  | 24 hours  |
| 14 | Data Preparation, Orchestration, and Workflows                               | 02/02/2026  | 24 hours  |
| 15 | Cloud Computing                                                              | 23/02/2026  | 24 hours  |
| 16 | Humanities                                                                   | 23/02/2026  | 24 hours  |

> **Current focus:** Module 1 - Relational Databases and SQL Language


## Module 1: SQL Server in Docker

This section describes how to set up and run the SQL Server environment using Docker and Docker Compose.

### Prerequisites

- Docker ≥ 20.10
- Docker Compose ≥ 1.27

### Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/BrunoChiconato/pos-graduacao-engenharia-de-dados.git
   cd pos-graduacao-engenharia-de-dados
   ```

2. **Prepare directories**
   ```bash
   mkdir -p ql/data
   ```

3. **Configure the SA password** (optional)
   - Default is `Admin123!`. To change, edit `docker-compose.yml` under:
     ```yaml
     environment:
       MSSQL_SA_PASSWORD: "YourNewStrong!Pass1"
     ```

4. **Start services**
   ```bash
   docker compose up -d
   ```

5. **Verify SQL Server is ready**
   ```bash
   docker compose logs sqlserver -f
   ```
   Wait for the line:
   ```text
   SQL Server is now ready for client connections.
   ```

6. **Connect to SQL Server**
   - Using **SSMS/Azure Data Studio**:
     - Server: `localhost,1433`
     - User: `sa`
     - Password: your SA password
   - Using **DBeaver**:
     - Host: `localhost`
     - Port: `1433`
     - Database: `master`
     - Username: `sa`
     - Password: your SA password
   - Using **sqlcmd** inside the container:
     ```bash
     docker compose exec sql_init bash -c "echo 'SELECT @@VERSION;' | sqlcmd -S sqlserver -U sa -P 'Admin123!'"
     ```

### Data Persistence

- All database files (MDF, LDF) persist under `sql/data` on the host.
- To stop without deleting data:
  ```bash
  docker compose down
  ```
- To remove containers and volumes:
  ```bash
  docker compose down -v
  ```

## Troubleshooting

- **Permission denied on startup**  
  Ensure `sql/data/` is owned by UID 10001 (mssql user) and writable by the container:
  ```bash
  sudo chown -R 10001:10001 sql/data
  chmod -R 750 sql/data
  ```

- **Permission denied on init scripts**  
  Ensure `sql/init/` is readable by the container and editable by your user:
  ```bash
  sudo chown -R $(id -u):$(id -g) sql/init
  chmod -R 755 sql/init
  ```

## Future Modules

This repository will continue to expand with additional modules covering:

- Python for Data Engineering
- Data Governance
- Data Lakes & Warehousing
- Infrastructure & Pipelines
- DevOps Practices
- NoSQL Databases
- Data Security
- Distributed Processing
- Data Consumption & Services
- Monitoring & Optimization
- Data Ingestion & Cataloging
- Data Workflows & Orchestration
- Cloud Computing
- Humanities
