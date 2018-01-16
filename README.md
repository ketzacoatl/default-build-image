## Default Docker Images for Gitlab Builds

These include the common utilities I use when setting up CI/CD pipelines for
images and containers:

* terraform
* nomad
* vault
* aws cli utilities
* kubectl
* kops
* helm

There are two images ATM, each built on a different base image:

* Alpine Linux 3.6
* `fpco/stack-build` which includes stackage, is based on Ubuntu 16.04 LTS, and is absolutely humungous in size (docker images over 2 GB are a PAIN!)

Build and tag the images with:

* `docker build --tag default-build-image:alpine alpine`
* `docker build --tag default-build-image:stack-build stack-build`
