[
      {
        "description": "Oracle Inbound Connection from worker",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "6",
        "source": "||WRKSUBNET||",
        "source-type": "CIDR_BLOCK",
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
        "description": "Oracle inbound from other machines on   database net",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "6",
        "source": "||DBSUBNET||",
        "source-type": "CIDR_BLOCK",
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
        "description": "Path Discovery.",
        "icmp-options": {
          "code": 4,
          "type": 3
        },
        "is-stateless": false,
        "protocol": "1",
        "source": "||WRKSUBNET||",
        "source-type": "CIDR_BLOCK",
        "tcp-options": null,
        "udp-options": null
      }
    ]