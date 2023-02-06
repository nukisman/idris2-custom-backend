clean:
	rm -rf build

build-lazy:
	time idris2 \
		--verbose \
		--cg chez \
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
		-o hello \
		src/Hello.idr
