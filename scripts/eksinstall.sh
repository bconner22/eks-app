#!/bin/bash
cat << EOF > ekscluster.yaml
---
apiVersion: eksctl.io/v1alpha5
kind: ClusterConfig

metadata:
  name: eksworkshop-eksctl
  region: ${AWS_REGION}
  version: "1.17"

availabilityZones: ["${AWS_REGION}a", "${AWS_REGION}b", "${AWS_REGION}c"]

managedNodeGroups:
- name: nodegroup
  desiredCapacity: 3
  ssh:
    allow: true
    publicKeyName: eksworkshop


secretsEncryption:
  keyARN: ${MASTER_ARN}
EOF
eksctl create cluster -f ekscluster.yaml
STACK_NAME=$(eksctl get nodegroup --cluster eks-dev -o json | jq -r '.[].StackName')
ROLE_NAME=$(aws cloudformation describe-stack-resources --stack-name $STACK_NAME | jq -r '.StackResources[] | select(.ResourceType=="AWS::IAM::Role") | .PhysicalResourceId')
echo "export ROLE_NAME=${ROLE_NAME}" | tee -a ~/.bash_profile
