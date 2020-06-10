$op=$(docker ps | grep ubuntu)
echo "op = $op"
if [ "$op" == "" ]; then
  echo "Container is stop"
  echo "Checking stopped containers"
  $op=$(docker ps -a | grep ubuntu)
  if [ "$op" != "" ]; then
    echo "Container exists"
    echo "done"
  fi
fi
