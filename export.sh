#!/bin/bash
service_account_auth() {
    if [ -n "${KEY_FILE}" ]; then
        gcloud auth activate-service-account --key-file="$KEY_FILE"
    fi
}

set_project() {
    if [ -n "${PROJECT}" ]; then
        gcloud config set project "$PROJECT"
    fi
}

run() {
    gcloud sql export sql ${INSTANCE_NAME} gs://${BUCKET_NAME}/$(date +%Y-%m-%d).gz --async --database=${DATABASE_NAME}
}
service_account_auth
set_project
run
