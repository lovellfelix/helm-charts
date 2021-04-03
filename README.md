# helm-charts
Lovell Felix public Helm charts repository.

## TL;DR

```bash
helm repo add lovellfelix https://lovellfelix.github.io/helm-charts/
helm repo update
```

## Prerequisites

- Helm 3.x

## Adding this helm repository

To add this repository to the helm configuration:

```bash
helm repo add lovellfelix https://lovellfelix.github.io/helm-charts/
```

## Using this helm repository

To install a chart from this repository (example with openvpn):

```bash
helm install openvpn lovellfelix/openvpn
```

## Removing this helm repository

To remove the helm repository from helm configuration:

```bash
helm repo remove lovellfelix
```
