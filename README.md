# Deployment with Kubernetes (Sock shop and A Voting Application )

This repository contains both kubernetes file for the sockshop applicaiton (sock-shop-k8s.yaml) and A voting application (app-voting-k8s.yaml)

To deploy this application, follow the following steps

- Create a Linux Ubuntu server
- Clone this repository
- Create a Digital Ocean account have a get a authentication token
- run the setup.sh script
- it'll prompt you for an authentication token, input it
- allow it to run

# How the Setup.sh works

The setup starts by installing tools like terraform, kubectl and helm

The setup uses terraform (set up to work with Digital Ocean cloud provider) to create a kubernetes cluster

Once the cluster is created it setup a kube-config to connect your server with the clusters and enable kubectl commands.

kubectl creates the pods and services and helm installs prometheus for logging and monitoring and installs ingress controller (nginx ingress controller) for external accesss to the cluster.
