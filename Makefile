clean:
	rm -rf build

build-hello:
	time idris2 \
    		--verbose \
    		--cg node \
    		-o hello.js \
    		src/Hello.idr

run-hello:
	node build/exec/hello.js

build-lazy:
	time idris2 \
		--verbose \
		--cg node \
		--directive pretty \
		-o lazy-idris2 \
		-p prelude \
		-p base \
		-p contrib \
		-p idris2 \
		-p network \
		src/Lazy.idr

run-lazy:
	IDRIS2_PREFIX=/usr/local/Cellar/idris2/0.6.0/libexec \
	./build/exec/lazy-idris2 \
		-o hello.js \
		src/Hello.idr

