all:
	make -C SRC
clean:
	make -C SRC clean

docker-build:
	docker build -t lkh .

docker-run:
	docker run -v $(PWD):/app lkh pr2392.par
