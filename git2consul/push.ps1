$version=$(select-string -Path Dockerfile -Pattern "ENV CONSUL_VERSION").ToString().split()[-1]
docker tag git2consul bharatht08/ccw-git2consul-windows:$version
docker push bharatht08/ccw-git2consul-windows:$version
docker tag git2consul bharatht08/ccw-git2consul-windows:latest
docker push bharatht08/ccw-git2consul-windows:latest
