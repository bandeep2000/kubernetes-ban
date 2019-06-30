# kubernetes-ban

#### Some commands:
```
kubectl exec -it centos2 -- bash
kubect get pods -o wide

kubectl describe quota
kubectl get namespace
kubectl get configmaps
kubectl get storageclass - Storage class
kubectl create whatever --dry-run=true -o yaml | kubectl apply -f -

kubectl config current-context

kubectl get pods --namespace kube-system

# Autoscaling
kubectl get hpa

Nodes:
kubectl cordon/uncordon <node name> # nodes become unscheduable, existing pods not deleted
kubectl drain <node name> # will delete existing pods and remove noded


```

Some References:
https://cloud.google.com/kubernetes-engine/docs/concepts/persistent-volumes
