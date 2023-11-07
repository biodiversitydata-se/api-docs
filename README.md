# API docs

SBDI API documentation using [swagger-ui](https://github.com/swagger-api/swagger-ui). API specifications are downloaded from the various applications in production and included in, and served from, this application. When API:s change in production this app need to be updated (see below). 

## Usage

Run local server (using Docker):
```
make run
```

Update specs from production:
```
make update-specs
```
