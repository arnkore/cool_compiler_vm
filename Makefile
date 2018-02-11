all:
	docker build --rm -t cool_compiler_vm .
	docker run -it -d --name=cool_compiler_vm cool_compiler_vm /bin/bash
	docker exec -it cool_compiler_vm /bin/bash
