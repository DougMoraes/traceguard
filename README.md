# TraceGuard

> Product authentication and track-and-trace, from the production line to the customer's phone.

TraceGuard is a full-stack demo of how brands fight counterfeiting. **Producers** create product batches and generate HMAC-signed serial codes, each with its own QR image. **Inspectors** record supply-chain events (produced → shipped → received → sold). **Anyone** can scan a code to see whether the product is **genuine**, **counterfeit** or **already sold**, along with its full trace timeline.

Built with Angular, Spring Boot (Kotlin), Keycloak and PostgreSQL.

## Tech stack

| Layer    | Technology                                                       |
| -------- | ---------------------------------------------------------------- |
| Frontend | Angular (standalone components, signals), SCSS, keycloak-angular |
| Backend  | Spring Boot 3, Kotlin, Spring Security (OAuth2 Resource Server), JPA, Flyway, springdoc-openapi |
| Auth     | Keycloak (OIDC, Authorization Code + PKCE, realm roles)          |
| Data     | PostgreSQL 16                                                    |
| Infra    | Docker Compose                                                   |
| Testing  | JUnit + Testcontainers, Angular unit tests, Playwright           |

## Demo

_TODO_

## Architecture

_TODO_

## Getting started

_TODO_

## Test users

_TODO_

## Authentication flow

_TODO: Keycloak realm, PKCE, tokens and role mapping._

## API

_TODO_

## Testing

_TODO_

## Project structure

```
traceguard/
├── frontend/   # Angular app
├── backend/    # Spring Boot (Kotlin) service
└── infra/      # Docker Compose, Keycloak realm export
```

## Trade-offs

_TODO_

## Next steps

_TODO_
