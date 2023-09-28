FROM cimg/rust:1.72.1

COPY ./install-dependencies.sh .
RUN sudo ./install-dependencies.sh
RUN rm ./install-dependencies.sh

RUN cargo install cargo-c@0.9.15+cargo-0.67 
RUN cargo install cargo-watch
