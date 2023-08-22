# Keycloak with PostgreSQL Docker Compose Setup

This Docker Compose setup initializes a Keycloak instance integrated with a PostgreSQL database. It features:

*Keycloak:* Using the image from quay.io/keycloak/keycloak:22.0.1, it's configured to run in development mode and to connect to a PostgreSQL database.

*PostgreSQL:* Set up with a customized port 5434 on the localhost. The data is persisted in a Docker volume named keycloakpgdata.

*Network Isolation:* Both services (Keycloak and PostgreSQL) communicate over a custom bridge network named keycloak_network, ensuring network isolation from other containers.

## Usage:
Run the following command your terminal (test on Mac)
```bash
keycloak-compose
```

After successful initialization, Keycloak will be accessible on http://localhost:8083
