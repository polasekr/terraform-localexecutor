#resource "null_resource" "pwd" {
#
#  provisioner "local-exec" {
#    command = "pwd > pwd.out 2>&1; echo \"RESULT: $?\" >> pwd.out"
#  }
#}

#resource "null_resource" "ls" {
#
#  provisioner "local-exec" {
#    command = "ls -la > ls.out 2>&1; echo \"RESULT: $?\" >> ls.out"
#  }
#}

#resource "null_resource" "pwd" {
#  provisioner "local-exec" {
#    command = "pwd"
#  }
#}
#
#
#resource "null_resource" "ls" {
#  provisioner "local-exec" {
#    command = "ls -la"
#  }
#}


#data "external" "pwd" {
#  program = ["sh", "-c", "pwd"]
#
#}
#
#data "external" "ls" {
#  program = ["sh", "-c", "ls -la"]
#
#}


#resource "local_file" "foo" {
#    content     = "${file("${path.module}/pwd.out")}"
#    filename = "foo.bar"
#
#    depends_on = [ "null_resource.pwd" ]
#}

data "external" "cmd" {
  program = ["sh", "${path.module}/cmd2out.sh"]

}

resource "local_file" "foo" {
    content     = data.external.cmd.result
    filename = "foo.bar"
}
