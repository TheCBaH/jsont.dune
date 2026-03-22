
default:
	opam exec dune build

test:
	opam exec dune runtest

format:
	opam exec dune fmt

clean:
	opam exec dune $@

.PHONY: default clean format test
