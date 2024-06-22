#!/usr/bin/env bash

#1. 네임스페이스 생성
kubectl apply -f namespace.yaml

#2. ConfigMap 및 Secret 생성
kubectl apply -f configmap.yaml
kubectl apply -f secret.yaml

#3. Persistent Volume 및 Persistent Volume Claim 생성
kubectl apply -f persistent-volume.yaml
kubectl apply -f persistent-volume-claim.yaml

#4. PostgreSQL 및 서비스 생성 / Network Policy 적용
kubectl apply -f postgres-deployment.yaml
kubectl apply -f postgres-service.yaml
kubectl apply -f postgres-networkpolicy.yaml

#5. User 서비스 및 Inventory 서비스 생성
kubectl apply -f user-service-deployment.yaml
kubectl apply -f user-service-service.yaml
kubectl apply -f inventory-service-deployment.yaml
kubectl apply -f inventory-service-service.yaml

#6. Frontend 서비스 생성
kubectl apply -f frontend-deployment.yaml
kubectl apply -f frontend-service.yaml

#7. Horizontal Pod Autoscaler 생성
kubectl apply -f hpa.yaml
