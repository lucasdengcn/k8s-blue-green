
for i in $(seq 1 10); 
do 
    tag=$(( $RANDOM % 3 ))
    headerValue="X-Canary-Tag: v${tag}"
    echo $headerValue
    curl -s -H "${headerValue}" http://echo.localdev.me:3080 | grep "Hostname"; 
done
