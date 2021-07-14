# helm-hip6-docker

[![GitHub Actions status](https://github.com/bloodorangeio/helm-hip6-docker/workflows/build/badge.svg)](https://github.com/bloodorangeio/helm-hip6-docker/actions?query=workflow%3Abuild+)

Docker image containing changes in bloodorangeio:hip-6 (Helm fork)

The source code for the fork is available [here](https://github.com/bloodorangeio/helm/tree/hip-6).

## Image

The image built from the [Dockerfile](./Dockerfile) is available
on GitHub Container Registry (GHCR) at the following location(s):

```
ghcr.io/bloodorangeio/helm:hip-6
ghcr.io/bloodorangeio/helm:hip-6@sha256:4b1cbd96e4e582614152fd4ab33c743c097edc6ee7540944d3ae5bfe4144b42f
```

[Link](https://github.com/orgs/bloodorangeio/packages/container/package/helm)

The entrypoint for the image is `helm`, and
the env var `HELM_EXPERIMENTAL_OCI=1` is set.
