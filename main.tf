#resource "null_resource" "pwd" {
#
#  provisioner "local-exec" {
#    command = "pwd > pwd.out 2>&1; echo \"RESULT: $?\" >> pwd.out"
#  }
#}
#
#resource "null_resource" "ls" {
#
#  provisioner "local-exec" {
#    command = "ls -la > ls.out 2>&1; echo \"RESULT: $?\" >> ls.out"
#  }
#}

resource "null_resource" "pwd" {
  provisioner "local-exec" {
    command = "pwd  > pwd.out"
  }
}


resource "null_resource" "ls" {
  provisioner "local-exec" {
    command = "ls -la  > ls.out"
  }
}


