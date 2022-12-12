FROM hasura/graphql-engine:latest.cli-migrations-v3

# We include a glob pattern for migrations here since if migrations doesn't exist
# docker will fail to build the image.
# See https://stackoverflow.com/questions/70096208/dockerfile-copy-folder-if-it-exists-conditional-copy
COPY ./migration[s]/ /hasura-migrations
COPY ./metadata /hasura-metadata

# Enable the console
ENV HASURA_GRAPHQL_ENABLE_CONSOLE=true

CMD graphql-engine \
  --metadata-database-url $DATABASE_URL \
  serve \
  --server-port $PORT
