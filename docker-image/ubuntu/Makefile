build:
	rm -f rootfs.tar.gz
	tar -zcf rootfs.tar.gz --exclude .git --exclude docker-image -C ../../ .
	docker image build -t dev-box:ubuntu .

run:
	docker container rm -f dev-box-ubuntu 2>/dev/null || true
	docker container run -d -it \
		--name dev-box-ubuntu \
		dev-box:ubuntu \
		bash

exec:
	docker container exec -it dev-box-ubuntu bash
