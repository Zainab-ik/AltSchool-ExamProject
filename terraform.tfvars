label = "altschool-sock-shop"
k8s_version = "1.25.4-do.0"
# region = "lon1"
pools = [
  {
    name = "worker-pool"
    size : "s-2vcpu-2gb"
    count : 3
  }
]
