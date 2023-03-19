do_token = "dop_v1_c437ab77dfb1d942b70eb84c4f911fb183e1c27f6a63910836fd46a9a434bb28"
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
