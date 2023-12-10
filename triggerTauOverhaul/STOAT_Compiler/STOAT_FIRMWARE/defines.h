#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 18
#define N_INPUT_2_1 14
#define N_INPUT_3_1 1
#define N_INPUT_1_1 18
#define N_INPUT_2_1 14
#define N_INPUT_3_1 1
#define OUT_HEIGHT_3 18
#define OUT_WIDTH_3 14
#define N_FILT_3 4
#define OUT_HEIGHT_3 18
#define OUT_WIDTH_3 14
#define N_FILT_3 4
#define OUT_HEIGHT_3 18
#define OUT_WIDTH_3 14
#define N_FILT_3 4
#define OUT_HEIGHT_6 18
#define OUT_WIDTH_6 14
#define N_FILT_6 4
#define OUT_HEIGHT_6 18
#define OUT_WIDTH_6 14
#define N_FILT_6 4
#define OUT_HEIGHT_6 18
#define OUT_WIDTH_6 14
#define N_FILT_6 4
#define OUT_HEIGHT_9 18
#define OUT_WIDTH_9 14
#define N_FILT_9 1
#define OUT_HEIGHT_9 18
#define OUT_WIDTH_9 14
#define N_FILT_9 1
#define OUT_HEIGHT_9 18
#define OUT_WIDTH_9 14
#define N_FILT_9 1

// hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<16,6> input_t;
typedef ap_fixed<16,6> layer2_t;
typedef ap_fixed<16,6> model_default_t;
typedef ap_fixed<16,6> layer3_t;
typedef ap_fixed<16,1> weight3_t;
typedef ap_fixed<16,6> layer12_t;
typedef struct exponent_scale12_t {ap_uint<1> sign;ap_int<2> weight; } exponent_scale12_t;
typedef ap_fixed<16,6> layer5_t;
typedef ap_fixed<18,8> q_activation_table_t;
typedef ap_fixed<16,6> layer6_t;
typedef ap_fixed<16,1> weight6_t;
typedef ap_fixed<16,6> layer13_t;
typedef struct exponent_scale13_t {ap_uint<1> sign;ap_int<2> weight; } exponent_scale13_t;
typedef ap_fixed<16,6> layer8_t;
typedef ap_fixed<18,8> q_activation_1_table_t;
typedef ap_fixed<16,6> layer9_t;
typedef ap_fixed<16,1> weight9_t;
typedef ap_fixed<16,6> layer14_t;
typedef struct exponent_scale14_t {ap_uint<1> sign;ap_int<2> weight; } exponent_scale14_t;
typedef ap_fixed<16,6> result_t;
typedef ap_fixed<18,8> activation_table_t;

#endif
