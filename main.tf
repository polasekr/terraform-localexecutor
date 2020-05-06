data "external" "ls" {
  program = ["sh", "-c", "ls -la"]

}

data "external" "pwd" {
  program = ["sh", "-c", "pwd"]

}
