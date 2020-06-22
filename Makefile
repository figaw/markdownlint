# build container
.PHONY: build
build :
	docker build -f ruby.Dockerfile \
		-t figaw/markdownlint:latest \
		-t figaw/markdownlint:ruby2.7.1-alpine3.12 .

.PHONY: lint
lint :
	docker run -it \
		-v "$$PWD":/usr/src/app \
		figaw/markdownlint:latest .

.PHONY: lintdir
lintdir :
	docker run -it \
		-v "$$PWD":/usr/src/app \
		figaw/markdownlint:latest $(dir)

.PHONY: test
test :
	./tests/test.sh
