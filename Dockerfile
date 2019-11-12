FROM alpine:3.10

ARG VERSION
ARG ARCH="amd64"
ARG OS="linux"

WORKDIR /bin

RUN apk add --no-cache bash

ADD ./install.sh /bin/install_vault_provider.sh
COPY ./secrets-store-csi-driver-provider-vault /bin/secrets-store-csi-driver-provider-vault
RUN chmod a+x /bin/secrets-store-csi-driver-provider-vault

ENTRYPOINT ["/bin/install_vault_provider.sh"]

