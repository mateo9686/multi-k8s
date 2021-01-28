## kubectl

- apply config `kubectl apply -f <file.yaml>`
- get objects information `kubectl get <object type: pods, deployments...>`
- get more info `kubectl get <object type: pods, deployments...> -o wide`
- get objects description `kubectl describe <object type: pods, deployments...>`
- deploy new image version `kubectl set image <object type>/<object name> <container name>=<new image>`
- create a secret `kubectl create secret [generic | docker-registry | tls] <secret name> --from-literal <key>=<value>`

## minikube

- start minikube `minikube start`
- get minikube ip `minikube ip`
- open kubernetes dashboard: `minikube dashboard`

## docker cli

- temporarly reconfigure docker cli to run on docker-server inside minikube vm `eval $(minikube docker-env)`
