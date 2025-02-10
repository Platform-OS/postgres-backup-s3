set -e

if [ -z "$S3_BUCKET" ]; then
  echo "You need to set the S3_BUCKET environment variable."
  exit 1
fi

if [ -z "$POSTGRES_DATABASE" ]; then
  echo "You need to set the POSTGRES_DATABASE environment variable."
  exit 1
fi
if [ -z "$DATABASE_URL" ]; then
  echo "DATABASE_URL not set. Building from POSTGRES_[USER|PASSWORD|HOST|DATABASE]"
  set -u
  export DATABASE_URL="postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}/${POSTGRES_DATABASE}"
fi

export AWS_DEFAULT_REGION=$S3_REGION
