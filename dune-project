(lang dune 3.22)
(using rocq 0.12)
(generate_opam_files)
(name rocq_capla_extractor)

(package
 (name rocq_capla_extractor)
 (synopsis "Capla Extractor Rocq Plugin")
 (depends rocq-core
  dune
 ))