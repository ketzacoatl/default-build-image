FROM fpco/stack-build:lts-10.2

# Install required Ubuntu packages
RUN ( apt-get update ) \
 && ( DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends python-setuptools python-pip libpython-dev iputils-ping iputils-tracepath apt-transport-https jq) \
 && ( apt-get clean ) \
 && ( rm -rf /var/lib/apt/lists/* ) \
 && ( jq --version )

# Use pip to upgrade pip
RUN ( pip install --upgrade pip )

# Install Docker Engine
RUN ( echo -n 'deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable\n' > '/etc/apt/sources.list.d/docker.list' ) \
 && ( curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - ) \
 && ( apt-get update ) \
 && ( DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends 'docker-ce=17.06.2~ce-0~ubuntu' ) \
 && ( apt-get clean ) \
 && ( rm -rf /var/lib/apt/lists/* )

# Install AWS CLI
RUN ( pip install awscli )

# Install kubectl
RUN curl -Lo /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && chmod +x /usr/local/bin/kubectl

# Install Gitlab Runner
RUN curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.deb.sh | bash

# Install latest version of Stack
RUN curl -sSL https://get.haskellstack.org/ | sh -s - -f

# Install terraform-docs
RUN ( curl -Lo /usr/local/bin/terraform-docs https://github.com/segmentio/terraform-docs/releases/download/v0.3.0/terraform-docs_linux_amd64 ) \
 && ( chmod +x /usr/local/bin/terraform-docs ) \
 && ( terraform-docs --help )

# Install ops
RUN ( curl -Lo /usr/local/bin/ops https://download.fpcomplete.com/ops/ops-v0.3.2-linux-amd64 ) \
 && ( chmod +x /usr/local/bin/ops ) \
 && ( ops --help )

# Install mkdocs
RUN ( pip install mkdocs==0.16.3 mkdocs-cinder ) \
 && ( mkdocs --version )

