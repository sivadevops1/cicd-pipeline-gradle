sudo -i 
export PATH=$PATH:/user/local/bin

#docker installation

#kubectl installation

curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.8.7/bin/linux/amd64/kubectl

chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version

#minikube installation

curl -Lo minikube  https://storage.googleapis.com/kubernetes-release/releases/v0.23.0/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin

minikube start --vm-driver=none

kubectl run hello-minkube --image=gcr.io/google_containers/echoserver:1.4 --port 8080
kubectl expose deployment hello-minikube --type NodePort
kubectl get pod
curl $(minikube service hello-minikube --url)

