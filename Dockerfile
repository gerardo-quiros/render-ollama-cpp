FROM ghcr.io/ggml-org/llama.cpp:server

EXPOSE 10000

ENTRYPOINT ["/app/llama-server"]

CMD ["-hf", "bartowski/SmolLM2-135M-Instruct-GGUF:Q4_K_M", "--host", "0.0.0.0", "--port", "10000", "--ctx-size", "512", "--parallel", "1", "--threads", "1"]