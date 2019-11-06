FROM quay.io/roboll/helmfile:v0.90.7

ENV KUBECONFIG /build/admin.kubeconfig.yaml
WORKDIR /build
RUN apk add --no-cache openssh-client && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

CMD ["/usr/local/bin/helmfile"]

