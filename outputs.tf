output "stdout" {
  value       = <<EOF
 
${file("/tmp/pwd.out")}
${file("/tmp/ls.out")}
data.external.ls.result
EOF
}
