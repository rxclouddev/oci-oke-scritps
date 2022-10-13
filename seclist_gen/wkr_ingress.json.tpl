[
      {
        "description": "Allow pods on one worker node to communicate   with pods on other worker nodes.",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "6",
        "source": "||WRKSUBNET||",
        "source-type": "CIDR_BLOCK",
        "tcp-options": null,
        "udp-options": null
      },
      {
        "description": "Allow Kubernetes control plane to   communicate with worker nodes.",
        "icmp-options": null,
        "is-stateless": false,
        "protocol": "6",
        "source": "||APISUBNET||",
        "source-type": "CIDR_BLOCK",
        "tcp-options": null,
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
        "source": "0.0.0.0/0",
        "source-type": "CIDR_BLOCK",
        "tcp-options": null,
        "udp-options": null
      }
    ]