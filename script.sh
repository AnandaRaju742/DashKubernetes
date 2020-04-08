read -p 'ProjectID please: ' projectID
gcloud config set project $projectID
gcloud auth list
gcloud config list project
gcloud config list project
gcloud config set compute/zone us-central1-a
cd app
echo $PWD
ls
tar -xvf test.tar
rm test.tar
docker build -t node-app:0.1 .
docker images
docker run -d -p 4000:80 --name my-app node-app:0.1
echo 'sleeping for 5 seconds'
sleep 5
curl -I  http://localhost:4000
STATUS=$(curl -s -o /dev/null -w '%{http_code}' http://localhost:4000)
  if [ $STATUS -eq 200 ]; then
    echo "Got 200! All done!"
  else
    echo "Got $STATUS :( Not done yet..."
	exit 1
  fi
#status 200 so alive
docker tag node-app:0.1 gcr.io/$DEVSHELL_PROJECT_ID/node-app:0.1
docker images
docker push gcr.io/$DEVSHELL_PROJECT_ID/node-app:0.1

gcloud container clusters create chatbot
gcloud config list project

docker stop $(docker ps -q)
docker rm $(docker ps -aq)
#removed and stopped all
#pushing the image to container registry
docker rmi node-app:0.2 gcr.io//node-app node-app:0.1
docker rmi node:6
docker rmi $(docker images -aq) # remove remaining images
docker images

docker pull gcr.io/$DEVSHELL_PROJECT_ID/node-app:0.1
docker images
gcloud config list project
docker run -d -p 8000:80 -d gcr.io/$DEVSHELL_PROJECT_ID/node-app:0.1 
echo 'Again sleeping for 5 seconds'
sleep 5
STATUS=$(curl -s -o /dev/null -w '%{http_code}' http://localhost:8000)
  if [ $STATUS -eq 200 ]; then
    echo "Again Got 200! All done!"
    break
  else
    echo "Got $STATUS :( Not done yet..."
	exit 1
  fi
kubectl create deployment hello-server --image=gcr.io/$DEVSHELL_PROJECT_ID/node-app:0.1
kubectl expose deployment hello-server --type=LoadBalancer --port 8000  --target-port 80
kubectl get services
