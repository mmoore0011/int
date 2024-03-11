kind delete cluster
docker rm -fv kind-regisrty
cd /var/opt/source/k8s/kind/
./kind_create.sh
sleep 20
cd /var/opt/source/containers/simple_web_server
sdlc/build
cd /var/opt/source/containers/web_server_monitor/
sdlc/build
cd /var/opt/source/k8s/simple-web/
kubectl apply -f simple-web.yml
sleep 10
kubectl port-forward service/simple-web 8000:8000 --address='0.0.0.0' &
