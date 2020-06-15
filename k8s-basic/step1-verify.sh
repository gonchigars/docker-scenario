op=$(kubectl get deployments --show-labels | grep hello-world | grep app=frontend | awk '{print $2}')
if [ "$op" == "3/3" ]
then
  img=$(kubectl describe deployment hello-world | grep Image: | awk '{print $2}')
  if [ "$img" == "nginx:latest" ]
  then
    echo "done"
