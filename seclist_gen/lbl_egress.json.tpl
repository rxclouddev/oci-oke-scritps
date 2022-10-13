[
      {
        "description": "Allow traffic to worker nodes.",
        "destination": "||WRKSUBNET||",
        "destination-type": "CIDR_BLOCK",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "6",
        "tcp-options": {
          "destination-port-range": {
            "max": 32767,
            "min": 30000
          },
          "source-port-range": null
        },
        "udp-options": null
      }
    ]