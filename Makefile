image:
	docker buildx build --platform linux/arm64,linux/amd64 \
		--tag ghcr.io/curium-rocks/alpine-zulu:local .