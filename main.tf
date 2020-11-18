resource "helm_release" "test" {
  name       = "test-jenkins"
  repository = "https://charts.jenkins.io"
  chart      = "jenkins"

  set {
    name  = "master.serviceType"
    value = "LoadBalancer"
  }
}

