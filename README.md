# SSH Pod

Deploy a POD with SSH enabled. this chart deploy a pod with `mahdidarabi/openssh-server` image that contains the ssh server with active daemon.

> You can replace image with any openssh docker image but may you need to config the pod yourself

## Deploy helm chart

You can deploy helm chart with helm or helmfile

### Deploy with helm

```bash
helm install ssh-pod ./helm-chart/ssh-pod -n ssh-pod
```

### Deploy with helmfile

```bash
helmfile apply -f helm-chart/helmfile.yaml
```

## Deploy with k8s resources

You can deploy ssh pod with resources provided in resources folder. this approach helps you have more control on resources and customize that resources.
after changing resource by your needs you can deploy resources with below command:

```bash
kubectl create -f resources/
```
