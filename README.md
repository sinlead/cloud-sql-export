# Google Cloud SQL Export

Automatic exporter from Google Cloud SQL database to Google Cloud Storage bucket

## Dockerfile

This project has a `Dockerfile` and can therefore be run as a container in a VM, or in a Kubernetes cluster.

Environment variables:
 - `PROJECT`: which project to use (GCP project-id).

 - `KEY_FILE`: path to the service account credential file.

 - `INSTANCE_NAME`: Cloud SQL instance name

 - `BUCKET_NAME`: Cloud Storage bucket name

 - `DATABASE_NAME`: Cloud SQL database name

At the time of writing, this image is available on [Docker Hub](https://hub.docker.com/r/sinlead/google-compute-snapshot/)
as `sinlead/cloud-sql-export`.
