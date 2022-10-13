[
      {
        "description": "Path Discovery.",
        "destination": "||WRKSUBNET||",
        "destination-type": "CIDR_BLOCK",
        "icmp-options": {
          "code": 4,
          "type": 3
        },
        "is-stateless": false,
        "protocol": "1",
        "tcp-options": null,
        "udp-options": null
      },
      {
        "description": "All traffic to worker nodes.",
        "destination": "||WRKSUBNET||",
        "destination-type": "CIDR_BLOCK",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "6",
        "tcp-options": null,
        "udp-options": null
      },
      {
        "description": "Allow Kubernetes control plane to communicate with OKE.",
        "destination": "all-lin-services-in-oracle-services-network",
        "destination-type": "SERVICE_CIDR_BLOCK",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "6",
        "tcp-options": {
          "destination-port-range": {
            "max": 443,
            "min": 443
          },
          "source-port-range": null
        },
        "udp-options": null
      },
      {
        "description": "All Outbound Traffic",
        "destination": "0.0.0.0/0",
        "destination-type": "CIDR_BLOCK",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "all",
        "tcp-options": null,
        "udp-options": null
      }
    ]