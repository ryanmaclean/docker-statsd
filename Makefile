build/container: Dockerfile bin/build
	docker build --no-cache -t statsd .
	touch build/container

release:
	docker tag statsd ejholmes/statsd
	docker push ejholmes/statsd

.PHONY: clean
clean:
	rm -rf build
