cat <<EOF
{ "out":
  "$((ls -ls; git status)|base64 -w0)"
}
EOF
