#include "gpu_math/defines.h"
#include "gpu_math/real2.h"
#include "gpu_math/real3.h"
#include "gpu_math/real4.h"
#include "gpu_math/matrix.h"
#include "svd.cuh"

Mat33 A(real3(10, 7, -10), real3(-9, -12, 10), real3(-12, 11, 3));

int main() {
    Mat33 U, V;
    real3 singular_values;

    SVD(A, U, singular_values, V);

    printf("%f %f %f", singular_values.x, singular_values.y, singular_values.z);

    return 0;
}
