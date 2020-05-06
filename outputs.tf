output "stdout" {
  value       = <<EOF
 
${file("pwd.out")}
${file("ls.out")}
data.external.ls.result
EOF
}
