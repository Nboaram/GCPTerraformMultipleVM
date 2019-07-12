resource "google_compute_firewall" "default" {
    name = "${var.name4}-firewall"
    network = "${var.network}"
    target_tags = ["${var.name4}"]
    source_ranges = ["0.0.0.0/0"]

    allow {
        protocol = "icmp"
    }

    allow {
        protocol = "tcp"
        ports = "${var.allowed_ports}"
    }
}