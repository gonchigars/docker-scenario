op=$(docker ps | grep redis)
#echo "$op"
history
if [ "$op" != "" ]; then
  echo "done"
fi
