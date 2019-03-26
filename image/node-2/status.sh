code=`curl -o -I -L -s -w "%{http_code}" localhost:3903`
if [ "$code" == 200 ]; then
  exit 0
fi
exit 1