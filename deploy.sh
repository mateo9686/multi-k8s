docker build -t mateo9686/multi-client:latest -t mateo9686/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t mateo9686/multi-server:latest -t mateo9686/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t mateo9686/multi-worker:latest -t mateo9686/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push mateo9686/multi-client:latest
docker push mateo9686/multi-client:$SHA
docker push mateo9686/multi-server:latest
docker push mateo9686/multi-server:$SHA
docker push mateo9686/multi-worker:latest
docker push mateo9686/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=mateo9686/multi-server:$SHA
kubectl set image deployments/client-deployment client=mateo9686/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=mateo9686/multi-worker:$SHA
