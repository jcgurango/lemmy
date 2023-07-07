docker build -t jcgurango/lemmy:latest --build-arg="RUST_RELEASE_MODE=release" -f docker/Dockerfile . && \
docker push jcgurango/lemmy
