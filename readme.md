# KrungThon Bank Project

This project is a web-based banking system that uses Docker to simplify the setup and deployment process. Below are the detailed steps to run the project using Docker and access its services.

---

## Prerequisites

1. Install [Docker](https://www.docker.com/) on your machine.
2. Install [Docker Compose](https://docs.docker.com/compose/install/) (if not included with Docker).

---

## Steps to Run the Project

### 1. Clone the Repository
Clone the project repository to your local machine:
```bash
git clone <repository-url>
cd KrungThon-Bank-master
```

### 2. Build and Start Docker Containers
Run the following command in the project directory to build and start the Docker containers:
```bash
docker-compose up --build 
```
or detached mode:
```bash
docker-compose up -d --build
```

- This will:
  - Build the `web` service using the `Dockerfile`.
  - Start the `db` service (MariaDB) and initialize the database using the SQL files in the `database/` folder.
  - Start the `phpmyadmin` service for database management.

### 3. Verify Running Containers
Check if the containers are running:
```bash
docker ps
```
You should see three containers:
- `krungthon_web` (Apache + PHP)
- `krungthon_db` (MariaDB)
- `krungthon_phpmyadmin` (phpMyAdmin)

---

## Accessing the Services

### 1. Web Application
- Open your browser and navigate to:  
  **[http://localhost:8080](http://localhost:8080)**  
  This will load the KrungThon Bank web application.

### 2. phpMyAdmin
- Open your browser and navigate to:  
  **[http://localhost:8081](http://localhost:8081)**  
  Use the following credentials to log in:
  - **Server:** `db`
  - **Username:** `root`
  - **Password:** *(leave empty)*

---

## Stopping the Containers
To stop the running containers, press `Ctrl+C` in the terminal where `docker-compose up` is running. Alternatively, run:
```bash
docker-compose down 
```

---

## Persistent Data
- The database data is stored in a Docker volume named `db_data`. This ensures that your data persists even if the containers are stopped or removed.
- To view the volume, run:
```bash
docker volume ls
```

---

## Troubleshooting

1. **Port Conflicts**  
   If ports `8080` or `8081` are already in use, modify the `ports` section in the `docker-compose.yml` file:
   ```yml
   web:
     ports:
       - "8080:80" # Change 8080 to another available port
   phpmyadmin:
     ports:
       - "8081:80" # Change 8081 to another available port
   ```

2. **Database Initialization Issues**  
   Ensure the `database/` folder contains valid SQL files for initializing the database.

3. **Rebuilding Containers**  
   If you make changes to the code or configuration, rebuild the containers:
   ```bash
   docker-compose up --build
   ```

---

## Project Structure

- **`docker-compose.yml`**: Defines the services (web, db, phpmyadmin) and their configurations.
- **`Dockerfile`**: Specifies the environment for the `web` service (Apache + PHP).
- **`database/`**: Contains SQL files for initializing the database.
- **`KrungThon-Bank-master/`**: Contains the source code for the web application.

---

Enjoy using the KrungThon Bank system!