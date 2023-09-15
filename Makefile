
IMAGE_NAME=eldius/pandoc-alpine

build:
	# docker build -t "$(IMAGE_NAME):$(shell git rev-parse --short HEAD)" .
	docker buildx build \
		-t "$(IMAGE_NAME):$(shell git rev-parse --short HEAD)" \
		-t "$(IMAGE_NAME):latest" \
			.




push:
	docker buildx build \
		-t "$(IMAGE_NAME):$(shell git rev-parse --short HEAD)" \
		-t "$(IMAGE_NAME):latest" \
		--push \
			.
