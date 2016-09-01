NAME = willejs/oauth2_proxy
VERSION = 2.1

all: build

build:
	docker build -t $(NAME):$(VERSION) .

test:
	docker run $(NAME):$(VERSION) --version

tag_latest:
	docker tag $(NAME):$(VERSION) $(NAME):latest
