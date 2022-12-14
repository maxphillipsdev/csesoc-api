# CSESoc Federated API PoC
This project is a monorepo managed using turborepo. It contains the following folders:

- `apps/`: This folder contains various microservices.
- `hasura/`: This folder contains the configuration for a Hasura instance used to federate the microservices.

To run this project, you need to have Hasura and Docker Compose installed. Here are the steps to install Hasura and run the project:

1. Install the Hasura CLI by running the following command:
`curl -L https://hasura.io/install.sh | bash`
1. Navigate to the hasura/ directory and run the following command to start the Hasura instance:
`hasura console`
1. In a new terminal window, navigate to the root directory of the project and run the following command to start the microservices:
`docker-compose up`

You should now be able to access the Hasura console at http://localhost:9695/console to view and manage the federated microservices.
