clean:
	rm -rf build

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

run-lazy-0:
	./build/exec/lazy-idris2 --cg lazy src/Hello.idr -o hello
