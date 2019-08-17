#
ImageName := mooxe/purescript

build:
	docker build -t ${ImageName} .

rebuild:
	docker build --no-cache -t ${ImageName} .

in:
	docker run \
		--name mooxe_purescript \
			--rm \
			-ti \
			${ImageName} \
			/bin/bash

publish:
	docker push ${ImageName}
