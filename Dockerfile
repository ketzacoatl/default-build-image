FROM alpine

    # install common packages
RUN apk add --no-cache wget ca-certificates unzip xz make perl build-base
    # install stack, the haskell build tool
RUN wget -O- https://www.stackage.org/stack/linux-x86_64-static | tar xzvf - --strip-components=1 -C /usr/local/bin/ stack-1.6.3-linux-x86_64-static/stack && \
    stack --version

    # install the aws cli tools
RUN apk  add --no-cache python3 py3-pip && \
    pip3 install --upgrade pip && \
    pip3 install awscli
    # install terraform
RUN wget  -O terraform.zip https://releases.hashicorp.com/terraform/0.11.2/terraform_0.11.2_linux_amd64.zip && \
    unzip terraform.zip && \
    mv terraform /usr/local/bin/terraform-0.11.2
RUN ls -Alh

