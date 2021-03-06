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

k delete all --all

k describe quota -n default # Get resource quota for name spance
# Autoscaling
kubectl get hpa

k port-forward nginx1 8080:80

Nodes:
kubectl cordon/uncordon <node name> # nodes become unscheduable, existing pods not deleted
kubectl drain <node name> # will delete existing pods and remove noded

Label node:
k label node minikube web=app
k get nodes --show-labels

# Dry run with yaml
k create -f pod5.yml --dry-run -o yaml
k run busybox --image=busybox --dry-run=client -o yaml

Untaint node:
k taint node minikube web-

#namespace:
kubectl config set-context --current --namespace=<ns>
 k config view --minify | grep namespace

# secrets
kubectl create secret generic db-user-pass --from-file=./username.txt --from-file=./password.txt
kubectl create secret generic git-secret --from-literal=username=<redacted>--from-literal=password=<redacted>

Run command:
kubectl exec -it nginx11  -- bash # nginx11 is pod k get pods
kubectl get all # good command, list everything in namespace
k explain pod.spec.volumes

jenkins docker on local:
docker volume create  jenkins
docker run -it -v jenkins:/var/jenkins_home/ -p 8081:8080 jenkins/jenkins:lts

# goot utils tool
kubectl run --generator=run-pod/v1 --rm utils -it --image eddiehale/utils bash
k run -it --rm busybox6 --image=busybox sh - Busy Box!!

Helm:
# No need of these in helm 3
kubectl -n kube-system create serviceaccount tiller
kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller
helm init --service-account tiller

brew install helm
helm repo add stable https://kubernetes-charts.storage.googleapis.com/

helm install --name jenkins stable/jenkins --namespace jenkins
helm install stable/jenkins --set master.adminPassword=<passwd>

```

Some References:


https://kubernetes.io/docs/reference/kubectl/cheatsheet/ 

https://cloud.google.com/kubernetes-engine/docs/concepts/persistent-volumes

Helm:
https://www.digitalocean.com/community/tutorials/how-to-install-software-on-kubernetes-clusters-with-the-helm-package-manager

Helm  charts:
https://github.com/helm/charts/tree/master/stable
