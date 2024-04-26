ARG KSOPSVERSION=v4.3.1
ARG ARGOCDVERSION=v2.10.8

FROM viaductoss/ksops:$KSOPSVERSION as base
FROM quay.io/argoproj/argocd:$ARGOCDVERSION

COPY --from=base /usr/local/bin/ksops /usr/local/bin/ksops
COPY --from=base /usr/local/bin/kustomize /usr/local/bin/kustomize
