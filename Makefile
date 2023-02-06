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

run-lazy-0:
	./build/exec/lazy-idris2 --cg lazy src/Hello.idr -o hello

run-lazy-1:
	./build/exec/lazy-idris2 \
	-p prelude \
	-o hello \
	src/Hello.idr

run-lazy-2:
	IDRIS2_PREFIX=/usr/local/Cellar/idris2/0.6.0/libexec \
	IDRIS2_PATH=/usr/local/Cellar/idris2/0.6.0/libexec/idris2-0.6.0/prelude-0.6.0 \
	./build/exec/lazy-idris2 \
	-p prelude \
	-o hello \
	src/Hello.idr
