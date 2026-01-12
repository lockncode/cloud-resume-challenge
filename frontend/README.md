# Frontend Technical Specification

## Serve Static Website Locally

We need to serve our static website locally so we can start using stylesheets
externally from our HTML page in a Cloud Developer Enviroment (CDE).

> This is not necessary with local development.

Assuming we have node install we'll use the simple web-server http-server

### Install HTTP Server
```sh
npm i http-server -g
```

https://www.npmjs.com/package/http-server

### Server Website

http-server will server a public folder by default where
the command is run.

```sh
cd frontend
http-server
```

## Frontend Framework Consideration

- React is used because it is the most popular javascript framework.
- Vite.js over webpack is used because our frontend is very simple.
- Configured React Router V7.