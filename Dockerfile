ARG KSOPSVERSION=v4.3.2
ARG ARGOCDVERSION=v2.11.5

FROM viaductoss/ksops:$KSOPSVERSION as base
FROM quay.io/argoproj/argocd:$ARGOCDVERSION

COPY --from=base /usr/local/bin/ksops /usr/local/bin/ksops
COPY --from=base /usr/local/bin/kustomize /usr/local/bin/kustomize
