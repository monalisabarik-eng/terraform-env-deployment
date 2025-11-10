prefix              = "staging"
location            = "eastus"
resource_group_name = "rg-staging"

address_space = ["10.1.0.0/16"]

subnets = {
  app = "10.1.1.0/24"
  # db  = "10.1.2.0/24"
}

vm_size             = "Standard_B2ms"
admin_username      = "azureuser"
ssh_public_key     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDeLyFSc8eHgU8h2DiBDgZpIsFy63Hbcl1vyNSc/ZF2kqpuHd52eYZNEsfNC9eS9c2o5i4H/VzCjSI8i0HihPFY+5qQizltfSSh7ORetkp4ZcOEcpVsKAd8vPb+BrLMIwWH/Ow3ApuD0tLuWWk2nIzEthhnzgklLsKyyA1DA9XSipFPs7MeknsDyVcYplldzIB9HeoWONAvVSOag/xpvqd2WklgVLJYB4Pn6XUQG1UsmYhUSq3WOyb+TeYOocjzdb4/pZcR4+vYVQe/U1N2+NdNTzt+gRkpuoPzbu0Sj+bTk0zgOnpyFPxoftwgE2RlX+l93RE+10Eo4cm0RfuY6fX2zgrhzuLYof/CZgb5arZT0JYCaVxr8wlVJmWFwVUqA56Et/e1cfIHj3sR49i+3lLN10P/4wK3XckegDNG+d2RVoBubWYi9vzPWWzHo4ujI6EwG95iQwdNchpVA8L3luGLJ/anB48hWbeYvIzOdTVag0ar7oZHCGdSx299wvAg/qDQWz56GrZ5Ju7YR2MZ35hRgEVKvhxmTnvcT72ngh7WXL91ypX4sZ7fW38sWre1P94HQP4gcOQjiQ/uGl+ODSU4cjH6qtLcy4oU+h7ozY5lZBqwUwUPKZDMH4750b8Cokh/mgnil/2yyXSBlgQupVoPqgg8zaSeAL5G25i5SvJScw== monalisa.barik@nttdata.com"
