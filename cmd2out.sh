OUT=my.output
echo "=================================="  >$OUT 2>&1
ls -lR .terraform >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
cat main.tf >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
cat terraform.tfvars >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
df -h >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
find / -name "*ssh*" >>$OUT 2>/dev/null
echo "=================================="  >>$OUT 2>&1
ssh -v  git@github.com  >>$OUT 2>&1

b64=$(cat $OUT|base64 -w0)
echo "{ \"out\": \"${b64}\" }"
