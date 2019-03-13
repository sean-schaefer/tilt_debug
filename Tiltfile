docker_build('vandelay/common', '.', dockerfile='common.dockerfile')
docker_build('vandelay/common:stretch', '.', dockerfile='common-stretch.dockerfile')
docker_build('vandelay/app', '.', dockerfile='app.dockerfile')
docker_build('vandelay/app:stretch', '.', dockerfile='app-stretch.dockerfile')

k8s_yaml('app.yaml')
k8s_yaml('app-stretch.yaml')

k8s_resource("regular", yaml='app.yaml')
k8s_resource("stretch", yaml='app-stretch.yaml')
