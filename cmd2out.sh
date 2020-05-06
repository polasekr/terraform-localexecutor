OUT=my.output
echo "=================================="  >$OUT 2>&1
env >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
strace -f terraform --version  >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
#ls -la /home/ubunut/.ssh  >>$OUT 2>&1
echo "=================================="  >>$OUT 2>&1
#ssh -v  git@github.com  >>$OUT 2>&1

b64=$(cat $OUT|base64 -w0)
echo "{ \"out\": \"${b64}\" }"
