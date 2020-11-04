cat /root/test

actName="hello-world"
#actLabels="app=frontend"
actImg="nginx:latest"

name=$(kubectl describe deployment hello-world | grep Name: | awk '{print $2}')
#labels=$(kubectl describe deployment hello-world | grep Labels: | awk 'NR==1{print $2}')
img=$(kubectl describe deployment hello-world | grep Image: | awk '{print $2}')
op=$(kubectl get deployments --show-labels | grep "$name" | grep "$labels" | awk '{print $2}')
if [ "$op" == "3/3" ] && [ "$name" == "$actName" ] && [ "$img" == "$actImg" ]
then
  echo "done"
fi
