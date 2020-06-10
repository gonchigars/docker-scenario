$op=$(docker ps | grep ubuntu)
if [ "$op" == "" ]; then
  $op=$(docker ps -a | grep ubuntu)
  if [ "$op" != "" ]; then
    echo "done"
  fi
fi
