resource "helm_release" "test" {
  name       = "test-jenkins"
  repository = "https://charts.jenkins.io"
  chart      = "jenkins"

  values = [
    "${file("values.yaml")}"
  ]
}
