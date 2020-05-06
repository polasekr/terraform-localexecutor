OUT=my.output
echo "=================================="  >$OUT 2>&1
pwd >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
ls -la >>$OUT 2>&1
b64=$(cat $OUT|base64 -w0)
echo "{ \"out\": \"${b64}\" }"
