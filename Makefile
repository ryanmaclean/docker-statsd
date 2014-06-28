build/container: Dockerfile bin/build
	docker build --no-cache -t statsd .
	touch build/container

.PHONY: clean
clean:
	rm -rf build
