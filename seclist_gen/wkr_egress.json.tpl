[
      {
        "description": "Allow pods on one worker node to communicate   with pods on other worker nodes.",
        "destination": "||WRKSUBNET||",
        "destination-type": "CIDR_BLOCK",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "6",
        "tcp-options": null,
        "udp-options": null
      },
      {
        "description": null,
        "destination": "0.0.0.0/0",
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
        "description": "Kubernetes worker to Kubernetes API endpoint   communication.",
        "destination": "||WRKSUBNET||",
        "destination-type": "CIDR_BLOCK",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "6",
        "tcp-options": {
          "destination-port-range": {
            "max": 6443,
            "min": 6443
          },
          "source-port-range": null
        },
        "udp-options": null
      },
      {
        "description": "Kubernetes worker to control plane   communication.",
        "destination": "||WRKSUBNET||",
        "destination-type": "CIDR_BLOCK",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "6",
        "tcp-options": {
          "destination-port-range": {
            "max": 12250,
            "min": 12250
          },
          "source-port-range": null
        },
        "udp-options": null
      },
      {
        "description": "(optional) Allow worker nodes to communicate   with internet.",
        "destination": "0.0.0.0/0",
        "destination-type": "CIDR_BLOCK",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "6",
        "tcp-options": null,
        "udp-options": null
      },
      {
        "description": "SQLNet connection to database Subnet",
        "destination": "||DBSUBNET||",
        "destination-type": "CIDR_BLOCK",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "6",
        "tcp-options": {
          "destination-port-range": {
            "max": 1521,
            "min": 1521
          },
          "source-port-range": null
        },
        "udp-options": null
      },
      {
        "description": null,
        "destination": "all-lin-services-in-oracle-services-network",
        "destination-type": "SERVICE_CIDR_BLOCK",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "all",
        "tcp-options": null,
        "udp-options": null
      }
    ]