# SIT737 2023 T1 10.2D

## Calculator app using GCP

Create your docker image push that to your docker hub

# Tag that docker image to your GCR

1. Open Google cloud 
2. Access Terminal
3. Create Cluster
```
gcloud config set project PROJECT_ID
gcloud container clusters create-auto hello-cluster \
    --region=australia-southeast1
```
4. Get your credentials
```
gcloud container clusters get-credentials hello-cluster \
    --region australia-southeast1
```

5. Pull your docker image and push to gcr
```
docker pull adityan28/calc
docker tag adityan28/calc gcr.io/<project_id>/calc
docker push gcr.io/<project_id>/calc
```

6. Create a deployment
```
kubectl apply -f createDeployment.yaml
```

7. Expose deployment
```
kubectl expose deployment hello-server --type LoadBalancer --port 80 --target-port 3000
```

8. Check your pods
```
kubeclt get pods
```

9. Get your external IP
```
kubectl get service hello-server
```

10. Copy that in your browser
```
http://EXTERNAL.IP
```

11. Go to cloud build in GCP and create a trigger

12. Point the trigger to your github's repository

13. Create a cloudbuild.yaml file write down the necessary steps

14. Commit your changes to your repository

15. You can see the pods are updating by
```
kubectl get pods
```

16. Access the the same IP and see the changes
```
http://EXTERNAL.IP
```

17. Delete your service and cluster
```
kubectl delete deployment mydeployment
kubectl delete service hello-server
gcloud container clusters delete hello-cluster \
    --region australia-southeast1
```


