#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    input_t input_1[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1],
    result_t layer11_out[OUT_HEIGHT_9*OUT_WIDTH_9*N_FILT_9]
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=input_1 complete dim=0
    #pragma HLS ARRAY_PARTITION variable=layer11_out complete dim=0
    #pragma HLS INTERFACE ap_vld port=input_1,layer11_out 
    #pragma HLS DATAFLOW 

#ifdef LOAD_WEIGHTS_FROM_TEXT
    static bool loaded_weights = false;
    if (!loaded_weights) {
        // hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<model_default_t, 1>(s2, "s2.txt");
        nnet::load_weights_from_txt<model_default_t, 1>(b2, "b2.txt");
        nnet::load_weights_from_txt<weight3_t, 196>(w3, "w3.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(b3, "b3.txt");
        nnet::load_exponent_weights_from_txt<exponent_scale12_t, 4>(s12, "s12.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(b12, "b12.txt");
        nnet::load_weights_from_txt<weight6_t, 400>(w6, "w6.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(b6, "b6.txt");
        nnet::load_exponent_weights_from_txt<exponent_scale13_t, 4>(s13, "s13.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(b13, "b13.txt");
        nnet::load_weights_from_txt<weight9_t, 36>(w9, "w9.txt");
        nnet::load_weights_from_txt<model_default_t, 1>(b9, "b9.txt");
        nnet::load_exponent_weights_from_txt<exponent_scale14_t, 1>(s14, "s14.txt");
        nnet::load_weights_from_txt<model_default_t, 1>(b14, "b14.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    layer2_t layer2_out[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1];
    #pragma HLS ARRAY_PARTITION variable=layer2_out complete dim=0
    nnet::normalize<input_t, layer2_t, config2>(input_1, layer2_out, s2, b2); // batch_normalization

    layer3_t layer3_out[OUT_HEIGHT_3*OUT_WIDTH_3*N_FILT_3];
    #pragma HLS ARRAY_PARTITION variable=layer3_out complete dim=0
    nnet::conv_2d_cl<layer2_t, layer3_t, config3>(layer2_out, layer3_out, w3, b3); // q_conv2d

    layer12_t layer12_out[OUT_HEIGHT_3*OUT_WIDTH_3*N_FILT_3];
    #pragma HLS ARRAY_PARTITION variable=layer12_out complete dim=0
    nnet::normalize<layer3_t, layer12_t, config12>(layer3_out, layer12_out, s12, b12); // q_conv2d_alpha

    layer5_t layer5_out[OUT_HEIGHT_3*OUT_WIDTH_3*N_FILT_3];
    #pragma HLS ARRAY_PARTITION variable=layer5_out complete dim=0
    nnet::relu<layer12_t, layer5_t, relu_config5>(layer12_out, layer5_out); // q_activation

    layer6_t layer6_out[OUT_HEIGHT_6*OUT_WIDTH_6*N_FILT_6];
    #pragma HLS ARRAY_PARTITION variable=layer6_out complete dim=0
    nnet::conv_2d_cl<layer5_t, layer6_t, config6>(layer5_out, layer6_out, w6, b6); // q_conv2d_1

    layer13_t layer13_out[OUT_HEIGHT_6*OUT_WIDTH_6*N_FILT_6];
    #pragma HLS ARRAY_PARTITION variable=layer13_out complete dim=0
    nnet::normalize<layer6_t, layer13_t, config13>(layer6_out, layer13_out, s13, b13); // q_conv2d_1_alpha

    layer8_t layer8_out[OUT_HEIGHT_6*OUT_WIDTH_6*N_FILT_6];
    #pragma HLS ARRAY_PARTITION variable=layer8_out complete dim=0
    nnet::relu<layer13_t, layer8_t, relu_config8>(layer13_out, layer8_out); // q_activation_1

    layer9_t layer9_out[OUT_HEIGHT_9*OUT_WIDTH_9*N_FILT_9];
    #pragma HLS ARRAY_PARTITION variable=layer9_out complete dim=0
    nnet::conv_2d_cl<layer8_t, layer9_t, config9>(layer8_out, layer9_out, w9, b9); // q_conv2d_2

    layer14_t layer14_out[OUT_HEIGHT_9*OUT_WIDTH_9*N_FILT_9];
    #pragma HLS ARRAY_PARTITION variable=layer14_out complete dim=0
    nnet::normalize<layer9_t, layer14_t, config14>(layer9_out, layer14_out, s14, b14); // q_conv2d_2_alpha

    nnet::sigmoid<layer14_t, result_t, sigmoid_config11>(layer14_out, layer11_out); // activation

}
