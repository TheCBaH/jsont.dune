(lang dune 3.17)
(name jsont)

(generate_opam_files true)

(license ISC)
(maintainers "Daniel Bünzli <daniel.buenzl i@erratique.ch>")
(authors "The jsont programmers")
(source (github dbuenzli/jsont))
(homepage "https://erratique.ch/software/jsont")
(documentation "https://erratique.ch/software/jsont/doc")
(bug_reports "https://github.com/dbuenzli/jsont/issues")

(package
 (name jsont)
 (synopsis "Declarative JSON data manipulation for OCaml")
 (description
  "Jsont is an OCaml library for declarative JSON data manipulation. It\nprovides:\n\n- Combinators for describing JSON data using the OCaml values of your\n  choice. The descriptions can be used by generic functions to\n  decode, encode, query and update JSON data without having to\n  construct a generic JSON representation.\n- A JSON codec with optional text location tracking and layout\n  preservation. The codec is compatible with effect-based concurrency.\n\nThe descriptions are independent from the codec and can be used by\nthird-party processors or codecs.")
 (depends
  (ocaml (>= 4.14.0))
  (bytesrw :with-test)
  (b0 (and :with-test :dev))
  (cmdliner (and :with-test (>= 1.3.0))))
 (depopts bytesrw brr cmdliner)
 (conflicts
  (cmdliner (< 1.3.0))
  (brr (< 0.0.6)))
 (tags (json codec org:erratique)))
