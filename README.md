# project-so-docker-compose
This project is being developed as a homework assignment for the discipline of Operating Systems in the Control and Automation Engineering course at the Federal Institute of Education, Science, and Technology of Espírito Santo (IFES).

## Project Description
This project is a multi-container application built using Docker Compose. It consists of three main components: a database, an API, and a front-end. 

The `db` directory contains the Dockerfile and initialization SQL script for the database. 

The `api` directory contains the Flask application (`app.py`), its dependencies (`requirements.txt`), and the Dockerfile for building the API container. The API function is responsible for setting and getting data from the database.

The `front` directory contains the Streamlit application (`app.py`), its dependencies (`requirements.txt`), and the Dockerfile for building the front-end container. The application consumes the API, displaying the data and inserting data into the database.

The `docker-compose.yml` file is used to define and orchestrate the containers, allowing them to communicate with each other.

This project aims to provide a scalable and modular architecture for developing and deploying a full-stack application using Docker. 

## Architecture
```
project-so-docker-compose/
├── db/
│   ├── Dockerfile
│   ├── init.sql
├── api/
│   ├── app.py
│   ├── requirements.txt
│   ├── Dockerfile
├── front/
│   ├── app.py
│   ├── requirements.txt
│   ├── Dockerfile
├── docker-compose.yml
```

## Cloning and Starting the Application

To clone and start the application, follow these steps:

1. Open a terminal or command prompt.

2. Navigate to the directory where you want to clone the project.

3. Run the following command to clone the project repository:

    ```
    git clone https://github.com/teylorguaitolini/project-so-docker-compose.git
    ```

4. Change into the project directory:

    ```
    cd project-so-docker-compose
    ```

5. Build and start the application using Docker Compose:

    ```
    docker-compose up --build
    ```

    This command will build the necessary Docker images and start the containers defined in the `docker-compose.yml` file.

6. Wait for the containers to start and for the application to be fully initialized.

7. Once the application is running, you can access it by opening a web browser and navigating to `http://localhost:8501`.

That's it! You have successfully cloned and started the application using Docker Compose.
