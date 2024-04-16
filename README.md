# argocd-sops
Builds custom ArgoCD image with kustomize-sops.

## Built from:
- [viaduct-ai/kustomize-sops Uses the base image here that contains the required SOPS and Kustomize binaries](https://github.com/viaduct-ai/kustomize-sops)
- [argoproj/argocd The binaries from kustomize-sops are added to the base ArgoCD image](https://github.com/argoproj/argo-cd)


## Using with ArgoCD Helm
This image can be used with the [Argo CD Chart](https://github.com/argoproj/argo-helm/tree/master/charts/argo-cd).

```yaml
#Enable kustomize build options necessary for kustomize-sops
server:
  config:
    kustomize.buildOptions: "--enable-alpha-plugins --enable-exec"

repoServer:
  #Change the image repository
  image:
    repository: ghcr.io/dexter136/argocd-sops
```
