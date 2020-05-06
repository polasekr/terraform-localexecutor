resource "null_resource" "pwd" {

  provisioner "local-exec" {
    command = "pwd &> /tmp/pwd.out ; echo \"RESULT: $?\" >> /tmp/pwd.out"
  }
}

resource "null_resource" "ls" {

  provisioner "local-exec" {
    command = "ls -la &> /tmp/ls.out ; echo \"RESULT: $?\" >> /tmp/ls.out"
  }
}


