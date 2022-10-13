[
      {
        "description": "For automatic backup",
        "destination": "oci-lin-objectstorage",
        "destination-type": "SERVICE_CIDR_BLOCK",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "6",
        "tcp-options": null,
        "udp-options": null
      },
      {
        "description": "Outbound database connections",
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
        "protocol": "6",
        "tcp-options": null,
        "udp-options": null
      }
    ]