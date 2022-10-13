[
      {
        "description": "Kubernetes worker to Kubernetes API endpoint   communication.",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "6",
        "source": "||WRKSUBNET||",
        "source-type": "CIDR_BLOCK",
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
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "6",
        "source": "||WRKSUBNET||",
        "source-type": "CIDR_BLOCK",
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