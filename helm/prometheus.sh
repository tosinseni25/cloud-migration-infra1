#!/bin/bash

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm repo update

#helm install prometheus prometheus-community/prometheus \
helm uninstall monitoring prometheus-community/kube-prometheus-stack \
helm install monitoring prometheus-community/kube-prometheus-stack \
-f monitoring/prometheus-values.yaml \
-f monitoring/values.yaml \
-n monitoring \
--create-namespace