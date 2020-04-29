FROM rust:1.40.0 as build

RUN cargo install sccache

FROM debian:buster-slim

COPY --from=build /usr/local/cargo/bin/sccache /usr/bin
