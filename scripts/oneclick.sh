#!/bin/bash
export CLUSTER_NAME=$1
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source ${__dir}/prereqs.sh
source ${__dir}/eksinstall.sh