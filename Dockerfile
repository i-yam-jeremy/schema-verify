FROM node:18.6.0-bullseye-slim

RUN apt-get update -y && \
    apt-get install -y curl git build-essential pkg-config libssl-dev

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > install-rust.sh && \
    sh install-rust.sh -y && \
    rm install-rust.sh

# RUN ls
# RUN curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh 
# RUN cargo install cargo-generate
# RUN npm install npm@latest -g