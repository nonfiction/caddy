tag := v1
update: build push
build: ; docker buildx build -t nonfiction/caddy:$(tag) .
push:	 ; docker push nonfiction/caddy:$(tag)
shell: ; docker run -it --rm nonfiction/caddy:$(tag) sh
