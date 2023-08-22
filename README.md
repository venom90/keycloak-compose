*Note: Recommended only for local development. Not for production use*

## Problem Statement
The docker command given on official keycloak website works but data is not persisted.
```
docker run -p 8080:8080 -e KEYCLOAK_ADMIN=admin -e KEYCLOAK_ADMIN_PASSWORD=admin quay.io/keycloak/keycloak:22.0.1 start-dev
```

## Keycloak with PostgreSQL Docker Compose Setup

This Docker Compose setup initializes a Keycloak instance integrated with a PostgreSQL database. It features:

**Keycloak:** Using the image from quay.io/keycloak/keycloak:22.0.1, it's configured to run in development mode and to connect to a PostgreSQL database.

**PostgreSQL:** Set up with a customized port 5434 on the localhost. The data is persisted in a Docker volume named keycloakpgdata.

**Network Isolation:** Both services (Keycloak and PostgreSQL) communicate over a custom bridge network named keycloak_network, ensuring network isolation from other containers.

## Usage:
Clone this repo on your machine and run the following command on your terminal (tested on Mac M1 Pro). Make sure the docker daemon is up and running on your computer.
```bash
make keycloak-compose
```

After successful initialization, Keycloak will be accessible on http://localhost:8083 and login with username admin, password admin. You can change the variables as per your need. For more details on Keycloak configuration see [All Configuration](https://www.keycloak.org/server/all-config)
