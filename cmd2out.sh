OUT=my.output
echo "=================================="  >$OUT 2>&1
pwd >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
ls -la >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
cat zzz_backend_override.tf.json >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
df -h >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
find / -name "*ssh*" >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
git clone git@github.com:stjude/terraform-modules.git  >>$OUT 2>&1

b64=$(cat $OUT|base64 -w0)
echo "{ \"out\": \"${b64}\" }"
