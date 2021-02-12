$version=$(select-string -Path Dockerfile -Pattern "ENV CONSUL_VERSION").ToString().split()[-1]
docker tag consul bharatht08/consul-windows-poc:$version
docker push bharatht08/consul-windows-poc:$version
docker tag consul bharatht08/consul-windows-poc:latest
docker push bharatht08/consul-windows-poc:latest
