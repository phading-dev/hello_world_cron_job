# GCP auth
gcloud auth application-default login

# Create service account
gcloud iam service-accounts create hello-world-cron-builder

# Grant cloudbuild and container repo and database permissions to the service account
gcloud projects add-iam-policy-binding phading-dev --member="serviceAccount:hello-world-cron-builder@phading-dev.iam.gserviceaccount.com" --role='roles/cloudbuild.builds.builder' --condition=None
gcloud projects add-iam-policy-binding phading-dev --member="serviceAccount:hello-world-cron-builder@phading-dev.iam.gserviceaccount.com" --role='roles/container.developer' --condition=None
