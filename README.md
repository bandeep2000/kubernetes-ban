# kubernetes-ban

#### Some commands:
```
kubectl exec -it centos2 -- bash
kubect get pods -o wide

kubectl get nodes -o wide # Get nodes

kubectl describe quota
kubectl get namespace
kubectl get configmaps
kubectl get storageclass - Storage class
kubectl create whatever --dry-run=true -o yaml | kubectl apply -f -

kubectl config current-context

kubectl get pods --namespace kube-system

k describe quota -n default # Get resource quota for name spance
# Autoscaling
kubectl get hpa

k port-forward nginx1 8080:80

Nodes:
kubectl cordon/uncordon <node name> # nodes become unscheduable, existing pods not deleted
kubectl drain <node name> # will delete existing pods and remove noded

Run command:
kubectl exec -it nginx11  -- bash # nginx11 is pod k get pods

# goot utils tool
kubectl run --generator=run-pod/v1 --rm utils -it --image eddiehale/utils bash

Helm:
kubectl -n kube-system create serviceaccount tiller
kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller
helm init --service-account tiller

helm install --name jenkins stable/jenkins --namespace jenkins
helm install stable/jenkins --set master.adminPassword=<passwd>

```

Some References:

https://kubernetes.io/docs/reference/kubectl/cheatsheet/ 

https://cloud.google.com/kubernetes-engine/docs/concepts/persistent-volumes

Helm:
https://www.digitalocean.com/community/tutorials/how-to-install-software-on-kubernetes-clusters-with-the-helm-package-manager

Helm charts:
https://github.com/helm/charts/tree/master/stable
