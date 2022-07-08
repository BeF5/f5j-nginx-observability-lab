date;
echo "dummy access to bookinfo start";
curl -s -H "Host: bookinfo.example.com" "http://127.0.0.1/" -o /dev/null
sleep 5
curl -s -H "Host: bookinfo.example.com" "http://127.0.0.1/dummy" -o /dev/null
sleep 5
curl -s -H "Host: bookinfo.example.com" "http://127.0.0.1/product/book" -o /dev/null
sleep 5
curl -s -H "Host: bookinfo.example.com" "http://127.0.0.1/" -o /dev/null
echo "done"
