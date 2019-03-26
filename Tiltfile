docker_build('vandelay/base', 'common', dockerfile='common/docker/base.dockerfile')
docker_build('vandelay/base:stretch', 'common', dockerfile='common/docker/base-stretch.dockerfile')

docker_build('vandelay/common', 'common', dockerfile='common/docker/common.dockerfile')
docker_build('vandelay/common:stretch', 'common', build_args={ 'BASE_IMAGE': 'vandelay/base:stretch' }, dockerfile='common/docker/common.dockerfile')

docker_build('vandelay/app', 'app', dockerfile='app/app.dockerfile')
docker_build('vandelay/app:stretch', 'app-stretch', dockerfile='app-stretch/app-stretch.dockerfile')

k8s_resource("regular", yaml='app.yaml', image='vandelay/app')
k8s_resource("stretch", yaml='app-stretch.yaml', image='vandelay/app:stretch')
