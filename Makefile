IMAGE_NAME=test-container
IMAGE_VERSION=v0.1

build:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .

run:
	docker run -it --name $(IMAGE_NAME) -d $(IMAGE_NAME):$(IMAGE_VERSION)

exec:
	docker exec -it $(IMAGE_NAME) bash
