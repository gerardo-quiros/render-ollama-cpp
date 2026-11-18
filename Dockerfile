FROM ghcr.io/ggml-org/llama.cpp:server

EXPOSE 10000

ENTRYPOINT ["/app/llama-server"]

CMD ["--hf-repo", "tensorblock/SmolLM2-360M-Instruct-GGUF", "--hf-file", "SmolLM2-360M-Instruct-Q2_K.gguf", "--fit", "off", "--host", "0.0.0.0", "--port", "10000", "--ctx-size", "512", "--parallel", "1", "--threads", "1"]