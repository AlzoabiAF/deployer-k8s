resource "freeipa_dns_record" "record_k8s_control_node_1" {
  zone_name = "alzoabi.lab"
  name      = "control-node-1"
  type      = "A"
  records   = ["10.0.0.21"]
  ttl       = 3600
}

resource "freeipa_dns_record" "record_k8s_control_node_2" {
  zone_name = "alzoabi.lab"
  name      = "control-node-2"
  type      = "A"
  records   = ["10.0.0.22"]
  ttl       = 3600
}

resource "freeipa_dns_record" "record_k8s_control_node_3" {
  zone_name = "alzoabi.lab"
  name      = "control-node-3"
  type      = "A"
  records   = ["10.0.0.23"]
  ttl       = 3600
}

resource "freeipa_dns_record" "record_k8s_worker_node_1" {
  zone_name = "alzoabi.lab"
  name      = "worker-node-1"
  type      = "A"
  records   = ["10.0.0.31"]
  ttl       = 3600
}

resource "freeipa_dns_record" "record_k8s_worker_node_2" {
  zone_name = "alzoabi.lab"
  name      = "worker-node-2"
  type      = "A"
  records   = ["10.0.0.32"]
  ttl       = 3600
}

resource "freeipa_dns_record" "record_k8s_gw_node" {
  zone_name = "alzoabi.lab"
  name      = "gw-1"
  type      = "A"
  records   = ["10.0.0.1"]
  ttl       = 3600
}
