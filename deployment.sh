cd app

ls

version=$(cat app-deplyment.yaml | grep -i app | awk -F: '/- image: / {print $3}')

echo  $version
 
cat app-deplyment.yaml

docker build -t linux17kartik/app:$version .

docker images

docker login --username=USERNAME  --password=PASSWORD

docker push linux17kartik/app:$version

kubectl apply -f app-deplyment.yaml

kubectl apply -f app-service.yaml

kubectl get pods -o wide --namespace=jenkins

kubectl apply -f ../techolution-ingress.yaml

docker rmi linux17kartik/app:$version

docker images
