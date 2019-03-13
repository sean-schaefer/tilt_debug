docker_build('vandelay/common', '.', dockerfile='common.dockerfile')
docker_build('vandelay/common:stretch', '.', dockerfile='common-stretch.dockerfile')
docker_build('vandelay/app', '.', dockerfile='app.dockerfile')
docker_build('vandelay/app:stretch', '.', dockerfile='app-stretch.dockerfile')

k8s_resource("regular", yaml='app.yaml', image='vandelay/app')
k8s_resource("stretch", yaml='app-stretch.yaml', image='vandelay/app:stretch')
