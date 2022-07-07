date;
echo "other traffic start";
curl -s -H "Host: grafana.example.com" "http://127.0.0.1:8080/" -o /dev/null
sleep 5
curl -s -H "Host: prometheus.example.com" "http://127.0.0.1:8080/" -o /dev/null
sleep 5
curl -s -H "Host: jaeger.example.com" "http://127.0.0.1:8080" -o /dev/null
echo "done"
