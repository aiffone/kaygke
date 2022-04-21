resource "google_container_cluster" "prod" {
 enable_autopilot            = true   
 location                    = var.region
 name                        = var.gke_prod_name
 network                     = google_compute_network.vpc_network.id
 subnetwork                  = google_compute_subnetwork.custom_subnet.id
 project                     = var.project
 ip_allocation_policy {
          cluster_secondary_range_name  = "prod-pods-range"
          services_secondary_range_name = "prod-svc-range"
        }
}

resource "google_container_cluster" "staging" {
 enable_autopilot            = true   
 location                    = var.region
 name                        = var.gke_staging_name
 network                     = google_compute_network.vpc_network.id
 subnetwork                  = google_compute_subnetwork.custom_subnet.id
 project                     = var.project
 ip_allocation_policy {
          cluster_secondary_range_name  = "stg-pods-range"
          services_secondary_range_name = "stg-svc-range"
        }
}