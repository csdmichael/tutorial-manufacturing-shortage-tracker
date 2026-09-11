# Tutorial Manufacturing Shortage Tracker — API

FastAPI service. Owns validation, authorization, and all database access.

| Path | Purpose |
| --- | --- |
| `/health` | Liveness probe |
| `/docs` | Swagger UI |
| `/openapi.json` | OpenAPI document |
| `/api/trackers` | Trackers collection (GET, POST) |
| `/api/trackers/{id}` | Single tracker (GET, PATCH, DELETE) |
