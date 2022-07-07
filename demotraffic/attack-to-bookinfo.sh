date;
echo "attack to bookinfo start";
curl -s --http1.0 -H "Host: bookinfo.example.com" "http://127.0.0.1/productpage" -o /dev/null
sleep 5
curl -s -H "Host: bookinfo.example.com" "http://127.0.0.1/productpage/../../../../etc/passwd" -o /dev/null
sleep 5
curl -s -H "Host: bookinfo.example.com" "http://127.0.0.1/productpage?a=<script>" -o /dev/null
sleep 5
curl -s -H "Host: bookinfo.example.com" "http://127.0.0.1/productpage" -X POST -H "Content-Type: application/json" -d "a=1&b=2" -o /dev/null
sleep 5
curl -s -H "Host: bookinfo.example.com" "http://127.0.0.1/productpage?a='%20OR%201%3D1%20--%20" -o /dev/null
echo "done"
