keycloak-compose:
	KEYCLOAK_ADMIN=admin KEYCLOAK_ADMIN_PASSWORD=admin KC_DB_USERNAME=keycloak KC_DB_PASSWORD=secret docker-compose up

.PHONY: keycloak-compose
