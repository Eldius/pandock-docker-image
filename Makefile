
IMAGE_NAME=eldius/pandoc-alpine

build:
	docker build -t "$(IMAGE_NAME):$(shell git rev-parse --short HEAD)" .

push: build
	docker tag "$(IMAGE_NAME):$(shell git rev-parse --short HEAD)" "$(IMAGE_NAME):latest"
	docker push "$(IMAGE_NAME):$(shell git rev-parse --short HEAD)"
	docker push "$(IMAGE_NAME):latest"
