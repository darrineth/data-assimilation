# Google Colab
Please note that this will not work on `Google Colab` environment as it does not support python v3.8.

# Prerequisites
You will need a Docker installation on your machine. This tutorial was tested against v19.03.13 but it really should work with any modern version.

# Installation
1. Clone the repository into any directory of your choice.
2. In the root directory of the project execute command `docker build -t agh/data-assimilation .`. (Note the dot at the end.) This will create a docker image with all required dependencies. This might take a while.
3. Create a docker container using the following command: `docker-compose up`.

# Clean up
1. To remove the docker container from your local machine execute `docker-compose down -v`.
2. To remove the docker image execute `docker rmi agh/data-assimilation`.