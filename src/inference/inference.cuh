#pragma once

#include <cuda_runtime.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "llama3/llama3.cuh"

void inference(Llama3 *llama3_model, Tensor *X, int *tokens, int *h_tokens);

__global__ void tokens_to_embeddings(__half *embed_tokens, __half *fp16_tensor, int *tokens);