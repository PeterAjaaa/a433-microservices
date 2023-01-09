docker build -t peterajaaa/karsajobs .
echo $PASSWORD_DOCKER_HUB | docker login -u peterajaaa --password-stdin
docker push peterajaaa/karsajobs
