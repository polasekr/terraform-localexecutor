output "stdout" {
  value       = <<EOF
 
${ tostring(data.external.cmd.result) }
EOF
}
