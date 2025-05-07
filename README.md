# Listing API Algolia Instant Search Demo

This project is just a quick demo of using [Algolia](https://www.algolia.com/)'s InstantSearch on
with the data provided by the Listings API.

The index is populated using [this project](https://github.com/idealist7/listings-api-to-algolia).

It's not meant to be forked or used in production.
The goal is simply to show a very quick draft of a project that uses Algolia.

## Deployment

This section is for internal use, in case we'd want to deploy it again.

The project includes a `disco.json` file to deploy the project on [Disco](https://disco.cloud/).

There are a few env variables that you need to set.

```bash
disco projects:add \
    VITE_ALGOLIA_APP_ID=YOUR_ALGOLIA_APP_ID \
    VITE_ALGOLIA_SEARCH_API_KEY=YOUR_ALGOLIA_API_KEY \
    VITE_ALGOLIA_INDEX_NAME=YOUR_ALGOLIA_INDEX_NAME \
    --name algolia-instant-search-demo
    --github GITHUB_USER/YOUR_REPO
    --domain YOURDOMAIN.COM
```

## Development

```
npm run dev
```
