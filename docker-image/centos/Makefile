build:
	rm -f rootfs.tar.gz
	tar -zcf rootfs.tar.gz --exclude .git --exclude docker-image -C ../../ .
	docker image build -t dev-box:centos .

run:
	docker container rm -f dev-box-centos 2>/dev/null || true
	docker container run -d -it \
		--name dev-box-centos \
		dev-box:centos \
		bash

exec:
	docker container exec -it dev-box-centos bash
