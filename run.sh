#!/usr/bin/env bash


#5. User 서비스 및 Inventory 서비스 생성
kubectl apply -f user-service-deployment.yaml
kubectl apply -f user-service-service.yaml
kubectl apply -f inventory-service-deployment.yaml
kubectl apply -f inventory-service-service.yaml

#6. Frontend 서비스 생성
kubectl apply -f frontend-deployment.yaml
kubectl apply -f frontend-service.yaml

