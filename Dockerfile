FROM erlang:21 as builder

WORKDIR /buildroot

# Build
COPY spellerl spellerl

WORKDIR spellerl

RUN rebar3 compile && rebar3 escriptize

RUN mkdir -p /artifacts/bin && \
    cp /buildroot/spellerl/_build/default/bin/spellerl /artifacts/bin/spellerl

# Build runner
FROM erlang:21-alpine

WORKDIR /root/

COPY --from=builder /artifacts/bin/spellerl .

ENTRYPOINT ["./spellerl"]
