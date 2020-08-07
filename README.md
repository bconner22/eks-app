# EKS cluster launch with application exposing a  REST endpoint

## What does this do?  

1. Install all tools needed to interact with your EKS cluster
2. Create your EKS cluster

## Prerequisites(TODO Tighten up the IAM so admin isn't required)

Either:

A Cloud9 instance with an admin IAM role attached

OR

A Linux machine with an admin IAM role attached

OR 

Your local machine with admin AWS credentials

## How to use this repo

`.scripts/oneclick.sh <what you'd like to name your cluster>`

## Cleanup

To delete the EKS cluster:
`./scripts/eks_cleanup.sh <name of the cluster to delete>`

