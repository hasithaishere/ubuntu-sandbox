docker build -t aws-buildkite-ubuntu-agent -f ./Dockerfile .
docker tag aws-buildkite-ubuntu-agent hasithaishere/aws-buildkite-ubuntu-agent:latest
docker login
docker push -a hasithaishere/aws-buildkite-ubuntu-agent