#include "gpu_math/defines.h"
#include "gpu_math/real2.h"
#include "gpu_math/real3.h"
#include "gpu_math/real4.h"
#include "gpu_math/matrix.h"
#include "svd.cuh"

Mat33 A(real3(10, 7, -10), real3(-9, -12, 10), real3(-12, 11, 3));
Mat33 B(real3(1, 0, 0), real3(0, 1, 0), real3(0, 0, 1));
int main() {
    Mat33 U, V;
    real3 singular_values;

    SVD(A, U, singular_values, V);
    printf("SVD (A): \n");
    printf("%f %f %f \n", U.cols[0].x, U.cols[1].x, U.cols[2].x);
    printf("%f %f %f \n", U.cols[0].y, U.cols[1].y, U.cols[2].y);
    printf("%f %f %f \n", U.cols[0].z, U.cols[1].z, U.cols[2].z);
    printf("=========\n");
    printf("%f %f %f \n", V.cols[0].x, V.cols[1].x, V.cols[2].x);
    printf("%f %f %f \n", V.cols[0].y, V.cols[1].y, V.cols[2].y);
    printf("%f %f %f \n", V.cols[0].z, V.cols[1].z, V.cols[2].z);
    printf("=========\n");
    printf("%f %f %f \n", singular_values.x, singular_values.y, singular_values.z);

 	SVD(B, U, singular_values, V);
printf("SVD (B): \n");
    printf("%f %f %f \n", U.cols[0].x, U.cols[1].x, U.cols[2].x);
    printf("%f %f %f \n", U.cols[0].y, U.cols[1].y, U.cols[2].y);
    printf("%f %f %f \n", U.cols[0].z, U.cols[1].z, U.cols[2].z);
    printf("=========\n");
    printf("%f %f %f \n", V.cols[0].x, V.cols[1].x, V.cols[2].x);
    printf("%f %f %f \n", V.cols[0].y, V.cols[1].y, V.cols[2].y);
    printf("%f %f %f \n", V.cols[0].z, V.cols[1].z, V.cols[2].z);
    printf("=========\n");
    printf("%f %f %f \n", singular_values.x, singular_values.y, singular_values.z);

    return 0;
}
