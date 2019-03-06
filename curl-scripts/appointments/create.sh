#!/bin/bash

curl "http://localhost:4741/appointments" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "appointment": {
      "patient_id": "'"${PATIENT}"'",
      "doctor_id": "'"${DOCTOR}"'",
      "date": "'"${DATE}"'"
    }
  }'

echo
