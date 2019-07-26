if [ -z $CI_REGISTRY_USER ] || [ -z $CI_REGISTRY_PASSWORD ] || [ -z $CI_REGISTRY ]; then
  echo 'CI credentials missing or incomplete.' >&2
  exit 1
fi

docker login -u $CI_REGISTRY_USER -p $CI_REGISTRY_PASSWORD $CI_REGISTRY
