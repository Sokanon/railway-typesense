# Typesense

One-click deploy of [Typesense](https://typesense.org/) on Railway -- a fast, typo-tolerant search engine optimized for instant search experiences.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/template/TEMPLATE_CODE)

## What's Included

- **Typesense Server** -- search engine with typo tolerance, filtering, faceting, geo search, and semantic search
- **Persistent volume** -- search data survives redeployments

## Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `TYPESENSE_API_KEY` | Admin API key for authentication | Auto-generated |

## Post-Deployment

1. Generate a public domain for the service
2. Use the API key to authenticate requests
3. Create collections and index documents via the [REST API](https://typesense.org/docs/27.1/api/)

## Connecting from Other Services

Use Railway's private networking:

```
TYPESENSE_HOST=${{Typesense.RAILWAY_PRIVATE_DOMAIN}}
TYPESENSE_PORT=8108
TYPESENSE_PROTOCOL=http
TYPESENSE_API_KEY=${{Typesense.TYPESENSE_API_KEY}}
```

## Volume

Data is persisted at `/data`. This includes all collections, documents, and server state.

## Links

- [Typesense Documentation](https://typesense.org/docs/)
- [API Reference](https://typesense.org/docs/27.1/api/)
- [Source Code](https://github.com/typesense/typesense)
