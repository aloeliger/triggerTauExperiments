//Numpy array shape [1, 1, 1]
//Min 1.000000000000
//Max 1.000000000000
//Number of zeros 0

#ifndef S13_H_
#define S13_H_

#ifdef LOAD_WEIGHTS_FROM_TEXT
exponent_scale13_t s13[4];
#else
exponent_scale13_t s13[4] = {{1.0, 0}, {1.0, 0}, {1.0, 0}, {1.0, 0}};
#endif

#endif
