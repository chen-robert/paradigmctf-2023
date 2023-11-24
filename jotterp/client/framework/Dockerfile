FROM rust:1.70.0

RUN apt-get update && apt-get install -qy libudev-dev

WORKDIR /app
COPY Cargo.toml Cargo.lock ./
COPY src ./src

COPY chall ./chall

RUN sh -c "$(curl -sSfL https://release.solana.com/v1.17.3/install)"
ENV PATH="/root/.local/share/solana/install/active_release/bin:${PATH}"
RUN cd chall && cargo build-sbf

RUN cargo build --release


CMD [ "./target/release/framework" ]
