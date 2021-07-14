# helm-hip6-docker

Docker image containing changes in bloodorangeio:hip-6 (Helm fork)

The source code for the fork is available [here](https://github.com/bloodorangeio/helm/tree/hip-6).

## Image

The image built from the [Dockerfile](./Dockerfile) is available
on GitHub Container Registry (GHCR) at the following location:

```
ghcr.io/bloodorangeio/helm:hip-6
```

[Link](https://github.com/orgs/bloodorangeio/packages/container/package/helm)

The entrypoint for the image is `helm`, and
the env var `HELM_EXPERIMENTAL_OCI=1` is set.
