docker build -t amirarreaza/multi-client:latest -t amirarreaza/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t amirarreaza/multi-server:latest -t amirarreaza/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t amirarreaza/multi-worker:latest -t amirarreaza/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push amirarreaza/multi-client:latest
docker push amirarreaza/multi-server:latest
docker push amirarreaza/multi-worker:latest

docker push amirarreaza/multi-client:$SHA
docker push amirarreaza/multi-server:$SHA
docker push amirarreaza/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=amirarreaza/multi-server:$SHA
kubectl set image deployments/client-deployment client=amirarreaza/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=amirarreaza/multi-worker:$SHA