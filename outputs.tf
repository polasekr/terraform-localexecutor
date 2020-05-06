output "stdout" {
  value       = <<EOF
 
${data.external.cmd.result}
EOF
}
