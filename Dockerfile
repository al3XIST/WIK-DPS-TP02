FROM rust:1.73 AS build 
WORKDIR /WIK-DPS-TP02
COPY ./RUST ./
RUN cargo build --release
RUN cp ./target/release/wik_dps_tp01 /tmp/server

FROM debian:latest AS final
WORKDIR /tmp/
COPY --from=build /tmp/server /tmp/
RUN adduser --disabled-password --gecos '' webservice
USER webservice
CMD ["/tmp/server"]
