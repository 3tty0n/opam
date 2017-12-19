FROM ocaml/opam:ubuntu

WORKDIR /tmp

RUN opam init && \
    opam install -y \
    ounit \
    core && \
    eval $(opam config env)
