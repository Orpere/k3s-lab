#!/usr/bin/env bash

  string=$(hostname)
  export mynodetoken='oNRLpfY1Ik6f83R9GGpXExmCRd1ehAcg'
  export myserver='192.168.121.2'

    if [[ $string == *"MASTER"* ]]; then
      echo "Installing $string"
      curl -sfL https://get.k3s.io | K3S_TOKEN=$mynodetoken sh -
    else
      echo "this is a WORKER"
      curl -sfL https://get.k3s.io | K3S_URL=https://$myserver:6443 K3S_TOKEN=$mynodetoken sh -
    fi
