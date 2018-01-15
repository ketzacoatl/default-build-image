## My Default Docker Image for Gitlab Builds

This is based on alpine and ships the common utilities I use, including:

* terraform
* nomad
* vault
* aws cli utilities
* kubectl
* kops
* helm

Build and tag the image with: `docker build --tag default-build-image .`
