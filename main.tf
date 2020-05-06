resource "null_resource" "pwd" {

  provisioner "local-exec" {
    command = "pwd &> pwd.out ; echo \"RESULT: $?\" >> pwd.out"
  }
}

resource "null_resource" "ls" {

  provisioner "local-exec" {
    command = "ls -la &> ls.out ; echo \"RESULT: $?\" >> ls.out"
  }
}


