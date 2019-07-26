if [ -z $CI_REGISTRY_USER ] || [ -z $CI_REGISTRY_PASSWORD ] || [ -z $CI_REGISTRY ]; then
  echo 'CI credentials missing or incomplete.' >&2
  exit 1
fi

echo $CI_REGISTRY
echo $CI_PROJECT_PATH_SLUG
echo $IMAGE
echo $CI_COMMIT_REF_SLUG

echo $CI_REGISTRY/$CI_PROJECT_PATH_SLUG$IMAGE:$CI_COMMIT_REF_SLUG

docker login -u $CI_REGISTRY_USER -p $CI_REGISTRY_PASSWORD $CI_REGISTRY
