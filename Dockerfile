FROM buildkite/agent:ubuntu

WORKDIR /home/buildkite-agent

RUN apt-get update && apt-get install -y \
    wget \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Install AWS SAM CLI
RUN wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip \
    && unzip aws-sam-cli-linux-x86_64.zip -d sam-installation \
    && ./sam-installation/install \
    && rm aws-sam-cli-linux-x86_64.zip \
    && rm -rf sam-installation

# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm awscliv2.zip \
    && rm -rf aws

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs
