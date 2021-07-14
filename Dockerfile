FROM docker.io/library/golang:1.16.6-alpine as builder
RUN apk add git make bash ca-certificates
RUN mkdir -p /go/src/helm.sh && \
    cd /go/src/helm.sh && \
    git clone https://github.com/bloodorangeio/helm.git --depth 1 -b hip-6 && \
    cd /go/src/helm.sh/helm && \
    CGO_ENABLED=0 make build && \
    bin/helm version

FROM scratch AS final
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY --from=builder /go/src/helm.sh/helm/bin/helm /helm
ENV HELM_EXPERIMENTAL_OCI=1
ENTRYPOINT ["/helm"]
