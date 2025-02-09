if [ -z "$S3_BUCKET" ]; then
  echo "You need to set the S3_BUCKET environment variable."
  exit 1
fi

if [ -z "$POSTGRES_DATABASE" ]; then
  echo "You need to set the POSTGRES_DATABASE environment variable."
  exit 1
fi
if [ -z "$DATABASE_URL" ]; then
  echo "You need to set the DATABASE_URL environment variable."
  exit 1
fi

export AWS_DEFAULT_REGION=$S3_REGION
