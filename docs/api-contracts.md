# API contracts — Tutorial Manufacturing Shortage Tracker

The OpenAPI document is the authoritative contract: Swagger UI at `/docs`, raw document at `/openapi.json`. This table is the summary.

| Method | Path | Purpose | Response |
| --- | --- | --- | --- |
| `GET` | `/health` | Liveness probe used by the deploy pipeline | `{"status": "ok"}` |
| `GET` | `/api/trackers` | List trackers; `?status=` filters | `Tracker[]` |
| `POST` | `/api/trackers` | Create a tracker | `201` + `Tracker` |
| `GET` | `/api/trackers/{id}` | Fetch one tracker | `Tracker` or `404` |
| `PATCH` | `/api/trackers/{id}` | Partial update | `Tracker` or `404` |
| `DELETE` | `/api/trackers/{id}` | Remove a tracker | `204` or `404` |

## `Tracker`

| Field | Type | Notes |
| --- | --- | --- |
| `id` | integer | Server assigned |
| `title` | string | Required, 1–400 characters |
| `reference` | string | Optional, up to 200 characters |
| `status` | enum | `new`, `in-progress`, `complete` |
| `priority` | enum | `low`, `normal`, `high` |
