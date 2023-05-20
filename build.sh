docker build -t ubuntu-sandbox -f ./Dockerfile .
docker tag ubuntu-sandbox hasithaishere/ubuntu-sandbox:latest
docker login
docker push -a hasithaishere/ubuntu-sandbox