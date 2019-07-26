if [ -z $CI_COMMIT_REF_NAME ] || [ -z $DOCKER_IMAGE ]; then
  echo 'Missing image name or commit ref name' >&2
  exit 1
fi

docker push $DOCKER_IMAGE:$CI_COMMIT_REF_NAME
