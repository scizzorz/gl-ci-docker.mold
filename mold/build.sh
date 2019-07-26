if [ -z $CI_COMMIT_REF_SLUG ] || [ -z $CI_REGISTRY_IMAGE ]; then
  echo 'Missing image name or commit ref' >&2
  exit 1
fi

docker build \
  $DOCKER_ARGS \
  -f ${DOCKERFILE:-Dockerfile} \
  -t "$CI_REGISTRY_IMAGE$IMAGE:$CI_COMMIT_REF_SLUG" \
  .
