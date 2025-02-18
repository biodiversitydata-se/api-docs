run:
	docker compose up --detach

update-specs:
	curl -sS --max-time 30 --retry 1 "https://records.biodiversitydata.se/ws/v3/api-docs" --output src/specs/records
	curl -sS --max-time 30 --retry 1 "https://spatial.biodiversitydata.se/ws/openapi/openapi" --output src/specs/spatial
	curl -sS --max-time 30 --retry 1 "https://species.biodiversitydata.se/ws/openapi/openapi" --output src/specs/species
	curl -sS --max-time 30 --retry 1 "https://lists.biodiversitydata.se/openapi/openapi" --output src/specs/lists
	curl -sS --max-time 30 --retry 1 "https://collections.biodiversitydata.se/openapi/openapi" --output src/specs/collections
	curl -sS --max-time 30 --retry 1 "https://data-quality-service.biodiversitydata.se/openapi/openapi" --output src/specs/data-quality
	curl -sS --max-time 30 --retry 1 "https://images.biodiversitydata.se/openapi/openapi" --output src/specs/images
	curl -sS --max-time 30 --retry 1 "https://logger.biodiversitydata.se/openapi/openapi" --output src/specs/logger
	curl -sS --max-time 30 --retry 1 "https://auth.biodiversitydata.se/userdetails/openapi/openapi" --output src/specs/userdetails
	curl -sS --max-time 30 --retry 1 "https://sensitive.biodiversitydata.se/swagger.json" --output src/specs/sensitive
	curl -sS --max-time 30 --retry 1 "https://namematching.biodiversitydata.se/openapi.json" --output src/specs/namematching

release:
	../sbdi-install/utils/make-release.sh
