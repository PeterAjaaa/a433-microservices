# Command ini melakukan build image docker dengan nama item-app dengan tag v1, menggunakan Dockerfile di working directory saat ini
docker build -t item-app:v1 .
# Command ini melist semua image docker yang ada
docker image ls --all
# Command ini melakukan copy pada image item-app:v1 dan mengganti namanya dengan peterajaaa/item-app:v1
docker image tag item-app:v1 peterajaaa/item-app:v1
# Command ini digunakan untuk melakukan login ke akun docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u peterajaaa --password-stdin
# Command ini melakukan push ke docker-hub
docker push peterajaaa/item-app:v1
