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
			-v $$(pwd):/root/purescript \
			${ImageName} \
				/bin/bash

publish:
	docker push ${ImageName}
