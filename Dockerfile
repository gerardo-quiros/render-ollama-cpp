FROM ghcr.io/ggml-org/llama.cpp:server

EXPOSE 10000

ENTRYPOINT ["/app/llama-server"]

CMD ["-hf", "tensorblock/SmolLM2-360M-Instruct-GGUF:Q3_K_M", "--host", "0.0.0.0", "--port", "10000", "--ctx-size", "512", "--parallel", "1", "--threads", "1"]