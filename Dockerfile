FROM rust:1.73
WORKDIR /WIK-DPS-TP02
COPY ./RUST .
RUN adduser --disabled-password --gecos '' webservice 
RUN chmod -R 777 ./
USER webservice
RUN cargo build --release
CMD ["./target/release/wik_dps_tp01"]

