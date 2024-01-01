if [ "`echo -n`" = "-n" ]; then
  echo "here"
  n=""
  c="\c"
else
  n="-n"
  c=""
fi

echo $n Enter your name: $c
read name
echo "Hello, $name"