Follow the below steps to complete the exercise
1. Create a deployment with name `hello-world` of `nginx`
`kubectl create deployment hello-world --image=nginx:latest`{{execute}}

2. Scale up the deployment to 3 replicas
`kubectl scale deployment hello-world --replicas=3`{{execute}}
