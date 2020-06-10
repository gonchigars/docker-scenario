op=$(docker ps | grep redis)
#echo "$op"
if [ "$op" != "" ]; then
  echo "done"
fi
