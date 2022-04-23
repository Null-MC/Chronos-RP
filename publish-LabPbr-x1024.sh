ROOT="$(dirname "$(readlink -fm "$0")")"
docker pull null511/pixelgraph:latest
docker run --name pixelgraph --rm --mount src="$ROOT",target=/content,type=bind null511/pixelgraph:latest \
    publish -p "//content/src/LabPbr-1024x.pack.yml" -z "//content/Chronos-LabPbr-1024x.zip"
