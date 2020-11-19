# Waypoint Go Example

## What is it

This is mostly using the waypoint.hcl to deploy on Kubernetes. 

## Manually

As long as you have the correct `waypoint context` and a kubeconfig that points to a default namespace that you can deploy to, it's simply 

`waypoint init` and `waypoint up`

Then you can check it out at `<release-url>` where it shows a simple "Hello World"

### Magic

By leveraging a GitHub Actions Workflow (located at [waypoint.yaml](.github/workflows/waypoint.yaml)), a pull push to this repo will run and deploy a workspace based on your branch name. It will only perform a release when merged to main, however!

## WIP

Lots of corners to round, but it should function.