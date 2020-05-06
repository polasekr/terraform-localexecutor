output "stdout" {
  value       = <<EOF
 
${file("${path.module}/pwd.out")}
${file("${path.module}/ls.out")}
data.external.ls.result
EOF
}
