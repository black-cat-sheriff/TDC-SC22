# 1 "CMakeCUDACompilerId.cu"
#pragma GCC diagnostic ignored "-Wunused-local-typedefs"
# 1
#pragma GCC diagnostic push
# 1
#pragma GCC diagnostic ignored "-Wunused-variable"
# 1
#pragma GCC diagnostic ignored "-Wunused-function"
# 1
static char __nv_inited_managed_rt = 0; static void **__nv_fatbinhandle_for_managed_rt; static void __nv_save_fatbinhandle_for_managed_rt(void **in){__nv_fatbinhandle_for_managed_rt = in;} static char __nv_init_managed_rt_with_module(void **); static inline void __nv_init_managed_rt(void) { __nv_inited_managed_rt = (__nv_inited_managed_rt ? __nv_inited_managed_rt                 : __nv_init_managed_rt_with_module(__nv_fatbinhandle_for_managed_rt));}
# 1
#pragma GCC diagnostic pop
# 1
#pragma GCC diagnostic ignored "-Wunused-variable"

# 1
#define __nv_is_extended_device_lambda_closure_type(X) false
#define __nv_is_extended_host_device_lambda_closure_type(X) false

# 1
# 61 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
#pragma GCC diagnostic push
# 64
#pragma GCC diagnostic ignored "-Wunused-function"
# 66 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_types.h"
#if 0
# 66
enum cudaRoundMode { 
# 68
cudaRoundNearest, 
# 69
cudaRoundZero, 
# 70
cudaRoundPosInf, 
# 71
cudaRoundMinInf
# 72
}; 
#endif
# 98 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 98
struct char1 { 
# 100
signed char x; 
# 101
}; 
#endif
# 103 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 103
struct uchar1 { 
# 105
unsigned char x; 
# 106
}; 
#endif
# 109 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 109
struct __attribute((aligned(2))) char2 { 
# 111
signed char x, y; 
# 112
}; 
#endif
# 114 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 114
struct __attribute((aligned(2))) uchar2 { 
# 116
unsigned char x, y; 
# 117
}; 
#endif
# 119 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 119
struct char3 { 
# 121
signed char x, y, z; 
# 122
}; 
#endif
# 124 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 124
struct uchar3 { 
# 126
unsigned char x, y, z; 
# 127
}; 
#endif
# 129 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 129
struct __attribute((aligned(4))) char4 { 
# 131
signed char x, y, z, w; 
# 132
}; 
#endif
# 134 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 134
struct __attribute((aligned(4))) uchar4 { 
# 136
unsigned char x, y, z, w; 
# 137
}; 
#endif
# 139 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 139
struct short1 { 
# 141
short x; 
# 142
}; 
#endif
# 144 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 144
struct ushort1 { 
# 146
unsigned short x; 
# 147
}; 
#endif
# 149 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 149
struct __attribute((aligned(4))) short2 { 
# 151
short x, y; 
# 152
}; 
#endif
# 154 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 154
struct __attribute((aligned(4))) ushort2 { 
# 156
unsigned short x, y; 
# 157
}; 
#endif
# 159 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 159
struct short3 { 
# 161
short x, y, z; 
# 162
}; 
#endif
# 164 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 164
struct ushort3 { 
# 166
unsigned short x, y, z; 
# 167
}; 
#endif
# 169 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 169
struct __attribute((aligned(8))) short4 { short x; short y; short z; short w; }; 
#endif
# 170 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 170
struct __attribute((aligned(8))) ushort4 { unsigned short x; unsigned short y; unsigned short z; unsigned short w; }; 
#endif
# 172 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 172
struct int1 { 
# 174
int x; 
# 175
}; 
#endif
# 177 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 177
struct uint1 { 
# 179
unsigned x; 
# 180
}; 
#endif
# 182 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 182
struct __attribute((aligned(8))) int2 { int x; int y; }; 
#endif
# 183 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 183
struct __attribute((aligned(8))) uint2 { unsigned x; unsigned y; }; 
#endif
# 185 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 185
struct int3 { 
# 187
int x, y, z; 
# 188
}; 
#endif
# 190 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 190
struct uint3 { 
# 192
unsigned x, y, z; 
# 193
}; 
#endif
# 195 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 195
struct __attribute((aligned(16))) int4 { 
# 197
int x, y, z, w; 
# 198
}; 
#endif
# 200 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 200
struct __attribute((aligned(16))) uint4 { 
# 202
unsigned x, y, z, w; 
# 203
}; 
#endif
# 205 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 205
struct long1 { 
# 207
long x; 
# 208
}; 
#endif
# 210 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 210
struct ulong1 { 
# 212
unsigned long x; 
# 213
}; 
#endif
# 220 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 220
struct __attribute((aligned((2) * sizeof(long)))) long2 { 
# 222
long x, y; 
# 223
}; 
#endif
# 225 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 225
struct __attribute((aligned((2) * sizeof(unsigned long)))) ulong2 { 
# 227
unsigned long x, y; 
# 228
}; 
#endif
# 232 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 232
struct long3 { 
# 234
long x, y, z; 
# 235
}; 
#endif
# 237 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 237
struct ulong3 { 
# 239
unsigned long x, y, z; 
# 240
}; 
#endif
# 242 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 242
struct __attribute((aligned(16))) long4 { 
# 244
long x, y, z, w; 
# 245
}; 
#endif
# 247 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 247
struct __attribute((aligned(16))) ulong4 { 
# 249
unsigned long x, y, z, w; 
# 250
}; 
#endif
# 252 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 252
struct float1 { 
# 254
float x; 
# 255
}; 
#endif
# 274 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 274
struct __attribute((aligned(8))) float2 { float x; float y; }; 
#endif
# 279 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 279
struct float3 { 
# 281
float x, y, z; 
# 282
}; 
#endif
# 284 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 284
struct __attribute((aligned(16))) float4 { 
# 286
float x, y, z, w; 
# 287
}; 
#endif
# 289 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 289
struct longlong1 { 
# 291
long long x; 
# 292
}; 
#endif
# 294 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 294
struct ulonglong1 { 
# 296
unsigned long long x; 
# 297
}; 
#endif
# 299 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 299
struct __attribute((aligned(16))) longlong2 { 
# 301
long long x, y; 
# 302
}; 
#endif
# 304 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 304
struct __attribute((aligned(16))) ulonglong2 { 
# 306
unsigned long long x, y; 
# 307
}; 
#endif
# 309 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 309
struct longlong3 { 
# 311
long long x, y, z; 
# 312
}; 
#endif
# 314 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 314
struct ulonglong3 { 
# 316
unsigned long long x, y, z; 
# 317
}; 
#endif
# 319 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 319
struct __attribute((aligned(16))) longlong4 { 
# 321
long long x, y, z, w; 
# 322
}; 
#endif
# 324 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 324
struct __attribute((aligned(16))) ulonglong4 { 
# 326
unsigned long long x, y, z, w; 
# 327
}; 
#endif
# 329 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 329
struct double1 { 
# 331
double x; 
# 332
}; 
#endif
# 334 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 334
struct __attribute((aligned(16))) double2 { 
# 336
double x, y; 
# 337
}; 
#endif
# 339 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 339
struct double3 { 
# 341
double x, y, z; 
# 342
}; 
#endif
# 344 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 344
struct __attribute((aligned(16))) double4 { 
# 346
double x, y, z, w; 
# 347
}; 
#endif
# 361 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef char1 
# 361
char1; 
#endif
# 362 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef uchar1 
# 362
uchar1; 
#endif
# 363 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef char2 
# 363
char2; 
#endif
# 364 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef uchar2 
# 364
uchar2; 
#endif
# 365 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef char3 
# 365
char3; 
#endif
# 366 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef uchar3 
# 366
uchar3; 
#endif
# 367 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef char4 
# 367
char4; 
#endif
# 368 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef uchar4 
# 368
uchar4; 
#endif
# 369 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef short1 
# 369
short1; 
#endif
# 370 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef ushort1 
# 370
ushort1; 
#endif
# 371 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef short2 
# 371
short2; 
#endif
# 372 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef ushort2 
# 372
ushort2; 
#endif
# 373 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef short3 
# 373
short3; 
#endif
# 374 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef ushort3 
# 374
ushort3; 
#endif
# 375 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef short4 
# 375
short4; 
#endif
# 376 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef ushort4 
# 376
ushort4; 
#endif
# 377 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef int1 
# 377
int1; 
#endif
# 378 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef uint1 
# 378
uint1; 
#endif
# 379 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef int2 
# 379
int2; 
#endif
# 380 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef uint2 
# 380
uint2; 
#endif
# 381 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef int3 
# 381
int3; 
#endif
# 382 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef uint3 
# 382
uint3; 
#endif
# 383 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef int4 
# 383
int4; 
#endif
# 384 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef uint4 
# 384
uint4; 
#endif
# 385 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef long1 
# 385
long1; 
#endif
# 386 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef ulong1 
# 386
ulong1; 
#endif
# 387 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef long2 
# 387
long2; 
#endif
# 388 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef ulong2 
# 388
ulong2; 
#endif
# 389 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef long3 
# 389
long3; 
#endif
# 390 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef ulong3 
# 390
ulong3; 
#endif
# 391 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef long4 
# 391
long4; 
#endif
# 392 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef ulong4 
# 392
ulong4; 
#endif
# 393 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef float1 
# 393
float1; 
#endif
# 394 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef float2 
# 394
float2; 
#endif
# 395 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef float3 
# 395
float3; 
#endif
# 396 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef float4 
# 396
float4; 
#endif
# 397 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef longlong1 
# 397
longlong1; 
#endif
# 398 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef ulonglong1 
# 398
ulonglong1; 
#endif
# 399 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef longlong2 
# 399
longlong2; 
#endif
# 400 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef ulonglong2 
# 400
ulonglong2; 
#endif
# 401 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef longlong3 
# 401
longlong3; 
#endif
# 402 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef ulonglong3 
# 402
ulonglong3; 
#endif
# 403 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef longlong4 
# 403
longlong4; 
#endif
# 404 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef ulonglong4 
# 404
ulonglong4; 
#endif
# 405 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef double1 
# 405
double1; 
#endif
# 406 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef double2 
# 406
double2; 
#endif
# 407 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef double3 
# 407
double3; 
#endif
# 408 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef double4 
# 408
double4; 
#endif
# 416 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
# 416
struct dim3 { 
# 418
unsigned x, y, z; 
# 430
}; 
#endif
# 432 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_types.h"
#if 0
typedef dim3 
# 432
dim3; 
#endif
# 143 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/lib/gcc/x86_64-pc-linux-gnu/9.4.0/include/stddef.h" 3
typedef long ptrdiff_t; 
# 209 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/lib/gcc/x86_64-pc-linux-gnu/9.4.0/include/stddef.h" 3
typedef unsigned long size_t; 
#if !defined(__CUDA_INCLUDE_COMPILER_INTERNAL_HEADERS__)
#define __CUDA_INCLUDE_COMPILER_INTERNAL_HEADERS__
#endif
#include "crt/host_runtime.h"
# 426 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/lib/gcc/x86_64-pc-linux-gnu/9.4.0/include/stddef.h" 3
typedef 
# 415 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/lib/gcc/x86_64-pc-linux-gnu/9.4.0/include/stddef.h" 3
struct { 
# 416
long long __max_align_ll __attribute((__aligned__(__alignof__(long long)))); 
# 417
long double __max_align_ld __attribute((__aligned__(__alignof__(long double)))); 
# 426 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/lib/gcc/x86_64-pc-linux-gnu/9.4.0/include/stddef.h" 3
} max_align_t; 
# 433
typedef __decltype((nullptr)) nullptr_t; 
# 189 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 189
enum cudaError { 
# 196
cudaSuccess, 
# 202
cudaErrorInvalidValue, 
# 208
cudaErrorMemoryAllocation, 
# 214
cudaErrorInitializationError, 
# 221
cudaErrorCudartUnloading, 
# 228
cudaErrorProfilerDisabled, 
# 236
cudaErrorProfilerNotInitialized, 
# 243
cudaErrorProfilerAlreadyStarted, 
# 250
cudaErrorProfilerAlreadyStopped, 
# 259 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorInvalidConfiguration, 
# 265
cudaErrorInvalidPitchValue = 12, 
# 271
cudaErrorInvalidSymbol, 
# 279
cudaErrorInvalidHostPointer = 16, 
# 287
cudaErrorInvalidDevicePointer, 
# 293
cudaErrorInvalidTexture, 
# 299
cudaErrorInvalidTextureBinding, 
# 306
cudaErrorInvalidChannelDescriptor, 
# 312
cudaErrorInvalidMemcpyDirection, 
# 322 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorAddressOfConstant, 
# 331 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorTextureFetchFailed, 
# 340 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorTextureNotBound, 
# 349 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorSynchronizationError, 
# 355
cudaErrorInvalidFilterSetting, 
# 361
cudaErrorInvalidNormSetting, 
# 369
cudaErrorMixedDeviceExecution, 
# 377
cudaErrorNotYetImplemented = 31, 
# 386 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorMemoryValueTooLarge, 
# 393
cudaErrorInsufficientDriver = 35, 
# 399
cudaErrorInvalidSurface = 37, 
# 405
cudaErrorDuplicateVariableName = 43, 
# 411
cudaErrorDuplicateTextureName, 
# 417
cudaErrorDuplicateSurfaceName, 
# 427 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorDevicesUnavailable, 
# 440 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorIncompatibleDriverContext = 49, 
# 446
cudaErrorMissingConfiguration = 52, 
# 455 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorPriorLaunchFailure, 
# 462
cudaErrorLaunchMaxDepthExceeded = 65, 
# 470
cudaErrorLaunchFileScopedTex, 
# 478
cudaErrorLaunchFileScopedSurf, 
# 493 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorSyncDepthExceeded, 
# 505 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorLaunchPendingCountExceeded, 
# 511
cudaErrorInvalidDeviceFunction = 98, 
# 517
cudaErrorNoDevice = 100, 
# 523
cudaErrorInvalidDevice, 
# 528
cudaErrorStartupFailure = 127, 
# 533
cudaErrorInvalidKernelImage = 200, 
# 543 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorDeviceUninitialized, 
# 548
cudaErrorMapBufferObjectFailed = 205, 
# 553
cudaErrorUnmapBufferObjectFailed, 
# 559
cudaErrorArrayIsMapped, 
# 564
cudaErrorAlreadyMapped, 
# 572
cudaErrorNoKernelImageForDevice, 
# 577
cudaErrorAlreadyAcquired, 
# 582
cudaErrorNotMapped, 
# 588
cudaErrorNotMappedAsArray, 
# 594
cudaErrorNotMappedAsPointer, 
# 600
cudaErrorECCUncorrectable, 
# 606
cudaErrorUnsupportedLimit, 
# 612
cudaErrorDeviceAlreadyInUse, 
# 618
cudaErrorPeerAccessUnsupported, 
# 624
cudaErrorInvalidPtx, 
# 629
cudaErrorInvalidGraphicsContext, 
# 635
cudaErrorNvlinkUncorrectable, 
# 642
cudaErrorJitCompilerNotFound, 
# 647
cudaErrorInvalidSource = 300, 
# 652
cudaErrorFileNotFound, 
# 657
cudaErrorSharedObjectSymbolNotFound, 
# 662
cudaErrorSharedObjectInitFailed, 
# 667
cudaErrorOperatingSystem, 
# 674
cudaErrorInvalidResourceHandle = 400, 
# 680
cudaErrorIllegalState, 
# 686
cudaErrorSymbolNotFound = 500, 
# 694
cudaErrorNotReady = 600, 
# 702
cudaErrorIllegalAddress = 700, 
# 711 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorLaunchOutOfResources, 
# 722 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorLaunchTimeout, 
# 728
cudaErrorLaunchIncompatibleTexturing, 
# 735
cudaErrorPeerAccessAlreadyEnabled, 
# 742
cudaErrorPeerAccessNotEnabled, 
# 755 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorSetOnActiveProcess = 708, 
# 762
cudaErrorContextIsDestroyed, 
# 769
cudaErrorAssert, 
# 776
cudaErrorTooManyPeers, 
# 782
cudaErrorHostMemoryAlreadyRegistered, 
# 788
cudaErrorHostMemoryNotRegistered, 
# 797 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorHardwareStackError, 
# 805
cudaErrorIllegalInstruction, 
# 814 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorMisalignedAddress, 
# 825 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorInvalidAddressSpace, 
# 833
cudaErrorInvalidPc, 
# 844 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorLaunchFailure, 
# 853 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorCooperativeLaunchTooLarge, 
# 858
cudaErrorNotPermitted = 800, 
# 864
cudaErrorNotSupported, 
# 873 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorSystemNotReady, 
# 880
cudaErrorSystemDriverMismatch, 
# 889 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
cudaErrorCompatNotSupportedOnDevice, 
# 894
cudaErrorStreamCaptureUnsupported = 900, 
# 900
cudaErrorStreamCaptureInvalidated, 
# 906
cudaErrorStreamCaptureMerge, 
# 911
cudaErrorStreamCaptureUnmatched, 
# 917
cudaErrorStreamCaptureUnjoined, 
# 924
cudaErrorStreamCaptureIsolation, 
# 930
cudaErrorStreamCaptureImplicit, 
# 936
cudaErrorCapturedEvent, 
# 943
cudaErrorStreamCaptureWrongThread, 
# 948
cudaErrorTimeout, 
# 954
cudaErrorGraphExecUpdateFailure, 
# 959
cudaErrorUnknown = 999, 
# 967
cudaErrorApiFailureBase = 10000
# 968
}; 
#endif
# 973 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 973
enum cudaChannelFormatKind { 
# 975
cudaChannelFormatKindSigned, 
# 976
cudaChannelFormatKindUnsigned, 
# 977
cudaChannelFormatKindFloat, 
# 978
cudaChannelFormatKindNone
# 979
}; 
#endif
# 984 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 984
struct cudaChannelFormatDesc { 
# 986
int x; 
# 987
int y; 
# 988
int z; 
# 989
int w; 
# 990
cudaChannelFormatKind f; 
# 991
}; 
#endif
# 996 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
typedef struct cudaArray *cudaArray_t; 
# 1001
typedef const cudaArray *cudaArray_const_t; 
# 1003
struct cudaArray; 
# 1008
typedef struct cudaMipmappedArray *cudaMipmappedArray_t; 
# 1013
typedef const cudaMipmappedArray *cudaMipmappedArray_const_t; 
# 1015
struct cudaMipmappedArray; 
# 1020
#if 0
# 1020
enum cudaMemoryType { 
# 1022
cudaMemoryTypeUnregistered, 
# 1023
cudaMemoryTypeHost, 
# 1024
cudaMemoryTypeDevice, 
# 1025
cudaMemoryTypeManaged
# 1026
}; 
#endif
# 1031 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1031
enum cudaMemcpyKind { 
# 1033
cudaMemcpyHostToHost, 
# 1034
cudaMemcpyHostToDevice, 
# 1035
cudaMemcpyDeviceToHost, 
# 1036
cudaMemcpyDeviceToDevice, 
# 1037
cudaMemcpyDefault
# 1038
}; 
#endif
# 1045 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1045
struct cudaPitchedPtr { 
# 1047
void *ptr; 
# 1048
size_t pitch; 
# 1049
size_t xsize; 
# 1050
size_t ysize; 
# 1051
}; 
#endif
# 1058 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1058
struct cudaExtent { 
# 1060
size_t width; 
# 1061
size_t height; 
# 1062
size_t depth; 
# 1063
}; 
#endif
# 1070 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1070
struct cudaPos { 
# 1072
size_t x; 
# 1073
size_t y; 
# 1074
size_t z; 
# 1075
}; 
#endif
# 1080 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1080
struct cudaMemcpy3DParms { 
# 1082
cudaArray_t srcArray; 
# 1083
cudaPos srcPos; 
# 1084
cudaPitchedPtr srcPtr; 
# 1086
cudaArray_t dstArray; 
# 1087
cudaPos dstPos; 
# 1088
cudaPitchedPtr dstPtr; 
# 1090
cudaExtent extent; 
# 1091
cudaMemcpyKind kind; __pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)
# 1092
}; 
#endif
# 1097 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1097
struct cudaMemcpy3DPeerParms { 
# 1099
cudaArray_t srcArray; 
# 1100
cudaPos srcPos; 
# 1101
cudaPitchedPtr srcPtr; 
# 1102
int srcDevice; 
# 1104
cudaArray_t dstArray; 
# 1105
cudaPos dstPos; 
# 1106
cudaPitchedPtr dstPtr; 
# 1107
int dstDevice; 
# 1109
cudaExtent extent; 
# 1110
}; 
#endif
# 1115 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1115
struct cudaMemsetParams { 
# 1116
void *dst; 
# 1117
size_t pitch; 
# 1118
unsigned value; 
# 1119
unsigned elementSize; 
# 1120
size_t width; 
# 1121
size_t height; 
# 1122
}; 
#endif
# 1127 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1127
enum cudaAccessProperty { 
# 1128
cudaAccessPropertyNormal, 
# 1129
cudaAccessPropertyStreaming, 
# 1130
cudaAccessPropertyPersisting
# 1131
}; 
#endif
# 1144 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1144
struct cudaAccessPolicyWindow { 
# 1145
void *base_ptr; 
# 1146
size_t num_bytes; 
# 1147
float hitRatio; 
# 1148
cudaAccessProperty hitProp; 
# 1149
cudaAccessProperty missProp; __pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)
# 1150
}; 
#endif
# 1162 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
typedef void (*cudaHostFn_t)(void * userData); 
# 1167
#if 0
# 1167
struct cudaHostNodeParams { 
# 1168
cudaHostFn_t fn; 
# 1169
void *userData; 
# 1170
}; 
#endif
# 1175 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1175
enum cudaStreamCaptureStatus { 
# 1176
cudaStreamCaptureStatusNone, 
# 1177
cudaStreamCaptureStatusActive, 
# 1178
cudaStreamCaptureStatusInvalidated
# 1180
}; 
#endif
# 1186 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1186
enum cudaStreamCaptureMode { 
# 1187
cudaStreamCaptureModeGlobal, 
# 1188
cudaStreamCaptureModeThreadLocal, 
# 1189
cudaStreamCaptureModeRelaxed
# 1190
}; 
#endif
# 1192 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1192
enum cudaSynchronizationPolicy { 
# 1193
cudaSyncPolicyAuto = 1, 
# 1194
cudaSyncPolicySpin, 
# 1195
cudaSyncPolicyYield, 
# 1196
cudaSyncPolicyBlockingSync
# 1197
}; 
#endif
# 1202 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1202
enum cudaStreamAttrID { 
# 1203
cudaStreamAttributeAccessPolicyWindow = 1, 
# 1204
cudaStreamAttributeSynchronizationPolicy = 3
# 1205
}; 
#endif
# 1210 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1210
union cudaStreamAttrValue { 
# 1211
cudaAccessPolicyWindow accessPolicyWindow; 
# 1212
cudaSynchronizationPolicy syncPolicy; __pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)
# 1213
}; 
#endif
# 1218 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
struct cudaGraphicsResource; 
# 1223
#if 0
# 1223
enum cudaGraphicsRegisterFlags { 
# 1225
cudaGraphicsRegisterFlagsNone, 
# 1226
cudaGraphicsRegisterFlagsReadOnly, 
# 1227
cudaGraphicsRegisterFlagsWriteDiscard, 
# 1228
cudaGraphicsRegisterFlagsSurfaceLoadStore = 4, 
# 1229
cudaGraphicsRegisterFlagsTextureGather = 8
# 1230
}; 
#endif
# 1235 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1235
enum cudaGraphicsMapFlags { 
# 1237
cudaGraphicsMapFlagsNone, 
# 1238
cudaGraphicsMapFlagsReadOnly, 
# 1239
cudaGraphicsMapFlagsWriteDiscard
# 1240
}; 
#endif
# 1245 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1245
enum cudaGraphicsCubeFace { 
# 1247
cudaGraphicsCubeFacePositiveX, 
# 1248
cudaGraphicsCubeFaceNegativeX, 
# 1249
cudaGraphicsCubeFacePositiveY, 
# 1250
cudaGraphicsCubeFaceNegativeY, 
# 1251
cudaGraphicsCubeFacePositiveZ, 
# 1252
cudaGraphicsCubeFaceNegativeZ
# 1253
}; 
#endif
# 1258 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1258
enum cudaKernelNodeAttrID { 
# 1259
cudaKernelNodeAttributeAccessPolicyWindow = 1, 
# 1260
cudaKernelNodeAttributeCooperative
# 1261
}; 
#endif
# 1266 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1266
union cudaKernelNodeAttrValue { 
# 1267
cudaAccessPolicyWindow accessPolicyWindow; 
# 1268
int cooperative; __pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)
# 1269
}; 
#endif
# 1274 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1274
enum cudaResourceType { 
# 1276
cudaResourceTypeArray, 
# 1277
cudaResourceTypeMipmappedArray, 
# 1278
cudaResourceTypeLinear, 
# 1279
cudaResourceTypePitch2D
# 1280
}; 
#endif
# 1285 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1285
enum cudaResourceViewFormat { 
# 1287
cudaResViewFormatNone, 
# 1288
cudaResViewFormatUnsignedChar1, 
# 1289
cudaResViewFormatUnsignedChar2, 
# 1290
cudaResViewFormatUnsignedChar4, 
# 1291
cudaResViewFormatSignedChar1, 
# 1292
cudaResViewFormatSignedChar2, 
# 1293
cudaResViewFormatSignedChar4, 
# 1294
cudaResViewFormatUnsignedShort1, 
# 1295
cudaResViewFormatUnsignedShort2, 
# 1296
cudaResViewFormatUnsignedShort4, 
# 1297
cudaResViewFormatSignedShort1, 
# 1298
cudaResViewFormatSignedShort2, 
# 1299
cudaResViewFormatSignedShort4, 
# 1300
cudaResViewFormatUnsignedInt1, 
# 1301
cudaResViewFormatUnsignedInt2, 
# 1302
cudaResViewFormatUnsignedInt4, 
# 1303
cudaResViewFormatSignedInt1, 
# 1304
cudaResViewFormatSignedInt2, 
# 1305
cudaResViewFormatSignedInt4, 
# 1306
cudaResViewFormatHalf1, 
# 1307
cudaResViewFormatHalf2, 
# 1308
cudaResViewFormatHalf4, 
# 1309
cudaResViewFormatFloat1, 
# 1310
cudaResViewFormatFloat2, 
# 1311
cudaResViewFormatFloat4, 
# 1312
cudaResViewFormatUnsignedBlockCompressed1, 
# 1313
cudaResViewFormatUnsignedBlockCompressed2, 
# 1314
cudaResViewFormatUnsignedBlockCompressed3, 
# 1315
cudaResViewFormatUnsignedBlockCompressed4, 
# 1316
cudaResViewFormatSignedBlockCompressed4, 
# 1317
cudaResViewFormatUnsignedBlockCompressed5, 
# 1318
cudaResViewFormatSignedBlockCompressed5, 
# 1319
cudaResViewFormatUnsignedBlockCompressed6H, 
# 1320
cudaResViewFormatSignedBlockCompressed6H, 
# 1321
cudaResViewFormatUnsignedBlockCompressed7
# 1322
}; 
#endif
# 1327 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1327
struct cudaResourceDesc { 
# 1328
cudaResourceType resType; 
# 1330
union { 
# 1331
struct { 
# 1332
cudaArray_t array; 
# 1333
} array; 
# 1334
struct { 
# 1335
cudaMipmappedArray_t mipmap; 
# 1336
} mipmap; 
# 1337
struct { 
# 1338
void *devPtr; 
# 1339
cudaChannelFormatDesc desc; 
# 1340
size_t sizeInBytes; 
# 1341
} linear; 
# 1342
struct { 
# 1343
void *devPtr; 
# 1344
cudaChannelFormatDesc desc; 
# 1345
size_t width; 
# 1346
size_t height; 
# 1347
size_t pitchInBytes; 
# 1348
} pitch2D; 
# 1349
} res; 
# 1350
}; 
#endif
# 1355 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1355
struct cudaResourceViewDesc { 
# 1357
cudaResourceViewFormat format; 
# 1358
size_t width; 
# 1359
size_t height; 
# 1360
size_t depth; 
# 1361
unsigned firstMipmapLevel; 
# 1362
unsigned lastMipmapLevel; 
# 1363
unsigned firstLayer; 
# 1364
unsigned lastLayer; 
# 1365
}; 
#endif
# 1370 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1370
struct cudaPointerAttributes { 
# 1376
cudaMemoryType type; 
# 1387 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
int device; 
# 1393
void *devicePointer; 
# 1402 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
void *hostPointer; 
# 1403
}; 
#endif
# 1408 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1408
struct cudaFuncAttributes { 
# 1415
size_t sharedSizeBytes; 
# 1421
size_t constSizeBytes; 
# 1426
size_t localSizeBytes; 
# 1433
int maxThreadsPerBlock; 
# 1438
int numRegs; 
# 1445
int ptxVersion; 
# 1452
int binaryVersion; 
# 1458
int cacheModeCA; 
# 1465
int maxDynamicSharedSizeBytes; 
# 1474 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
int preferredShmemCarveout; 
# 1475
}; 
#endif
# 1480 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1480
enum cudaFuncAttribute { 
# 1482
cudaFuncAttributeMaxDynamicSharedMemorySize = 8, 
# 1483
cudaFuncAttributePreferredSharedMemoryCarveout, 
# 1484
cudaFuncAttributeMax
# 1485
}; 
#endif
# 1490 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1490
enum cudaFuncCache { 
# 1492
cudaFuncCachePreferNone, 
# 1493
cudaFuncCachePreferShared, 
# 1494
cudaFuncCachePreferL1, 
# 1495
cudaFuncCachePreferEqual
# 1496
}; 
#endif
# 1502 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1502
enum cudaSharedMemConfig { 
# 1504
cudaSharedMemBankSizeDefault, 
# 1505
cudaSharedMemBankSizeFourByte, 
# 1506
cudaSharedMemBankSizeEightByte
# 1507
}; 
#endif
# 1512 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1512
enum cudaSharedCarveout { 
# 1513
cudaSharedmemCarveoutDefault = (-1), 
# 1514
cudaSharedmemCarveoutMaxShared = 100, 
# 1515
cudaSharedmemCarveoutMaxL1 = 0
# 1516
}; 
#endif
# 1521 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1521
enum cudaComputeMode { 
# 1523
cudaComputeModeDefault, 
# 1524
cudaComputeModeExclusive, 
# 1525
cudaComputeModeProhibited, 
# 1526
cudaComputeModeExclusiveProcess
# 1527
}; 
#endif
# 1532 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1532
enum cudaLimit { 
# 1534
cudaLimitStackSize, 
# 1535
cudaLimitPrintfFifoSize, 
# 1536
cudaLimitMallocHeapSize, 
# 1537
cudaLimitDevRuntimeSyncDepth, 
# 1538
cudaLimitDevRuntimePendingLaunchCount, 
# 1539
cudaLimitMaxL2FetchGranularity, 
# 1540
cudaLimitPersistingL2CacheSize
# 1541
}; 
#endif
# 1546 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1546
enum cudaMemoryAdvise { 
# 1548
cudaMemAdviseSetReadMostly = 1, 
# 1549
cudaMemAdviseUnsetReadMostly, 
# 1550
cudaMemAdviseSetPreferredLocation, 
# 1551
cudaMemAdviseUnsetPreferredLocation, 
# 1552
cudaMemAdviseSetAccessedBy, 
# 1553
cudaMemAdviseUnsetAccessedBy
# 1554
}; 
#endif
# 1559 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1559
enum cudaMemRangeAttribute { 
# 1561
cudaMemRangeAttributeReadMostly = 1, 
# 1562
cudaMemRangeAttributePreferredLocation, 
# 1563
cudaMemRangeAttributeAccessedBy, 
# 1564
cudaMemRangeAttributeLastPrefetchLocation
# 1565
}; 
#endif
# 1570 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1570
enum cudaOutputMode { 
# 1572
cudaKeyValuePair, 
# 1573
cudaCSV
# 1574
}; 
#endif
# 1579 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1579
enum cudaDeviceAttr { 
# 1581
cudaDevAttrMaxThreadsPerBlock = 1, 
# 1582
cudaDevAttrMaxBlockDimX, 
# 1583
cudaDevAttrMaxBlockDimY, 
# 1584
cudaDevAttrMaxBlockDimZ, 
# 1585
cudaDevAttrMaxGridDimX, 
# 1586
cudaDevAttrMaxGridDimY, 
# 1587
cudaDevAttrMaxGridDimZ, 
# 1588
cudaDevAttrMaxSharedMemoryPerBlock, 
# 1589
cudaDevAttrTotalConstantMemory, 
# 1590
cudaDevAttrWarpSize, 
# 1591
cudaDevAttrMaxPitch, 
# 1592
cudaDevAttrMaxRegistersPerBlock, 
# 1593
cudaDevAttrClockRate, 
# 1594
cudaDevAttrTextureAlignment, 
# 1595
cudaDevAttrGpuOverlap, 
# 1596
cudaDevAttrMultiProcessorCount, 
# 1597
cudaDevAttrKernelExecTimeout, 
# 1598
cudaDevAttrIntegrated, 
# 1599
cudaDevAttrCanMapHostMemory, 
# 1600
cudaDevAttrComputeMode, 
# 1601
cudaDevAttrMaxTexture1DWidth, 
# 1602
cudaDevAttrMaxTexture2DWidth, 
# 1603
cudaDevAttrMaxTexture2DHeight, 
# 1604
cudaDevAttrMaxTexture3DWidth, 
# 1605
cudaDevAttrMaxTexture3DHeight, 
# 1606
cudaDevAttrMaxTexture3DDepth, 
# 1607
cudaDevAttrMaxTexture2DLayeredWidth, 
# 1608
cudaDevAttrMaxTexture2DLayeredHeight, 
# 1609
cudaDevAttrMaxTexture2DLayeredLayers, 
# 1610
cudaDevAttrSurfaceAlignment, 
# 1611
cudaDevAttrConcurrentKernels, 
# 1612
cudaDevAttrEccEnabled, 
# 1613
cudaDevAttrPciBusId, 
# 1614
cudaDevAttrPciDeviceId, 
# 1615
cudaDevAttrTccDriver, 
# 1616
cudaDevAttrMemoryClockRate, 
# 1617
cudaDevAttrGlobalMemoryBusWidth, 
# 1618
cudaDevAttrL2CacheSize, 
# 1619
cudaDevAttrMaxThreadsPerMultiProcessor, 
# 1620
cudaDevAttrAsyncEngineCount, 
# 1621
cudaDevAttrUnifiedAddressing, 
# 1622
cudaDevAttrMaxTexture1DLayeredWidth, 
# 1623
cudaDevAttrMaxTexture1DLayeredLayers, 
# 1624
cudaDevAttrMaxTexture2DGatherWidth = 45, 
# 1625
cudaDevAttrMaxTexture2DGatherHeight, 
# 1626
cudaDevAttrMaxTexture3DWidthAlt, 
# 1627
cudaDevAttrMaxTexture3DHeightAlt, 
# 1628
cudaDevAttrMaxTexture3DDepthAlt, 
# 1629
cudaDevAttrPciDomainId, 
# 1630
cudaDevAttrTexturePitchAlignment, 
# 1631
cudaDevAttrMaxTextureCubemapWidth, 
# 1632
cudaDevAttrMaxTextureCubemapLayeredWidth, 
# 1633
cudaDevAttrMaxTextureCubemapLayeredLayers, 
# 1634
cudaDevAttrMaxSurface1DWidth, 
# 1635
cudaDevAttrMaxSurface2DWidth, 
# 1636
cudaDevAttrMaxSurface2DHeight, 
# 1637
cudaDevAttrMaxSurface3DWidth, 
# 1638
cudaDevAttrMaxSurface3DHeight, 
# 1639
cudaDevAttrMaxSurface3DDepth, 
# 1640
cudaDevAttrMaxSurface1DLayeredWidth, 
# 1641
cudaDevAttrMaxSurface1DLayeredLayers, 
# 1642
cudaDevAttrMaxSurface2DLayeredWidth, 
# 1643
cudaDevAttrMaxSurface2DLayeredHeight, 
# 1644
cudaDevAttrMaxSurface2DLayeredLayers, 
# 1645
cudaDevAttrMaxSurfaceCubemapWidth, 
# 1646
cudaDevAttrMaxSurfaceCubemapLayeredWidth, 
# 1647
cudaDevAttrMaxSurfaceCubemapLayeredLayers, 
# 1648
cudaDevAttrMaxTexture1DLinearWidth, 
# 1649
cudaDevAttrMaxTexture2DLinearWidth, 
# 1650
cudaDevAttrMaxTexture2DLinearHeight, 
# 1651
cudaDevAttrMaxTexture2DLinearPitch, 
# 1652
cudaDevAttrMaxTexture2DMipmappedWidth, 
# 1653
cudaDevAttrMaxTexture2DMipmappedHeight, 
# 1654
cudaDevAttrComputeCapabilityMajor, 
# 1655
cudaDevAttrComputeCapabilityMinor, 
# 1656
cudaDevAttrMaxTexture1DMipmappedWidth, 
# 1657
cudaDevAttrStreamPrioritiesSupported, 
# 1658
cudaDevAttrGlobalL1CacheSupported, 
# 1659
cudaDevAttrLocalL1CacheSupported, 
# 1660
cudaDevAttrMaxSharedMemoryPerMultiprocessor, 
# 1661
cudaDevAttrMaxRegistersPerMultiprocessor, 
# 1662
cudaDevAttrManagedMemory, 
# 1663
cudaDevAttrIsMultiGpuBoard, 
# 1664
cudaDevAttrMultiGpuBoardGroupID, 
# 1665
cudaDevAttrHostNativeAtomicSupported, 
# 1666
cudaDevAttrSingleToDoublePrecisionPerfRatio, 
# 1667
cudaDevAttrPageableMemoryAccess, 
# 1668
cudaDevAttrConcurrentManagedAccess, 
# 1669
cudaDevAttrComputePreemptionSupported, 
# 1670
cudaDevAttrCanUseHostPointerForRegisteredMem, 
# 1671
cudaDevAttrReserved92, 
# 1672
cudaDevAttrReserved93, 
# 1673
cudaDevAttrReserved94, 
# 1674
cudaDevAttrCooperativeLaunch, 
# 1675
cudaDevAttrCooperativeMultiDeviceLaunch, 
# 1676
cudaDevAttrMaxSharedMemoryPerBlockOptin, 
# 1677
cudaDevAttrCanFlushRemoteWrites, 
# 1678
cudaDevAttrHostRegisterSupported, 
# 1679
cudaDevAttrPageableMemoryAccessUsesHostPageTables, 
# 1680
cudaDevAttrDirectManagedMemAccessFromHost, 
# 1681
cudaDevAttrMaxBlocksPerMultiprocessor = 106, 
# 1682
cudaDevAttrReservedSharedMemoryPerBlock = 111
# 1683
}; 
#endif
# 1689 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1689
enum cudaDeviceP2PAttr { 
# 1690
cudaDevP2PAttrPerformanceRank = 1, 
# 1691
cudaDevP2PAttrAccessSupported, 
# 1692
cudaDevP2PAttrNativeAtomicSupported, 
# 1693
cudaDevP2PAttrCudaArrayAccessSupported
# 1694
}; 
#endif
# 1701 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1701
struct CUuuid_st { 
# 1702
char bytes[16]; 
# 1703
}; 
#endif
# 1704 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
typedef CUuuid_st 
# 1704
CUuuid; 
#endif
# 1706 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
typedef CUuuid_st 
# 1706
cudaUUID_t; 
#endif
# 1711 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1711
struct cudaDeviceProp { 
# 1713
char name[256]; 
# 1714
cudaUUID_t uuid; 
# 1715
char luid[8]; 
# 1716
unsigned luidDeviceNodeMask; 
# 1717
size_t totalGlobalMem; 
# 1718
size_t sharedMemPerBlock; 
# 1719
int regsPerBlock; 
# 1720
int warpSize; 
# 1721
size_t memPitch; 
# 1722
int maxThreadsPerBlock; 
# 1723
int maxThreadsDim[3]; 
# 1724
int maxGridSize[3]; 
# 1725
int clockRate; 
# 1726
size_t totalConstMem; 
# 1727
int major; 
# 1728
int minor; 
# 1729
size_t textureAlignment; 
# 1730
size_t texturePitchAlignment; 
# 1731
int deviceOverlap; 
# 1732
int multiProcessorCount; 
# 1733
int kernelExecTimeoutEnabled; 
# 1734
int integrated; 
# 1735
int canMapHostMemory; 
# 1736
int computeMode; 
# 1737
int maxTexture1D; 
# 1738
int maxTexture1DMipmap; 
# 1739
int maxTexture1DLinear; 
# 1740
int maxTexture2D[2]; 
# 1741
int maxTexture2DMipmap[2]; 
# 1742
int maxTexture2DLinear[3]; 
# 1743
int maxTexture2DGather[2]; 
# 1744
int maxTexture3D[3]; 
# 1745
int maxTexture3DAlt[3]; 
# 1746
int maxTextureCubemap; 
# 1747
int maxTexture1DLayered[2]; 
# 1748
int maxTexture2DLayered[3]; 
# 1749
int maxTextureCubemapLayered[2]; 
# 1750
int maxSurface1D; 
# 1751
int maxSurface2D[2]; 
# 1752
int maxSurface3D[3]; 
# 1753
int maxSurface1DLayered[2]; 
# 1754
int maxSurface2DLayered[3]; 
# 1755
int maxSurfaceCubemap; 
# 1756
int maxSurfaceCubemapLayered[2]; 
# 1757
size_t surfaceAlignment; 
# 1758
int concurrentKernels; 
# 1759
int ECCEnabled; 
# 1760
int pciBusID; 
# 1761
int pciDeviceID; 
# 1762
int pciDomainID; 
# 1763
int tccDriver; 
# 1764
int asyncEngineCount; 
# 1765
int unifiedAddressing; 
# 1766
int memoryClockRate; 
# 1767
int memoryBusWidth; 
# 1768
int l2CacheSize; 
# 1769
int persistingL2CacheMaxSize; 
# 1770
int maxThreadsPerMultiProcessor; 
# 1771
int streamPrioritiesSupported; 
# 1772
int globalL1CacheSupported; 
# 1773
int localL1CacheSupported; 
# 1774
size_t sharedMemPerMultiprocessor; 
# 1775
int regsPerMultiprocessor; 
# 1776
int managedMemory; 
# 1777
int isMultiGpuBoard; 
# 1778
int multiGpuBoardGroupID; 
# 1779
int hostNativeAtomicSupported; 
# 1780
int singleToDoublePrecisionPerfRatio; 
# 1781
int pageableMemoryAccess; 
# 1782
int concurrentManagedAccess; 
# 1783
int computePreemptionSupported; 
# 1784
int canUseHostPointerForRegisteredMem; 
# 1785
int cooperativeLaunch; 
# 1786
int cooperativeMultiDeviceLaunch; 
# 1787
size_t sharedMemPerBlockOptin; 
# 1788
int pageableMemoryAccessUsesHostPageTables; 
# 1789
int directManagedMemAccessFromHost; 
# 1790
int maxBlocksPerMultiProcessor; 
# 1791
int accessPolicyMaxWindowSize; 
# 1792
size_t reservedSharedMemPerBlock; 
# 1793
}; 
#endif
# 1889 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
typedef 
# 1886
struct cudaIpcEventHandle_st { 
# 1888
char reserved[64]; 
# 1889
} cudaIpcEventHandle_t; 
#endif
# 1897 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
typedef 
# 1894
struct cudaIpcMemHandle_st { 
# 1896
char reserved[64]; 
# 1897
} cudaIpcMemHandle_t; 
#endif
# 1902 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1902
enum cudaExternalMemoryHandleType { 
# 1906
cudaExternalMemoryHandleTypeOpaqueFd = 1, 
# 1910
cudaExternalMemoryHandleTypeOpaqueWin32, 
# 1914
cudaExternalMemoryHandleTypeOpaqueWin32Kmt, 
# 1918
cudaExternalMemoryHandleTypeD3D12Heap, 
# 1922
cudaExternalMemoryHandleTypeD3D12Resource, 
# 1926
cudaExternalMemoryHandleTypeD3D11Resource, 
# 1930
cudaExternalMemoryHandleTypeD3D11ResourceKmt, 
# 1934
cudaExternalMemoryHandleTypeNvSciBuf
# 1935
}; 
#endif
# 1977 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 1977
struct cudaExternalMemoryHandleDesc { 
# 1981
cudaExternalMemoryHandleType type; 
# 1982
union { 
# 1988
int fd; 
# 2004 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
struct { 
# 2008
void *handle; 
# 2013
const void *name; 
# 2014
} win32; 
# 2019
const void *nvSciBufObject; 
# 2020
} handle; 
# 2024
unsigned long long size; 
# 2028
unsigned flags; __pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)
# 2029
}; 
#endif
# 2034 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 2034
struct cudaExternalMemoryBufferDesc { 
# 2038
unsigned long long offset; 
# 2042
unsigned long long size; 
# 2046
unsigned flags; 
# 2047
}; 
#endif
# 2052 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 2052
struct cudaExternalMemoryMipmappedArrayDesc { 
# 2057
unsigned long long offset; 
# 2061
cudaChannelFormatDesc formatDesc; 
# 2065
cudaExtent extent; 
# 2070
unsigned flags; 
# 2074
unsigned numLevels; 
# 2075
}; 
#endif
# 2080 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 2080
enum cudaExternalSemaphoreHandleType { 
# 2084
cudaExternalSemaphoreHandleTypeOpaqueFd = 1, 
# 2088
cudaExternalSemaphoreHandleTypeOpaqueWin32, 
# 2092
cudaExternalSemaphoreHandleTypeOpaqueWin32Kmt, 
# 2096
cudaExternalSemaphoreHandleTypeD3D12Fence, 
# 2100
cudaExternalSemaphoreHandleTypeD3D11Fence, 
# 2104
cudaExternalSemaphoreHandleTypeNvSciSync, 
# 2108
cudaExternalSemaphoreHandleTypeKeyedMutex, 
# 2112
cudaExternalSemaphoreHandleTypeKeyedMutexKmt
# 2113
}; 
#endif
# 2118 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 2118
struct cudaExternalSemaphoreHandleDesc { 
# 2122
cudaExternalSemaphoreHandleType type; 
# 2123
union { 
# 2128
int fd; 
# 2143 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
struct { 
# 2147
void *handle; 
# 2152
const void *name; 
# 2153
} win32; 
# 2157
const void *nvSciSyncObj; 
# 2158
} handle; 
# 2162
unsigned flags; __pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)__pad__(volatile char:8;)
# 2163
}; 
#endif
# 2168 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 2168
struct cudaExternalSemaphoreSignalParams { 
# 2169
struct { 
# 2173
struct { 
# 2177
unsigned long long value; 
# 2178
} fence; 
# 2179
union { 
# 2184
void *fence; 
# 2185
unsigned long long reserved; 
# 2186
} nvSciSync; 
# 2190
struct { 
# 2194
unsigned long long key; 
# 2195
} keyedMutex; 
# 2196
} params; 
# 2207 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
unsigned flags; 
# 2208
}; 
#endif
# 2213 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 2213
struct cudaExternalSemaphoreWaitParams { 
# 2214
struct { 
# 2218
struct { 
# 2222
unsigned long long value; 
# 2223
} fence; 
# 2224
union { 
# 2229
void *fence; 
# 2230
unsigned long long reserved; 
# 2231
} nvSciSync; 
# 2235
struct { 
# 2239
unsigned long long key; 
# 2243
unsigned timeoutMs; 
# 2244
} keyedMutex; 
# 2245
} params; 
# 2256 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
unsigned flags; 
# 2257
}; 
#endif
# 2269 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
typedef cudaError 
# 2269
cudaError_t; 
#endif
# 2274 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
typedef struct CUstream_st *
# 2274
cudaStream_t; 
#endif
# 2279 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
typedef struct CUevent_st *
# 2279
cudaEvent_t; 
#endif
# 2284 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
typedef cudaGraphicsResource *
# 2284
cudaGraphicsResource_t; 
#endif
# 2289 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
typedef cudaOutputMode 
# 2289
cudaOutputMode_t; 
#endif
# 2294 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
typedef struct CUexternalMemory_st *
# 2294
cudaExternalMemory_t; 
#endif
# 2299 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
typedef struct CUexternalSemaphore_st *
# 2299
cudaExternalSemaphore_t; 
#endif
# 2304 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
typedef struct CUgraph_st *
# 2304
cudaGraph_t; 
#endif
# 2309 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
typedef struct CUgraphNode_st *
# 2309
cudaGraphNode_t; 
#endif
# 2314 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
typedef struct CUfunc_st *
# 2314
cudaFunction_t; 
#endif
# 2319 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 2319
enum cudaCGScope { 
# 2320
cudaCGScopeInvalid, 
# 2321
cudaCGScopeGrid, 
# 2322
cudaCGScopeMultiGrid
# 2323
}; 
#endif
# 2328 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 2328
struct cudaLaunchParams { 
# 2330
void *func; 
# 2331
dim3 gridDim; 
# 2332
dim3 blockDim; 
# 2333
void **args; 
# 2334
size_t sharedMem; 
# 2335
cudaStream_t stream; 
# 2336
}; 
#endif
# 2341 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 2341
struct cudaKernelNodeParams { 
# 2342
void *func; 
# 2343
dim3 gridDim; 
# 2344
dim3 blockDim; 
# 2345
unsigned sharedMemBytes; 
# 2346
void **kernelParams; 
# 2347
void **extra; 
# 2348
}; 
#endif
# 2353 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
#if 0
# 2353
enum cudaGraphNodeType { 
# 2354
cudaGraphNodeTypeKernel, 
# 2355
cudaGraphNodeTypeMemcpy, 
# 2356
cudaGraphNodeTypeMemset, 
# 2357
cudaGraphNodeTypeHost, 
# 2358
cudaGraphNodeTypeGraph, 
# 2359
cudaGraphNodeTypeEmpty, 
# 2360
cudaGraphNodeTypeCount
# 2361
}; 
#endif
# 2366 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_types.h"
typedef struct CUgraphExec_st *cudaGraphExec_t; 
# 2371
#if 0
# 2371
enum cudaGraphExecUpdateResult { 
# 2372
cudaGraphExecUpdateSuccess, 
# 2373
cudaGraphExecUpdateError, 
# 2374
cudaGraphExecUpdateErrorTopologyChanged, 
# 2375
cudaGraphExecUpdateErrorNodeTypeChanged, 
# 2376
cudaGraphExecUpdateErrorFunctionChanged, 
# 2377
cudaGraphExecUpdateErrorParametersChanged, 
# 2378
cudaGraphExecUpdateErrorNotSupported
# 2379
}; 
#endif
# 84 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_types.h"
#if 0
# 84
enum cudaSurfaceBoundaryMode { 
# 86
cudaBoundaryModeZero, 
# 87
cudaBoundaryModeClamp, 
# 88
cudaBoundaryModeTrap
# 89
}; 
#endif
# 94 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_types.h"
#if 0
# 94
enum cudaSurfaceFormatMode { 
# 96
cudaFormatModeForced, 
# 97
cudaFormatModeAuto
# 98
}; 
#endif
# 103 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_types.h"
#if 0
# 103
struct surfaceReference { 
# 108
cudaChannelFormatDesc channelDesc; 
# 109
}; 
#endif
# 114 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_types.h"
#if 0
typedef unsigned long long 
# 114
cudaSurfaceObject_t; 
#endif
# 84 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_types.h"
#if 0
# 84
enum cudaTextureAddressMode { 
# 86
cudaAddressModeWrap, 
# 87
cudaAddressModeClamp, 
# 88
cudaAddressModeMirror, 
# 89
cudaAddressModeBorder
# 90
}; 
#endif
# 95 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_types.h"
#if 0
# 95
enum cudaTextureFilterMode { 
# 97
cudaFilterModePoint, 
# 98
cudaFilterModeLinear
# 99
}; 
#endif
# 104 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_types.h"
#if 0
# 104
enum cudaTextureReadMode { 
# 106
cudaReadModeElementType, 
# 107
cudaReadModeNormalizedFloat
# 108
}; 
#endif
# 113 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_types.h"
#if 0
# 113
struct textureReference { 
# 118
int normalized; 
# 122
cudaTextureFilterMode filterMode; 
# 126
cudaTextureAddressMode addressMode[3]; 
# 130
cudaChannelFormatDesc channelDesc; 
# 134
int sRGB; 
# 138
unsigned maxAnisotropy; 
# 142
cudaTextureFilterMode mipmapFilterMode; 
# 146
float mipmapLevelBias; 
# 150
float minMipmapLevelClamp; 
# 154
float maxMipmapLevelClamp; 
# 158
int disableTrilinearOptimization; 
# 159
int __cudaReserved[14]; 
# 160
}; 
#endif
# 165 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_types.h"
#if 0
# 165
struct cudaTextureDesc { 
# 170
cudaTextureAddressMode addressMode[3]; 
# 174
cudaTextureFilterMode filterMode; 
# 178
cudaTextureReadMode readMode; 
# 182
int sRGB; 
# 186
float borderColor[4]; 
# 190
int normalizedCoords; 
# 194
unsigned maxAnisotropy; 
# 198
cudaTextureFilterMode mipmapFilterMode; 
# 202
float mipmapLevelBias; 
# 206
float minMipmapLevelClamp; 
# 210
float maxMipmapLevelClamp; 
# 214
int disableTrilinearOptimization; 
# 215
}; 
#endif
# 220 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_types.h"
#if 0
typedef unsigned long long 
# 220
cudaTextureObject_t; 
#endif
# 84 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/library_types.h"
typedef 
# 54
enum cudaDataType_t { 
# 56
CUDA_R_16F = 2, 
# 57
CUDA_C_16F = 6, 
# 58
CUDA_R_16BF = 14, 
# 59
CUDA_C_16BF, 
# 60
CUDA_R_32F = 0, 
# 61
CUDA_C_32F = 4, 
# 62
CUDA_R_64F = 1, 
# 63
CUDA_C_64F = 5, 
# 64
CUDA_R_4I = 16, 
# 65
CUDA_C_4I, 
# 66
CUDA_R_4U, 
# 67
CUDA_C_4U, 
# 68
CUDA_R_8I = 3, 
# 69
CUDA_C_8I = 7, 
# 70
CUDA_R_8U, 
# 71
CUDA_C_8U, 
# 72
CUDA_R_16I = 20, 
# 73
CUDA_C_16I, 
# 74
CUDA_R_16U, 
# 75
CUDA_C_16U, 
# 76
CUDA_R_32I = 10, 
# 77
CUDA_C_32I, 
# 78
CUDA_R_32U, 
# 79
CUDA_C_32U, 
# 80
CUDA_R_64I = 24, 
# 81
CUDA_C_64I, 
# 82
CUDA_R_64U, 
# 83
CUDA_C_64U
# 84
} cudaDataType; 
# 92
typedef 
# 87
enum libraryPropertyType_t { 
# 89
MAJOR_VERSION, 
# 90
MINOR_VERSION, 
# 91
PATCH_LEVEL
# 92
} libraryPropertyType; 
# 121 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_device_runtime_api.h"
extern "C" {
# 123
extern cudaError_t cudaDeviceGetAttribute(int * value, cudaDeviceAttr attr, int device); 
# 124
extern cudaError_t cudaDeviceGetLimit(size_t * pValue, cudaLimit limit); 
# 125
extern cudaError_t cudaDeviceGetCacheConfig(cudaFuncCache * pCacheConfig); 
# 126
extern cudaError_t cudaDeviceGetSharedMemConfig(cudaSharedMemConfig * pConfig); 
# 127
extern cudaError_t cudaDeviceSynchronize(); 
# 128
extern cudaError_t cudaGetLastError(); 
# 129
extern cudaError_t cudaPeekAtLastError(); 
# 130
extern const char *cudaGetErrorString(cudaError_t error); 
# 131
extern const char *cudaGetErrorName(cudaError_t error); 
# 132
extern cudaError_t cudaGetDeviceCount(int * count); 
# 133
extern cudaError_t cudaGetDevice(int * device); 
# 134
extern cudaError_t cudaStreamCreateWithFlags(cudaStream_t * pStream, unsigned flags); 
# 135
extern cudaError_t cudaStreamDestroy(cudaStream_t stream); 
# 136
extern cudaError_t cudaStreamWaitEvent(cudaStream_t stream, cudaEvent_t event, unsigned flags); 
# 137
__attribute__((unused)) extern cudaError_t cudaStreamWaitEvent_ptsz(cudaStream_t stream, cudaEvent_t event, unsigned flags); 
# 138
extern cudaError_t cudaEventCreateWithFlags(cudaEvent_t * event, unsigned flags); 
# 139
extern cudaError_t cudaEventRecord(cudaEvent_t event, cudaStream_t stream); 
# 140
__attribute__((unused)) extern cudaError_t cudaEventRecord_ptsz(cudaEvent_t event, cudaStream_t stream); 
# 141
extern cudaError_t cudaEventDestroy(cudaEvent_t event); 
# 142
extern cudaError_t cudaFuncGetAttributes(cudaFuncAttributes * attr, const void * func); 
# 143
extern cudaError_t cudaFree(void * devPtr); 
# 144
extern cudaError_t cudaMalloc(void ** devPtr, size_t size); 
# 145
extern cudaError_t cudaMemcpyAsync(void * dst, const void * src, size_t count, cudaMemcpyKind kind, cudaStream_t stream); 
# 146
__attribute__((unused)) extern cudaError_t cudaMemcpyAsync_ptsz(void * dst, const void * src, size_t count, cudaMemcpyKind kind, cudaStream_t stream); 
# 147
extern cudaError_t cudaMemcpy2DAsync(void * dst, size_t dpitch, const void * src, size_t spitch, size_t width, size_t height, cudaMemcpyKind kind, cudaStream_t stream); 
# 148
__attribute__((unused)) extern cudaError_t cudaMemcpy2DAsync_ptsz(void * dst, size_t dpitch, const void * src, size_t spitch, size_t width, size_t height, cudaMemcpyKind kind, cudaStream_t stream); 
# 149
extern cudaError_t cudaMemcpy3DAsync(const cudaMemcpy3DParms * p, cudaStream_t stream); 
# 150
__attribute__((unused)) extern cudaError_t cudaMemcpy3DAsync_ptsz(const cudaMemcpy3DParms * p, cudaStream_t stream); 
# 151
extern cudaError_t cudaMemsetAsync(void * devPtr, int value, size_t count, cudaStream_t stream); 
# 152
__attribute__((unused)) extern cudaError_t cudaMemsetAsync_ptsz(void * devPtr, int value, size_t count, cudaStream_t stream); 
# 153
extern cudaError_t cudaMemset2DAsync(void * devPtr, size_t pitch, int value, size_t width, size_t height, cudaStream_t stream); 
# 154
__attribute__((unused)) extern cudaError_t cudaMemset2DAsync_ptsz(void * devPtr, size_t pitch, int value, size_t width, size_t height, cudaStream_t stream); 
# 155
extern cudaError_t cudaMemset3DAsync(cudaPitchedPtr pitchedDevPtr, int value, cudaExtent extent, cudaStream_t stream); 
# 156
__attribute__((unused)) extern cudaError_t cudaMemset3DAsync_ptsz(cudaPitchedPtr pitchedDevPtr, int value, cudaExtent extent, cudaStream_t stream); 
# 157
extern cudaError_t cudaRuntimeGetVersion(int * runtimeVersion); 
# 178 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_device_runtime_api.h"
__attribute__((unused)) extern void *cudaGetParameterBuffer(size_t alignment, size_t size); 
# 206 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_device_runtime_api.h"
__attribute__((unused)) extern void *cudaGetParameterBufferV2(void * func, dim3 gridDimension, dim3 blockDimension, unsigned sharedMemSize); 
# 207
__attribute__((unused)) extern cudaError_t cudaLaunchDevice_ptsz(void * func, void * parameterBuffer, dim3 gridDimension, dim3 blockDimension, unsigned sharedMemSize, cudaStream_t stream); 
# 208
__attribute__((unused)) extern cudaError_t cudaLaunchDeviceV2_ptsz(void * parameterBuffer, cudaStream_t stream); 
# 226 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_device_runtime_api.h"
__attribute__((unused)) extern cudaError_t cudaLaunchDevice(void * func, void * parameterBuffer, dim3 gridDimension, dim3 blockDimension, unsigned sharedMemSize, cudaStream_t stream); 
# 227
__attribute__((unused)) extern cudaError_t cudaLaunchDeviceV2(void * parameterBuffer, cudaStream_t stream); 
# 230
extern cudaError_t cudaOccupancyMaxActiveBlocksPerMultiprocessor(int * numBlocks, const void * func, int blockSize, size_t dynamicSmemSize); 
# 231
extern cudaError_t cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(int * numBlocks, const void * func, int blockSize, size_t dynamicSmemSize, unsigned flags); 
# 233
__attribute__((unused)) extern unsigned long long cudaCGGetIntrinsicHandle(cudaCGScope scope); 
# 234
__attribute__((unused)) extern cudaError_t cudaCGSynchronize(unsigned long long handle, unsigned flags); 
# 235
__attribute__((unused)) extern cudaError_t cudaCGSynchronizeGrid(unsigned long long handle, unsigned flags); 
# 236
__attribute__((unused)) extern cudaError_t cudaCGGetSize(unsigned * numThreads, unsigned * numGrids, unsigned long long handle); 
# 237
__attribute__((unused)) extern cudaError_t cudaCGGetRank(unsigned * threadRank, unsigned * gridRank, unsigned long long handle); 
# 238
}
# 240
template< class T> static inline cudaError_t cudaMalloc(T ** devPtr, size_t size); 
# 241
template< class T> static inline cudaError_t cudaFuncGetAttributes(cudaFuncAttributes * attr, T * entry); 
# 242
template< class T> static inline cudaError_t cudaOccupancyMaxActiveBlocksPerMultiprocessor(int * numBlocks, T func, int blockSize, size_t dynamicSmemSize); 
# 243
template< class T> static inline cudaError_t cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(int * numBlocks, T func, int blockSize, size_t dynamicSmemSize, unsigned flags); 
# 248 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern "C" {
# 283 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceReset(); 
# 304 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceSynchronize(); 
# 391 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceSetLimit(cudaLimit limit, size_t value); 
# 426 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceGetLimit(size_t * pValue, cudaLimit limit); 
# 459 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceGetCacheConfig(cudaFuncCache * pCacheConfig); 
# 496 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceGetStreamPriorityRange(int * leastPriority, int * greatestPriority); 
# 540 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceSetCacheConfig(cudaFuncCache cacheConfig); 
# 571 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceGetSharedMemConfig(cudaSharedMemConfig * pConfig); 
# 615 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceSetSharedMemConfig(cudaSharedMemConfig config); 
# 642 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceGetByPCIBusId(int * device, const char * pciBusId); 
# 672 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceGetPCIBusId(char * pciBusId, int len, int device); 
# 720 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaIpcGetEventHandle(cudaIpcEventHandle_t * handle, cudaEvent_t event); 
# 761 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaIpcOpenEventHandle(cudaEvent_t * event, cudaIpcEventHandle_t handle); 
# 804 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaIpcGetMemHandle(cudaIpcMemHandle_t * handle, void * devPtr); 
# 864 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaIpcOpenMemHandle(void ** devPtr, cudaIpcMemHandle_t handle, unsigned flags); 
# 899 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaIpcCloseMemHandle(void * devPtr); 
# 941 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaThreadExit(); 
# 967 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaThreadSynchronize(); 
# 1016 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaThreadSetLimit(cudaLimit limit, size_t value); 
# 1049 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaThreadGetLimit(size_t * pValue, cudaLimit limit); 
# 1085 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaThreadGetCacheConfig(cudaFuncCache * pCacheConfig); 
# 1132 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaThreadSetCacheConfig(cudaFuncCache cacheConfig); 
# 1191 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGetLastError(); 
# 1237 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaPeekAtLastError(); 
# 1253 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern const char *cudaGetErrorName(cudaError_t error); 
# 1269 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern const char *cudaGetErrorString(cudaError_t error); 
# 1297 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGetDeviceCount(int * count); 
# 1575 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGetDeviceProperties(cudaDeviceProp * prop, int device); 
# 1765 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceGetAttribute(int * value, cudaDeviceAttr attr, int device); 
# 1814 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceGetNvSciSyncAttributes(void * nvSciSyncAttrList, int device, int flags); 
# 1854 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceGetP2PAttribute(int * value, cudaDeviceP2PAttr attr, int srcDevice, int dstDevice); 
# 1875 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaChooseDevice(int * device, const cudaDeviceProp * prop); 
# 1912 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaSetDevice(int device); 
# 1933 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGetDevice(int * device); 
# 1964 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaSetValidDevices(int * device_arr, int len); 
# 2033 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaSetDeviceFlags(unsigned flags); 
# 2079 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGetDeviceFlags(unsigned * flags); 
# 2119 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamCreate(cudaStream_t * pStream); 
# 2151 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamCreateWithFlags(cudaStream_t * pStream, unsigned flags); 
# 2197 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamCreateWithPriority(cudaStream_t * pStream, unsigned flags, int priority); 
# 2224 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamGetPriority(cudaStream_t hStream, int * priority); 
# 2249 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamGetFlags(cudaStream_t hStream, unsigned * flags); 
# 2264 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaCtxResetPersistingL2Cache(); 
# 2284 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamCopyAttributes(cudaStream_t dst, cudaStream_t src); 
# 2305 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamGetAttribute(cudaStream_t hStream, cudaStreamAttrID attr, cudaStreamAttrValue * value_out); 
# 2329 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamSetAttribute(cudaStream_t hStream, cudaStreamAttrID attr, const cudaStreamAttrValue * value); 
# 2362 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamDestroy(cudaStream_t stream); 
# 2388 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamWaitEvent(cudaStream_t stream, cudaEvent_t event, unsigned flags); 
# 2396
typedef void (*cudaStreamCallback_t)(cudaStream_t stream, cudaError_t status, void * userData); 
# 2463 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamAddCallback(cudaStream_t stream, cudaStreamCallback_t callback, void * userData, unsigned flags); 
# 2487 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamSynchronize(cudaStream_t stream); 
# 2512 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamQuery(cudaStream_t stream); 
# 2595 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamAttachMemAsync(cudaStream_t stream, void * devPtr, size_t length = 0, unsigned flags = 4); 
# 2631 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamBeginCapture(cudaStream_t stream, cudaStreamCaptureMode mode); 
# 2682 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaThreadExchangeStreamCaptureMode(cudaStreamCaptureMode * mode); 
# 2710 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamEndCapture(cudaStream_t stream, cudaGraph_t * pGraph); 
# 2748 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamIsCapturing(cudaStream_t stream, cudaStreamCaptureStatus * pCaptureStatus); 
# 2776 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaStreamGetCaptureInfo(cudaStream_t stream, cudaStreamCaptureStatus * pCaptureStatus, unsigned long long * pId); 
# 2813 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaEventCreate(cudaEvent_t * event); 
# 2850 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaEventCreateWithFlags(cudaEvent_t * event, unsigned flags); 
# 2889 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaEventRecord(cudaEvent_t event, cudaStream_t stream = 0); 
# 2920 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaEventQuery(cudaEvent_t event); 
# 2950 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaEventSynchronize(cudaEvent_t event); 
# 2978 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaEventDestroy(cudaEvent_t event); 
# 3021 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaEventElapsedTime(float * ms, cudaEvent_t start, cudaEvent_t end); 
# 3198 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaImportExternalMemory(cudaExternalMemory_t * extMem_out, const cudaExternalMemoryHandleDesc * memHandleDesc); 
# 3252 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaExternalMemoryGetMappedBuffer(void ** devPtr, cudaExternalMemory_t extMem, const cudaExternalMemoryBufferDesc * bufferDesc); 
# 3311 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaExternalMemoryGetMappedMipmappedArray(cudaMipmappedArray_t * mipmap, cudaExternalMemory_t extMem, const cudaExternalMemoryMipmappedArrayDesc * mipmapDesc); 
# 3334 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDestroyExternalMemory(cudaExternalMemory_t extMem); 
# 3465 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaImportExternalSemaphore(cudaExternalSemaphore_t * extSem_out, const cudaExternalSemaphoreHandleDesc * semHandleDesc); 
# 3530 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaSignalExternalSemaphoresAsync(const cudaExternalSemaphore_t * extSemArray, const cudaExternalSemaphoreSignalParams * paramsArray, unsigned numExtSems, cudaStream_t stream = 0); 
# 3604 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaWaitExternalSemaphoresAsync(const cudaExternalSemaphore_t * extSemArray, const cudaExternalSemaphoreWaitParams * paramsArray, unsigned numExtSems, cudaStream_t stream = 0); 
# 3626 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDestroyExternalSemaphore(cudaExternalSemaphore_t extSem); 
# 3691 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaLaunchKernel(const void * func, dim3 gridDim, dim3 blockDim, void ** args, size_t sharedMem, cudaStream_t stream); 
# 3748 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaLaunchCooperativeKernel(const void * func, dim3 gridDim, dim3 blockDim, void ** args, size_t sharedMem, cudaStream_t stream); 
# 3847 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaLaunchCooperativeKernelMultiDevice(cudaLaunchParams * launchParamsList, unsigned numDevices, unsigned flags = 0); 
# 3896 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaFuncSetCacheConfig(const void * func, cudaFuncCache cacheConfig); 
# 3951 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaFuncSetSharedMemConfig(const void * func, cudaSharedMemConfig config); 
# 3986 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaFuncGetAttributes(cudaFuncAttributes * attr, const void * func); 
# 4025 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaFuncSetAttribute(const void * func, cudaFuncAttribute attr, int value); 
# 4049 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaSetDoubleForDevice(double * d); 
# 4073 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaSetDoubleForHost(double * d); 
# 4139 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaLaunchHostFunc(cudaStream_t stream, cudaHostFn_t fn, void * userData); 
# 4196 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaOccupancyMaxActiveBlocksPerMultiprocessor(int * numBlocks, const void * func, int blockSize, size_t dynamicSMemSize); 
# 4225 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaOccupancyAvailableDynamicSMemPerBlock(size_t * dynamicSmemSize, const void * func, int numBlocks, int blockSize); 
# 4270 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(int * numBlocks, const void * func, int blockSize, size_t dynamicSMemSize, unsigned flags); 
# 4390 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMallocManaged(void ** devPtr, size_t size, unsigned flags = 1); 
# 4421 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMalloc(void ** devPtr, size_t size); 
# 4454 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMallocHost(void ** ptr, size_t size); 
# 4497 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMallocPitch(void ** devPtr, size_t * pitch, size_t width, size_t height); 
# 4543 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMallocArray(cudaArray_t * array, const cudaChannelFormatDesc * desc, size_t width, size_t height = 0, unsigned flags = 0); 
# 4572 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaFree(void * devPtr); 
# 4595 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaFreeHost(void * ptr); 
# 4618 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaFreeArray(cudaArray_t array); 
# 4641 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaFreeMipmappedArray(cudaMipmappedArray_t mipmappedArray); 
# 4707 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaHostAlloc(void ** pHost, size_t size, unsigned flags); 
# 4791 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaHostRegister(void * ptr, size_t size, unsigned flags); 
# 4814 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaHostUnregister(void * ptr); 
# 4859 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaHostGetDevicePointer(void ** pDevice, void * pHost, unsigned flags); 
# 4881 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaHostGetFlags(unsigned * pFlags, void * pHost); 
# 4920 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMalloc3D(cudaPitchedPtr * pitchedDevPtr, cudaExtent extent); 
# 5059 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMalloc3DArray(cudaArray_t * array, const cudaChannelFormatDesc * desc, cudaExtent extent, unsigned flags = 0); 
# 5198 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMallocMipmappedArray(cudaMipmappedArray_t * mipmappedArray, const cudaChannelFormatDesc * desc, cudaExtent extent, unsigned numLevels, unsigned flags = 0); 
# 5231 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGetMipmappedArrayLevel(cudaArray_t * levelArray, cudaMipmappedArray_const_t mipmappedArray, unsigned level); 
# 5336 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpy3D(const cudaMemcpy3DParms * p); 
# 5367 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpy3DPeer(const cudaMemcpy3DPeerParms * p); 
# 5485 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpy3DAsync(const cudaMemcpy3DParms * p, cudaStream_t stream = 0); 
# 5511 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpy3DPeerAsync(const cudaMemcpy3DPeerParms * p, cudaStream_t stream = 0); 
# 5533 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemGetInfo(size_t * free, size_t * total); 
# 5559 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaArrayGetInfo(cudaChannelFormatDesc * desc, cudaExtent * extent, unsigned * flags, cudaArray_t array); 
# 5603 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpy(void * dst, const void * src, size_t count, cudaMemcpyKind kind); 
# 5638 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpyPeer(void * dst, int dstDevice, const void * src, int srcDevice, size_t count); 
# 5687 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpy2D(void * dst, size_t dpitch, const void * src, size_t spitch, size_t width, size_t height, cudaMemcpyKind kind); 
# 5737 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpy2DToArray(cudaArray_t dst, size_t wOffset, size_t hOffset, const void * src, size_t spitch, size_t width, size_t height, cudaMemcpyKind kind); 
# 5787 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpy2DFromArray(void * dst, size_t dpitch, cudaArray_const_t src, size_t wOffset, size_t hOffset, size_t width, size_t height, cudaMemcpyKind kind); 
# 5834 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpy2DArrayToArray(cudaArray_t dst, size_t wOffsetDst, size_t hOffsetDst, cudaArray_const_t src, size_t wOffsetSrc, size_t hOffsetSrc, size_t width, size_t height, cudaMemcpyKind kind = cudaMemcpyDeviceToDevice); 
# 5877 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpyToSymbol(const void * symbol, const void * src, size_t count, size_t offset = 0, cudaMemcpyKind kind = cudaMemcpyHostToDevice); 
# 5920 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpyFromSymbol(void * dst, const void * symbol, size_t count, size_t offset = 0, cudaMemcpyKind kind = cudaMemcpyDeviceToHost); 
# 5977 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpyAsync(void * dst, const void * src, size_t count, cudaMemcpyKind kind, cudaStream_t stream = 0); 
# 6012 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpyPeerAsync(void * dst, int dstDevice, const void * src, int srcDevice, size_t count, cudaStream_t stream = 0); 
# 6075 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpy2DAsync(void * dst, size_t dpitch, const void * src, size_t spitch, size_t width, size_t height, cudaMemcpyKind kind, cudaStream_t stream = 0); 
# 6133 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpy2DToArrayAsync(cudaArray_t dst, size_t wOffset, size_t hOffset, const void * src, size_t spitch, size_t width, size_t height, cudaMemcpyKind kind, cudaStream_t stream = 0); 
# 6190 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpy2DFromArrayAsync(void * dst, size_t dpitch, cudaArray_const_t src, size_t wOffset, size_t hOffset, size_t width, size_t height, cudaMemcpyKind kind, cudaStream_t stream = 0); 
# 6241 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpyToSymbolAsync(const void * symbol, const void * src, size_t count, size_t offset, cudaMemcpyKind kind, cudaStream_t stream = 0); 
# 6292 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemcpyFromSymbolAsync(void * dst, const void * symbol, size_t count, size_t offset, cudaMemcpyKind kind, cudaStream_t stream = 0); 
# 6321 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemset(void * devPtr, int value, size_t count); 
# 6355 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemset2D(void * devPtr, size_t pitch, int value, size_t width, size_t height); 
# 6399 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemset3D(cudaPitchedPtr pitchedDevPtr, int value, cudaExtent extent); 
# 6435 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemsetAsync(void * devPtr, int value, size_t count, cudaStream_t stream = 0); 
# 6476 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemset2DAsync(void * devPtr, size_t pitch, int value, size_t width, size_t height, cudaStream_t stream = 0); 
# 6527 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemset3DAsync(cudaPitchedPtr pitchedDevPtr, int value, cudaExtent extent, cudaStream_t stream = 0); 
# 6555 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGetSymbolAddress(void ** devPtr, const void * symbol); 
# 6582 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGetSymbolSize(size_t * size, const void * symbol); 
# 6652 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemPrefetchAsync(const void * devPtr, size_t count, int dstDevice, cudaStream_t stream = 0); 
# 6768 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemAdvise(const void * devPtr, size_t count, cudaMemoryAdvise advice, int device); 
# 6827 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemRangeGetAttribute(void * data, size_t dataSize, cudaMemRangeAttribute attribute, const void * devPtr, size_t count); 
# 6866 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaMemRangeGetAttributes(void ** data, size_t * dataSizes, cudaMemRangeAttribute * attributes, size_t numAttributes, const void * devPtr, size_t count); 
# 6926 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaMemcpyToArray(cudaArray_t dst, size_t wOffset, size_t hOffset, const void * src, size_t count, cudaMemcpyKind kind); 
# 6968 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaMemcpyFromArray(void * dst, cudaArray_const_t src, size_t wOffset, size_t hOffset, size_t count, cudaMemcpyKind kind); 
# 7011 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaMemcpyArrayToArray(cudaArray_t dst, size_t wOffsetDst, size_t hOffsetDst, cudaArray_const_t src, size_t wOffsetSrc, size_t hOffsetSrc, size_t count, cudaMemcpyKind kind = cudaMemcpyDeviceToDevice); 
# 7062 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaMemcpyToArrayAsync(cudaArray_t dst, size_t wOffset, size_t hOffset, const void * src, size_t count, cudaMemcpyKind kind, cudaStream_t stream = 0); 
# 7112 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaMemcpyFromArrayAsync(void * dst, cudaArray_const_t src, size_t wOffset, size_t hOffset, size_t count, cudaMemcpyKind kind, cudaStream_t stream = 0); 
# 7267 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaPointerGetAttributes(cudaPointerAttributes * attributes, const void * ptr); 
# 7308 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceCanAccessPeer(int * canAccessPeer, int device, int peerDevice); 
# 7350 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceEnablePeerAccess(int peerDevice, unsigned flags); 
# 7372 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDeviceDisablePeerAccess(int peerDevice); 
# 7435 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphicsUnregisterResource(cudaGraphicsResource_t resource); 
# 7470 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphicsResourceSetMapFlags(cudaGraphicsResource_t resource, unsigned flags); 
# 7509 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphicsMapResources(int count, cudaGraphicsResource_t * resources, cudaStream_t stream = 0); 
# 7544 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphicsUnmapResources(int count, cudaGraphicsResource_t * resources, cudaStream_t stream = 0); 
# 7576 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphicsResourceGetMappedPointer(void ** devPtr, size_t * size, cudaGraphicsResource_t resource); 
# 7614 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphicsSubResourceGetMappedArray(cudaArray_t * array, cudaGraphicsResource_t resource, unsigned arrayIndex, unsigned mipLevel); 
# 7643 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphicsResourceGetMappedMipmappedArray(cudaMipmappedArray_t * mipmappedArray, cudaGraphicsResource_t resource); 
# 7714 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaBindTexture(size_t * offset, const textureReference * texref, const void * devPtr, const cudaChannelFormatDesc * desc, size_t size = ((2147483647) * 2U) + 1U); 
# 7773 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaBindTexture2D(size_t * offset, const textureReference * texref, const void * devPtr, const cudaChannelFormatDesc * desc, size_t width, size_t height, size_t pitch); 
# 7811 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaBindTextureToArray(const textureReference * texref, cudaArray_const_t array, const cudaChannelFormatDesc * desc); 
# 7851 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaBindTextureToMipmappedArray(const textureReference * texref, cudaMipmappedArray_const_t mipmappedArray, const cudaChannelFormatDesc * desc); 
# 7877 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaUnbindTexture(const textureReference * texref); 
# 7906 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaGetTextureAlignmentOffset(size_t * offset, const textureReference * texref); 
# 7936 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaGetTextureReference(const textureReference ** texref, const void * symbol); 
# 7981 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaBindSurfaceToArray(const surfaceReference * surfref, cudaArray_const_t array, const cudaChannelFormatDesc * desc); 
# 8006 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
__attribute((deprecated)) extern cudaError_t cudaGetSurfaceReference(const surfaceReference ** surfref, const void * symbol); 
# 8041 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGetChannelDesc(cudaChannelFormatDesc * desc, cudaArray_const_t array); 
# 8071 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaChannelFormatDesc cudaCreateChannelDesc(int x, int y, int z, int w, cudaChannelFormatKind f); 
# 8289 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaCreateTextureObject(cudaTextureObject_t * pTexObject, const cudaResourceDesc * pResDesc, const cudaTextureDesc * pTexDesc, const cudaResourceViewDesc * pResViewDesc); 
# 8308 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDestroyTextureObject(cudaTextureObject_t texObject); 
# 8328 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGetTextureObjectResourceDesc(cudaResourceDesc * pResDesc, cudaTextureObject_t texObject); 
# 8348 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGetTextureObjectTextureDesc(cudaTextureDesc * pTexDesc, cudaTextureObject_t texObject); 
# 8369 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGetTextureObjectResourceViewDesc(cudaResourceViewDesc * pResViewDesc, cudaTextureObject_t texObject); 
# 8414 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaCreateSurfaceObject(cudaSurfaceObject_t * pSurfObject, const cudaResourceDesc * pResDesc); 
# 8433 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDestroySurfaceObject(cudaSurfaceObject_t surfObject); 
# 8452 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGetSurfaceObjectResourceDesc(cudaResourceDesc * pResDesc, cudaSurfaceObject_t surfObject); 
# 8486 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaDriverGetVersion(int * driverVersion); 
# 8511 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaRuntimeGetVersion(int * runtimeVersion); 
# 8558 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphCreate(cudaGraph_t * pGraph, unsigned flags); 
# 8655 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphAddKernelNode(cudaGraphNode_t * pGraphNode, cudaGraph_t graph, const cudaGraphNode_t * pDependencies, size_t numDependencies, const cudaKernelNodeParams * pNodeParams); 
# 8688 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphKernelNodeGetParams(cudaGraphNode_t node, cudaKernelNodeParams * pNodeParams); 
# 8713 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphKernelNodeSetParams(cudaGraphNode_t node, const cudaKernelNodeParams * pNodeParams); 
# 8733 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphKernelNodeCopyAttributes(cudaGraphNode_t hSrc, cudaGraphNode_t hDst); 
# 8756 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphKernelNodeGetAttribute(cudaGraphNode_t hNode, cudaKernelNodeAttrID attr, cudaKernelNodeAttrValue * value_out); 
# 8780 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphKernelNodeSetAttribute(cudaGraphNode_t hNode, cudaKernelNodeAttrID attr, const cudaKernelNodeAttrValue * value); 
# 8827 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphAddMemcpyNode(cudaGraphNode_t * pGraphNode, cudaGraph_t graph, const cudaGraphNode_t * pDependencies, size_t numDependencies, const cudaMemcpy3DParms * pCopyParams); 
# 8850 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphMemcpyNodeGetParams(cudaGraphNode_t node, cudaMemcpy3DParms * pNodeParams); 
# 8873 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphMemcpyNodeSetParams(cudaGraphNode_t node, const cudaMemcpy3DParms * pNodeParams); 
# 8915 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphAddMemsetNode(cudaGraphNode_t * pGraphNode, cudaGraph_t graph, const cudaGraphNode_t * pDependencies, size_t numDependencies, const cudaMemsetParams * pMemsetParams); 
# 8938 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphMemsetNodeGetParams(cudaGraphNode_t node, cudaMemsetParams * pNodeParams); 
# 8961 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphMemsetNodeSetParams(cudaGraphNode_t node, const cudaMemsetParams * pNodeParams); 
# 9002 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphAddHostNode(cudaGraphNode_t * pGraphNode, cudaGraph_t graph, const cudaGraphNode_t * pDependencies, size_t numDependencies, const cudaHostNodeParams * pNodeParams); 
# 9025 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphHostNodeGetParams(cudaGraphNode_t node, cudaHostNodeParams * pNodeParams); 
# 9048 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphHostNodeSetParams(cudaGraphNode_t node, const cudaHostNodeParams * pNodeParams); 
# 9086 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphAddChildGraphNode(cudaGraphNode_t * pGraphNode, cudaGraph_t graph, const cudaGraphNode_t * pDependencies, size_t numDependencies, cudaGraph_t childGraph); 
# 9110 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphChildGraphNodeGetGraph(cudaGraphNode_t node, cudaGraph_t * pGraph); 
# 9147 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphAddEmptyNode(cudaGraphNode_t * pGraphNode, cudaGraph_t graph, const cudaGraphNode_t * pDependencies, size_t numDependencies); 
# 9174 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphClone(cudaGraph_t * pGraphClone, cudaGraph_t originalGraph); 
# 9202 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphNodeFindInClone(cudaGraphNode_t * pNode, cudaGraphNode_t originalNode, cudaGraph_t clonedGraph); 
# 9233 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphNodeGetType(cudaGraphNode_t node, cudaGraphNodeType * pType); 
# 9264 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphGetNodes(cudaGraph_t graph, cudaGraphNode_t * nodes, size_t * numNodes); 
# 9295 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphGetRootNodes(cudaGraph_t graph, cudaGraphNode_t * pRootNodes, size_t * pNumRootNodes); 
# 9329 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphGetEdges(cudaGraph_t graph, cudaGraphNode_t * from, cudaGraphNode_t * to, size_t * numEdges); 
# 9360 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphNodeGetDependencies(cudaGraphNode_t node, cudaGraphNode_t * pDependencies, size_t * pNumDependencies); 
# 9392 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphNodeGetDependentNodes(cudaGraphNode_t node, cudaGraphNode_t * pDependentNodes, size_t * pNumDependentNodes); 
# 9423 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphAddDependencies(cudaGraph_t graph, const cudaGraphNode_t * from, const cudaGraphNode_t * to, size_t numDependencies); 
# 9454 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphRemoveDependencies(cudaGraph_t graph, const cudaGraphNode_t * from, const cudaGraphNode_t * to, size_t numDependencies); 
# 9480 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphDestroyNode(cudaGraphNode_t node); 
# 9516 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphInstantiate(cudaGraphExec_t * pGraphExec, cudaGraph_t graph, cudaGraphNode_t * pErrorNode, char * pLogBuffer, size_t bufferSize); 
# 9550 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphExecKernelNodeSetParams(cudaGraphExec_t hGraphExec, cudaGraphNode_t node, const cudaKernelNodeParams * pNodeParams); 
# 9591 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphExecMemcpyNodeSetParams(cudaGraphExec_t hGraphExec, cudaGraphNode_t node, const cudaMemcpy3DParms * pNodeParams); 
# 9632 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphExecMemsetNodeSetParams(cudaGraphExec_t hGraphExec, cudaGraphNode_t node, const cudaMemsetParams * pNodeParams); 
# 9665 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphExecHostNodeSetParams(cudaGraphExec_t hGraphExec, cudaGraphNode_t node, const cudaHostNodeParams * pNodeParams); 
# 9740 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphExecUpdate(cudaGraphExec_t hGraphExec, cudaGraph_t hGraph, cudaGraphNode_t * hErrorNode_out, cudaGraphExecUpdateResult * updateResult_out); 
# 9765 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphLaunch(cudaGraphExec_t graphExec, cudaStream_t stream); 
# 9786 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphExecDestroy(cudaGraphExec_t graphExec); 
# 9806 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGraphDestroy(cudaGraph_t graph); 
# 9811
extern cudaError_t cudaGetExportTable(const void ** ppExportTable, const cudaUUID_t * pExportTableId); 
# 9987 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
extern cudaError_t cudaGetFuncBySymbol(cudaFunction_t * functionPtr, const void * symbolPtr); 
# 10108 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime_api.h"
}
# 104 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/channel_descriptor.h"
template< class T> inline cudaChannelFormatDesc cudaCreateChannelDesc() 
# 105
{ 
# 106
return cudaCreateChannelDesc(0, 0, 0, 0, cudaChannelFormatKindNone); 
# 107
} 
# 109
static inline cudaChannelFormatDesc cudaCreateChannelDescHalf() 
# 110
{ 
# 111
int e = (((int)sizeof(unsigned short)) * 8); 
# 113
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindFloat); 
# 114
} 
# 116
static inline cudaChannelFormatDesc cudaCreateChannelDescHalf1() 
# 117
{ 
# 118
int e = (((int)sizeof(unsigned short)) * 8); 
# 120
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindFloat); 
# 121
} 
# 123
static inline cudaChannelFormatDesc cudaCreateChannelDescHalf2() 
# 124
{ 
# 125
int e = (((int)sizeof(unsigned short)) * 8); 
# 127
return cudaCreateChannelDesc(e, e, 0, 0, cudaChannelFormatKindFloat); 
# 128
} 
# 130
static inline cudaChannelFormatDesc cudaCreateChannelDescHalf4() 
# 131
{ 
# 132
int e = (((int)sizeof(unsigned short)) * 8); 
# 134
return cudaCreateChannelDesc(e, e, e, e, cudaChannelFormatKindFloat); 
# 135
} 
# 137
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< char> () 
# 138
{ 
# 139
int e = (((int)sizeof(char)) * 8); 
# 144
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindSigned); 
# 146
} 
# 148
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< signed char> () 
# 149
{ 
# 150
int e = (((int)sizeof(signed char)) * 8); 
# 152
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindSigned); 
# 153
} 
# 155
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< unsigned char> () 
# 156
{ 
# 157
int e = (((int)sizeof(unsigned char)) * 8); 
# 159
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindUnsigned); 
# 160
} 
# 162
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< char1> () 
# 163
{ 
# 164
int e = (((int)sizeof(signed char)) * 8); 
# 166
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindSigned); 
# 167
} 
# 169
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< uchar1> () 
# 170
{ 
# 171
int e = (((int)sizeof(unsigned char)) * 8); 
# 173
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindUnsigned); 
# 174
} 
# 176
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< char2> () 
# 177
{ 
# 178
int e = (((int)sizeof(signed char)) * 8); 
# 180
return cudaCreateChannelDesc(e, e, 0, 0, cudaChannelFormatKindSigned); 
# 181
} 
# 183
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< uchar2> () 
# 184
{ 
# 185
int e = (((int)sizeof(unsigned char)) * 8); 
# 187
return cudaCreateChannelDesc(e, e, 0, 0, cudaChannelFormatKindUnsigned); 
# 188
} 
# 190
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< char4> () 
# 191
{ 
# 192
int e = (((int)sizeof(signed char)) * 8); 
# 194
return cudaCreateChannelDesc(e, e, e, e, cudaChannelFormatKindSigned); 
# 195
} 
# 197
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< uchar4> () 
# 198
{ 
# 199
int e = (((int)sizeof(unsigned char)) * 8); 
# 201
return cudaCreateChannelDesc(e, e, e, e, cudaChannelFormatKindUnsigned); 
# 202
} 
# 204
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< short> () 
# 205
{ 
# 206
int e = (((int)sizeof(short)) * 8); 
# 208
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindSigned); 
# 209
} 
# 211
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< unsigned short> () 
# 212
{ 
# 213
int e = (((int)sizeof(unsigned short)) * 8); 
# 215
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindUnsigned); 
# 216
} 
# 218
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< short1> () 
# 219
{ 
# 220
int e = (((int)sizeof(short)) * 8); 
# 222
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindSigned); 
# 223
} 
# 225
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< ushort1> () 
# 226
{ 
# 227
int e = (((int)sizeof(unsigned short)) * 8); 
# 229
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindUnsigned); 
# 230
} 
# 232
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< short2> () 
# 233
{ 
# 234
int e = (((int)sizeof(short)) * 8); 
# 236
return cudaCreateChannelDesc(e, e, 0, 0, cudaChannelFormatKindSigned); 
# 237
} 
# 239
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< ushort2> () 
# 240
{ 
# 241
int e = (((int)sizeof(unsigned short)) * 8); 
# 243
return cudaCreateChannelDesc(e, e, 0, 0, cudaChannelFormatKindUnsigned); 
# 244
} 
# 246
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< short4> () 
# 247
{ 
# 248
int e = (((int)sizeof(short)) * 8); 
# 250
return cudaCreateChannelDesc(e, e, e, e, cudaChannelFormatKindSigned); 
# 251
} 
# 253
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< ushort4> () 
# 254
{ 
# 255
int e = (((int)sizeof(unsigned short)) * 8); 
# 257
return cudaCreateChannelDesc(e, e, e, e, cudaChannelFormatKindUnsigned); 
# 258
} 
# 260
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< int> () 
# 261
{ 
# 262
int e = (((int)sizeof(int)) * 8); 
# 264
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindSigned); 
# 265
} 
# 267
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< unsigned> () 
# 268
{ 
# 269
int e = (((int)sizeof(unsigned)) * 8); 
# 271
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindUnsigned); 
# 272
} 
# 274
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< int1> () 
# 275
{ 
# 276
int e = (((int)sizeof(int)) * 8); 
# 278
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindSigned); 
# 279
} 
# 281
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< uint1> () 
# 282
{ 
# 283
int e = (((int)sizeof(unsigned)) * 8); 
# 285
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindUnsigned); 
# 286
} 
# 288
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< int2> () 
# 289
{ 
# 290
int e = (((int)sizeof(int)) * 8); 
# 292
return cudaCreateChannelDesc(e, e, 0, 0, cudaChannelFormatKindSigned); 
# 293
} 
# 295
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< uint2> () 
# 296
{ 
# 297
int e = (((int)sizeof(unsigned)) * 8); 
# 299
return cudaCreateChannelDesc(e, e, 0, 0, cudaChannelFormatKindUnsigned); 
# 300
} 
# 302
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< int4> () 
# 303
{ 
# 304
int e = (((int)sizeof(int)) * 8); 
# 306
return cudaCreateChannelDesc(e, e, e, e, cudaChannelFormatKindSigned); 
# 307
} 
# 309
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< uint4> () 
# 310
{ 
# 311
int e = (((int)sizeof(unsigned)) * 8); 
# 313
return cudaCreateChannelDesc(e, e, e, e, cudaChannelFormatKindUnsigned); 
# 314
} 
# 376 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/channel_descriptor.h"
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< float> () 
# 377
{ 
# 378
int e = (((int)sizeof(float)) * 8); 
# 380
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindFloat); 
# 381
} 
# 383
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< float1> () 
# 384
{ 
# 385
int e = (((int)sizeof(float)) * 8); 
# 387
return cudaCreateChannelDesc(e, 0, 0, 0, cudaChannelFormatKindFloat); 
# 388
} 
# 390
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< float2> () 
# 391
{ 
# 392
int e = (((int)sizeof(float)) * 8); 
# 394
return cudaCreateChannelDesc(e, e, 0, 0, cudaChannelFormatKindFloat); 
# 395
} 
# 397
template<> inline cudaChannelFormatDesc cudaCreateChannelDesc< float4> () 
# 398
{ 
# 399
int e = (((int)sizeof(float)) * 8); 
# 401
return cudaCreateChannelDesc(e, e, e, e, cudaChannelFormatKindFloat); 
# 402
} 
# 79 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_functions.h"
static inline cudaPitchedPtr make_cudaPitchedPtr(void *d, size_t p, size_t xsz, size_t ysz) 
# 80
{ 
# 81
cudaPitchedPtr s; 
# 83
(s.ptr) = d; 
# 84
(s.pitch) = p; 
# 85
(s.xsize) = xsz; 
# 86
(s.ysize) = ysz; 
# 88
return s; 
# 89
} 
# 106 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_functions.h"
static inline cudaPos make_cudaPos(size_t x, size_t y, size_t z) 
# 107
{ 
# 108
cudaPos p; 
# 110
(p.x) = x; 
# 111
(p.y) = y; 
# 112
(p.z) = z; 
# 114
return p; 
# 115
} 
# 132 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/driver_functions.h"
static inline cudaExtent make_cudaExtent(size_t w, size_t h, size_t d) 
# 133
{ 
# 134
cudaExtent e; 
# 136
(e.width) = w; 
# 137
(e.height) = h; 
# 138
(e.depth) = d; 
# 140
return e; 
# 141
} 
# 73 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_functions.h"
static inline char1 make_char1(signed char x); 
# 75
static inline uchar1 make_uchar1(unsigned char x); 
# 77
static inline char2 make_char2(signed char x, signed char y); 
# 79
static inline uchar2 make_uchar2(unsigned char x, unsigned char y); 
# 81
static inline char3 make_char3(signed char x, signed char y, signed char z); 
# 83
static inline uchar3 make_uchar3(unsigned char x, unsigned char y, unsigned char z); 
# 85
static inline char4 make_char4(signed char x, signed char y, signed char z, signed char w); 
# 87
static inline uchar4 make_uchar4(unsigned char x, unsigned char y, unsigned char z, unsigned char w); 
# 89
static inline short1 make_short1(short x); 
# 91
static inline ushort1 make_ushort1(unsigned short x); 
# 93
static inline short2 make_short2(short x, short y); 
# 95
static inline ushort2 make_ushort2(unsigned short x, unsigned short y); 
# 97
static inline short3 make_short3(short x, short y, short z); 
# 99
static inline ushort3 make_ushort3(unsigned short x, unsigned short y, unsigned short z); 
# 101
static inline short4 make_short4(short x, short y, short z, short w); 
# 103
static inline ushort4 make_ushort4(unsigned short x, unsigned short y, unsigned short z, unsigned short w); 
# 105
static inline int1 make_int1(int x); 
# 107
static inline uint1 make_uint1(unsigned x); 
# 109
static inline int2 make_int2(int x, int y); 
# 111
static inline uint2 make_uint2(unsigned x, unsigned y); 
# 113
static inline int3 make_int3(int x, int y, int z); 
# 115
static inline uint3 make_uint3(unsigned x, unsigned y, unsigned z); 
# 117
static inline int4 make_int4(int x, int y, int z, int w); 
# 119
static inline uint4 make_uint4(unsigned x, unsigned y, unsigned z, unsigned w); 
# 121
static inline long1 make_long1(long x); 
# 123
static inline ulong1 make_ulong1(unsigned long x); 
# 125
static inline long2 make_long2(long x, long y); 
# 127
static inline ulong2 make_ulong2(unsigned long x, unsigned long y); 
# 129
static inline long3 make_long3(long x, long y, long z); 
# 131
static inline ulong3 make_ulong3(unsigned long x, unsigned long y, unsigned long z); 
# 133
static inline long4 make_long4(long x, long y, long z, long w); 
# 135
static inline ulong4 make_ulong4(unsigned long x, unsigned long y, unsigned long z, unsigned long w); 
# 137
static inline float1 make_float1(float x); 
# 139
static inline float2 make_float2(float x, float y); 
# 141
static inline float3 make_float3(float x, float y, float z); 
# 143
static inline float4 make_float4(float x, float y, float z, float w); 
# 145
static inline longlong1 make_longlong1(long long x); 
# 147
static inline ulonglong1 make_ulonglong1(unsigned long long x); 
# 149
static inline longlong2 make_longlong2(long long x, long long y); 
# 151
static inline ulonglong2 make_ulonglong2(unsigned long long x, unsigned long long y); 
# 153
static inline longlong3 make_longlong3(long long x, long long y, long long z); 
# 155
static inline ulonglong3 make_ulonglong3(unsigned long long x, unsigned long long y, unsigned long long z); 
# 157
static inline longlong4 make_longlong4(long long x, long long y, long long z, long long w); 
# 159
static inline ulonglong4 make_ulonglong4(unsigned long long x, unsigned long long y, unsigned long long z, unsigned long long w); 
# 161
static inline double1 make_double1(double x); 
# 163
static inline double2 make_double2(double x, double y); 
# 165
static inline double3 make_double3(double x, double y, double z); 
# 167
static inline double4 make_double4(double x, double y, double z, double w); 
# 73 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/vector_functions.hpp"
static inline char1 make_char1(signed char x) 
# 74
{ 
# 75
char1 t; (t.x) = x; return t; 
# 76
} 
# 78
static inline uchar1 make_uchar1(unsigned char x) 
# 79
{ 
# 80
uchar1 t; (t.x) = x; return t; 
# 81
} 
# 83
static inline char2 make_char2(signed char x, signed char y) 
# 84
{ 
# 85
char2 t; (t.x) = x; (t.y) = y; return t; 
# 86
} 
# 88
static inline uchar2 make_uchar2(unsigned char x, unsigned char y) 
# 89
{ 
# 90
uchar2 t; (t.x) = x; (t.y) = y; return t; 
# 91
} 
# 93
static inline char3 make_char3(signed char x, signed char y, signed char z) 
# 94
{ 
# 95
char3 t; (t.x) = x; (t.y) = y; (t.z) = z; return t; 
# 96
} 
# 98
static inline uchar3 make_uchar3(unsigned char x, unsigned char y, unsigned char z) 
# 99
{ 
# 100
uchar3 t; (t.x) = x; (t.y) = y; (t.z) = z; return t; 
# 101
} 
# 103
static inline char4 make_char4(signed char x, signed char y, signed char z, signed char w) 
# 104
{ 
# 105
char4 t; (t.x) = x; (t.y) = y; (t.z) = z; (t.w) = w; return t; 
# 106
} 
# 108
static inline uchar4 make_uchar4(unsigned char x, unsigned char y, unsigned char z, unsigned char w) 
# 109
{ 
# 110
uchar4 t; (t.x) = x; (t.y) = y; (t.z) = z; (t.w) = w; return t; 
# 111
} 
# 113
static inline short1 make_short1(short x) 
# 114
{ 
# 115
short1 t; (t.x) = x; return t; 
# 116
} 
# 118
static inline ushort1 make_ushort1(unsigned short x) 
# 119
{ 
# 120
ushort1 t; (t.x) = x; return t; 
# 121
} 
# 123
static inline short2 make_short2(short x, short y) 
# 124
{ 
# 125
short2 t; (t.x) = x; (t.y) = y; return t; 
# 126
} 
# 128
static inline ushort2 make_ushort2(unsigned short x, unsigned short y) 
# 129
{ 
# 130
ushort2 t; (t.x) = x; (t.y) = y; return t; 
# 131
} 
# 133
static inline short3 make_short3(short x, short y, short z) 
# 134
{ 
# 135
short3 t; (t.x) = x; (t.y) = y; (t.z) = z; return t; 
# 136
} 
# 138
static inline ushort3 make_ushort3(unsigned short x, unsigned short y, unsigned short z) 
# 139
{ 
# 140
ushort3 t; (t.x) = x; (t.y) = y; (t.z) = z; return t; 
# 141
} 
# 143
static inline short4 make_short4(short x, short y, short z, short w) 
# 144
{ 
# 145
short4 t; (t.x) = x; (t.y) = y; (t.z) = z; (t.w) = w; return t; 
# 146
} 
# 148
static inline ushort4 make_ushort4(unsigned short x, unsigned short y, unsigned short z, unsigned short w) 
# 149
{ 
# 150
ushort4 t; (t.x) = x; (t.y) = y; (t.z) = z; (t.w) = w; return t; 
# 151
} 
# 153
static inline int1 make_int1(int x) 
# 154
{ 
# 155
int1 t; (t.x) = x; return t; 
# 156
} 
# 158
static inline uint1 make_uint1(unsigned x) 
# 159
{ 
# 160
uint1 t; (t.x) = x; return t; 
# 161
} 
# 163
static inline int2 make_int2(int x, int y) 
# 164
{ 
# 165
int2 t; (t.x) = x; (t.y) = y; return t; 
# 166
} 
# 168
static inline uint2 make_uint2(unsigned x, unsigned y) 
# 169
{ 
# 170
uint2 t; (t.x) = x; (t.y) = y; return t; 
# 171
} 
# 173
static inline int3 make_int3(int x, int y, int z) 
# 174
{ 
# 175
int3 t; (t.x) = x; (t.y) = y; (t.z) = z; return t; 
# 176
} 
# 178
static inline uint3 make_uint3(unsigned x, unsigned y, unsigned z) 
# 179
{ 
# 180
uint3 t; (t.x) = x; (t.y) = y; (t.z) = z; return t; 
# 181
} 
# 183
static inline int4 make_int4(int x, int y, int z, int w) 
# 184
{ 
# 185
int4 t; (t.x) = x; (t.y) = y; (t.z) = z; (t.w) = w; return t; 
# 186
} 
# 188
static inline uint4 make_uint4(unsigned x, unsigned y, unsigned z, unsigned w) 
# 189
{ 
# 190
uint4 t; (t.x) = x; (t.y) = y; (t.z) = z; (t.w) = w; return t; 
# 191
} 
# 193
static inline long1 make_long1(long x) 
# 194
{ 
# 195
long1 t; (t.x) = x; return t; 
# 196
} 
# 198
static inline ulong1 make_ulong1(unsigned long x) 
# 199
{ 
# 200
ulong1 t; (t.x) = x; return t; 
# 201
} 
# 203
static inline long2 make_long2(long x, long y) 
# 204
{ 
# 205
long2 t; (t.x) = x; (t.y) = y; return t; 
# 206
} 
# 208
static inline ulong2 make_ulong2(unsigned long x, unsigned long y) 
# 209
{ 
# 210
ulong2 t; (t.x) = x; (t.y) = y; return t; 
# 211
} 
# 213
static inline long3 make_long3(long x, long y, long z) 
# 214
{ 
# 215
long3 t; (t.x) = x; (t.y) = y; (t.z) = z; return t; 
# 216
} 
# 218
static inline ulong3 make_ulong3(unsigned long x, unsigned long y, unsigned long z) 
# 219
{ 
# 220
ulong3 t; (t.x) = x; (t.y) = y; (t.z) = z; return t; 
# 221
} 
# 223
static inline long4 make_long4(long x, long y, long z, long w) 
# 224
{ 
# 225
long4 t; (t.x) = x; (t.y) = y; (t.z) = z; (t.w) = w; return t; 
# 226
} 
# 228
static inline ulong4 make_ulong4(unsigned long x, unsigned long y, unsigned long z, unsigned long w) 
# 229
{ 
# 230
ulong4 t; (t.x) = x; (t.y) = y; (t.z) = z; (t.w) = w; return t; 
# 231
} 
# 233
static inline float1 make_float1(float x) 
# 234
{ 
# 235
float1 t; (t.x) = x; return t; 
# 236
} 
# 238
static inline float2 make_float2(float x, float y) 
# 239
{ 
# 240
float2 t; (t.x) = x; (t.y) = y; return t; 
# 241
} 
# 243
static inline float3 make_float3(float x, float y, float z) 
# 244
{ 
# 245
float3 t; (t.x) = x; (t.y) = y; (t.z) = z; return t; 
# 246
} 
# 248
static inline float4 make_float4(float x, float y, float z, float w) 
# 249
{ 
# 250
float4 t; (t.x) = x; (t.y) = y; (t.z) = z; (t.w) = w; return t; 
# 251
} 
# 253
static inline longlong1 make_longlong1(long long x) 
# 254
{ 
# 255
longlong1 t; (t.x) = x; return t; 
# 256
} 
# 258
static inline ulonglong1 make_ulonglong1(unsigned long long x) 
# 259
{ 
# 260
ulonglong1 t; (t.x) = x; return t; 
# 261
} 
# 263
static inline longlong2 make_longlong2(long long x, long long y) 
# 264
{ 
# 265
longlong2 t; (t.x) = x; (t.y) = y; return t; 
# 266
} 
# 268
static inline ulonglong2 make_ulonglong2(unsigned long long x, unsigned long long y) 
# 269
{ 
# 270
ulonglong2 t; (t.x) = x; (t.y) = y; return t; 
# 271
} 
# 273
static inline longlong3 make_longlong3(long long x, long long y, long long z) 
# 274
{ 
# 275
longlong3 t; (t.x) = x; (t.y) = y; (t.z) = z; return t; 
# 276
} 
# 278
static inline ulonglong3 make_ulonglong3(unsigned long long x, unsigned long long y, unsigned long long z) 
# 279
{ 
# 280
ulonglong3 t; (t.x) = x; (t.y) = y; (t.z) = z; return t; 
# 281
} 
# 283
static inline longlong4 make_longlong4(long long x, long long y, long long z, long long w) 
# 284
{ 
# 285
longlong4 t; (t.x) = x; (t.y) = y; (t.z) = z; (t.w) = w; return t; 
# 286
} 
# 288
static inline ulonglong4 make_ulonglong4(unsigned long long x, unsigned long long y, unsigned long long z, unsigned long long w) 
# 289
{ 
# 290
ulonglong4 t; (t.x) = x; (t.y) = y; (t.z) = z; (t.w) = w; return t; 
# 291
} 
# 293
static inline double1 make_double1(double x) 
# 294
{ 
# 295
double1 t; (t.x) = x; return t; 
# 296
} 
# 298
static inline double2 make_double2(double x, double y) 
# 299
{ 
# 300
double2 t; (t.x) = x; (t.y) = y; return t; 
# 301
} 
# 303
static inline double3 make_double3(double x, double y, double z) 
# 304
{ 
# 305
double3 t; (t.x) = x; (t.y) = y; (t.z) = z; return t; 
# 306
} 
# 308
static inline double4 make_double4(double x, double y, double z, double w) 
# 309
{ 
# 310
double4 t; (t.x) = x; (t.y) = y; (t.z) = z; (t.w) = w; return t; 
# 311
} 
# 27 "/usr/include/string.h" 3
extern "C" {
# 42 "/usr/include/string.h" 3
extern void *memcpy(void *__restrict__ __dest, const void *__restrict__ __src, size_t __n) throw()
# 43
 __attribute((__nonnull__(1, 2))); 
# 46
extern void *memmove(void * __dest, const void * __src, size_t __n) throw()
# 47
 __attribute((__nonnull__(1, 2))); 
# 54
extern void *memccpy(void *__restrict__ __dest, const void *__restrict__ __src, int __c, size_t __n) throw()
# 56
 __attribute((__nonnull__(1, 2))); 
# 62
extern void *memset(void * __s, int __c, size_t __n) throw() __attribute((__nonnull__(1))); 
# 65
extern int memcmp(const void * __s1, const void * __s2, size_t __n) throw()
# 66
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 70
extern "C++" {
# 72
extern void *memchr(void * __s, int __c, size_t __n) throw() __asm__("memchr")
# 73
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 74
extern const void *memchr(const void * __s, int __c, size_t __n) throw() __asm__("memchr")
# 75
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 90 "/usr/include/string.h" 3
}
# 101
extern "C++" void *rawmemchr(void * __s, int __c) throw() __asm__("rawmemchr")
# 102
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 103
extern "C++" const void *rawmemchr(const void * __s, int __c) throw() __asm__("rawmemchr")
# 104
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 112
extern "C++" void *memrchr(void * __s, int __c, size_t __n) throw() __asm__("memrchr")
# 113
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 114
extern "C++" const void *memrchr(const void * __s, int __c, size_t __n) throw() __asm__("memrchr")
# 115
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 125
extern char *strcpy(char *__restrict__ __dest, const char *__restrict__ __src) throw()
# 126
 __attribute((__nonnull__(1, 2))); 
# 128
extern char *strncpy(char *__restrict__ __dest, const char *__restrict__ __src, size_t __n) throw()
# 130
 __attribute((__nonnull__(1, 2))); 
# 133
extern char *strcat(char *__restrict__ __dest, const char *__restrict__ __src) throw()
# 134
 __attribute((__nonnull__(1, 2))); 
# 136
extern char *strncat(char *__restrict__ __dest, const char *__restrict__ __src, size_t __n) throw()
# 137
 __attribute((__nonnull__(1, 2))); 
# 140
extern int strcmp(const char * __s1, const char * __s2) throw()
# 141
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 143
extern int strncmp(const char * __s1, const char * __s2, size_t __n) throw()
# 144
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 147
extern int strcoll(const char * __s1, const char * __s2) throw()
# 148
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 150
extern size_t strxfrm(char *__restrict__ __dest, const char *__restrict__ __src, size_t __n) throw()
# 152
 __attribute((__nonnull__(2))); 
# 39 "/usr/include/xlocale.h" 3
typedef 
# 27
struct __locale_struct { 
# 30
struct __locale_data *__locales[13]; 
# 33
const unsigned short *__ctype_b; 
# 34
const int *__ctype_tolower; 
# 35
const int *__ctype_toupper; 
# 38
const char *__names[13]; 
# 39
} *__locale_t; 
# 42
typedef __locale_t locale_t; 
# 162 "/usr/include/string.h" 3
extern int strcoll_l(const char * __s1, const char * __s2, __locale_t __l) throw()
# 163
 __attribute((__pure__)) __attribute((__nonnull__(1, 2, 3))); 
# 165
extern size_t strxfrm_l(char * __dest, const char * __src, size_t __n, __locale_t __l) throw()
# 166
 __attribute((__nonnull__(2, 4))); 
# 172
extern char *strdup(const char * __s) throw()
# 173
 __attribute((__malloc__)) __attribute((__nonnull__(1))); 
# 180
extern char *strndup(const char * __string, size_t __n) throw()
# 181
 __attribute((__malloc__)) __attribute((__nonnull__(1))); 
# 210 "/usr/include/string.h" 3
extern "C++" {
# 212
extern char *strchr(char * __s, int __c) throw() __asm__("strchr")
# 213
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 214
extern const char *strchr(const char * __s, int __c) throw() __asm__("strchr")
# 215
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 230 "/usr/include/string.h" 3
}
# 237
extern "C++" {
# 239
extern char *strrchr(char * __s, int __c) throw() __asm__("strrchr")
# 240
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 241
extern const char *strrchr(const char * __s, int __c) throw() __asm__("strrchr")
# 242
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 257 "/usr/include/string.h" 3
}
# 268
extern "C++" char *strchrnul(char * __s, int __c) throw() __asm__("strchrnul")
# 269
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 270
extern "C++" const char *strchrnul(const char * __s, int __c) throw() __asm__("strchrnul")
# 271
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 281
extern size_t strcspn(const char * __s, const char * __reject) throw()
# 282
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 285
extern size_t strspn(const char * __s, const char * __accept) throw()
# 286
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 289
extern "C++" {
# 291
extern char *strpbrk(char * __s, const char * __accept) throw() __asm__("strpbrk")
# 292
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 293
extern const char *strpbrk(const char * __s, const char * __accept) throw() __asm__("strpbrk")
# 294
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 309 "/usr/include/string.h" 3
}
# 316
extern "C++" {
# 318
extern char *strstr(char * __haystack, const char * __needle) throw() __asm__("strstr")
# 319
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 320
extern const char *strstr(const char * __haystack, const char * __needle) throw() __asm__("strstr")
# 321
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 336 "/usr/include/string.h" 3
}
# 344
extern char *strtok(char *__restrict__ __s, const char *__restrict__ __delim) throw()
# 345
 __attribute((__nonnull__(2))); 
# 350
extern char *__strtok_r(char *__restrict__ __s, const char *__restrict__ __delim, char **__restrict__ __save_ptr) throw()
# 353
 __attribute((__nonnull__(2, 3))); 
# 355
extern char *strtok_r(char *__restrict__ __s, const char *__restrict__ __delim, char **__restrict__ __save_ptr) throw()
# 357
 __attribute((__nonnull__(2, 3))); 
# 363
extern "C++" char *strcasestr(char * __haystack, const char * __needle) throw() __asm__("strcasestr")
# 364
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 365
extern "C++" const char *strcasestr(const char * __haystack, const char * __needle) throw() __asm__("strcasestr")
# 367
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 378 "/usr/include/string.h" 3
extern void *memmem(const void * __haystack, size_t __haystacklen, const void * __needle, size_t __needlelen) throw()
# 380
 __attribute((__pure__)) __attribute((__nonnull__(1, 3))); 
# 384
extern void *__mempcpy(void *__restrict__ __dest, const void *__restrict__ __src, size_t __n) throw()
# 386
 __attribute((__nonnull__(1, 2))); 
# 387
extern void *mempcpy(void *__restrict__ __dest, const void *__restrict__ __src, size_t __n) throw()
# 389
 __attribute((__nonnull__(1, 2))); 
# 395
extern size_t strlen(const char * __s) throw()
# 396
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 402
extern size_t strnlen(const char * __string, size_t __maxlen) throw()
# 403
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 409
extern char *strerror(int __errnum) throw(); 
# 434 "/usr/include/string.h" 3
extern char *strerror_r(int __errnum, char * __buf, size_t __buflen) throw()
# 435
 __attribute((__nonnull__(2))); 
# 441
extern char *strerror_l(int __errnum, __locale_t __l) throw(); 
# 447
extern void __bzero(void * __s, size_t __n) throw() __attribute((__nonnull__(1))); 
# 451
extern void bcopy(const void * __src, void * __dest, size_t __n) throw()
# 452
 __attribute((__nonnull__(1, 2))); 
# 455
extern void bzero(void * __s, size_t __n) throw() __attribute((__nonnull__(1))); 
# 458
extern int bcmp(const void * __s1, const void * __s2, size_t __n) throw()
# 459
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 463
extern "C++" {
# 465
extern char *index(char * __s, int __c) throw() __asm__("index")
# 466
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 467
extern const char *index(const char * __s, int __c) throw() __asm__("index")
# 468
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 483 "/usr/include/string.h" 3
}
# 491
extern "C++" {
# 493
extern char *rindex(char * __s, int __c) throw() __asm__("rindex")
# 494
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 495
extern const char *rindex(const char * __s, int __c) throw() __asm__("rindex")
# 496
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 511 "/usr/include/string.h" 3
}
# 519
extern int ffs(int __i) throw() __attribute((const)); 
# 524
extern int ffsl(long __l) throw() __attribute((const)); 
# 526
__extension__ extern int ffsll(long long __ll) throw()
# 527
 __attribute((const)); 
# 532
extern int strcasecmp(const char * __s1, const char * __s2) throw()
# 533
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 536
extern int strncasecmp(const char * __s1, const char * __s2, size_t __n) throw()
# 537
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 543
extern int strcasecmp_l(const char * __s1, const char * __s2, __locale_t __loc) throw()
# 545
 __attribute((__pure__)) __attribute((__nonnull__(1, 2, 3))); 
# 547
extern int strncasecmp_l(const char * __s1, const char * __s2, size_t __n, __locale_t __loc) throw()
# 549
 __attribute((__pure__)) __attribute((__nonnull__(1, 2, 4))); 
# 555
extern char *strsep(char **__restrict__ __stringp, const char *__restrict__ __delim) throw()
# 557
 __attribute((__nonnull__(1, 2))); 
# 562
extern char *strsignal(int __sig) throw(); 
# 565
extern char *__stpcpy(char *__restrict__ __dest, const char *__restrict__ __src) throw()
# 566
 __attribute((__nonnull__(1, 2))); 
# 567
extern char *stpcpy(char *__restrict__ __dest, const char *__restrict__ __src) throw()
# 568
 __attribute((__nonnull__(1, 2))); 
# 572
extern char *__stpncpy(char *__restrict__ __dest, const char *__restrict__ __src, size_t __n) throw()
# 574
 __attribute((__nonnull__(1, 2))); 
# 575
extern char *stpncpy(char *__restrict__ __dest, const char *__restrict__ __src, size_t __n) throw()
# 577
 __attribute((__nonnull__(1, 2))); 
# 582
extern int strverscmp(const char * __s1, const char * __s2) throw()
# 583
 __attribute((__pure__)) __attribute((__nonnull__(1, 2))); 
# 586
extern char *strfry(char * __string) throw() __attribute((__nonnull__(1))); 
# 589
extern void *memfrob(void * __s, size_t __n) throw() __attribute((__nonnull__(1))); 
# 597
extern "C++" char *basename(char * __filename) throw() __asm__("basename")
# 598
 __attribute((__nonnull__(1))); 
# 599
extern "C++" const char *basename(const char * __filename) throw() __asm__("basename")
# 600
 __attribute((__nonnull__(1))); 
# 642 "/usr/include/string.h" 3
}
# 29 "/usr/include/time.h" 3
extern "C" {
# 30 "/usr/include/bits/types.h" 3
typedef unsigned char __u_char; 
# 31
typedef unsigned short __u_short; 
# 32
typedef unsigned __u_int; 
# 33
typedef unsigned long __u_long; 
# 36
typedef signed char __int8_t; 
# 37
typedef unsigned char __uint8_t; 
# 38
typedef signed short __int16_t; 
# 39
typedef unsigned short __uint16_t; 
# 40
typedef signed int __int32_t; 
# 41
typedef unsigned __uint32_t; 
# 43
typedef signed long __int64_t; 
# 44
typedef unsigned long __uint64_t; 
# 52
typedef long __quad_t; 
# 53
typedef unsigned long __u_quad_t; 
# 133 "/usr/include/bits/types.h" 3
typedef unsigned long __dev_t; 
# 134
typedef unsigned __uid_t; 
# 135
typedef unsigned __gid_t; 
# 136
typedef unsigned long __ino_t; 
# 137
typedef unsigned long __ino64_t; 
# 138
typedef unsigned __mode_t; 
# 139
typedef unsigned long __nlink_t; 
# 140
typedef long __off_t; 
# 141
typedef long __off64_t; 
# 142
typedef int __pid_t; 
# 143
typedef struct { int __val[2]; } __fsid_t; 
# 144
typedef long __clock_t; 
# 145
typedef unsigned long __rlim_t; 
# 146
typedef unsigned long __rlim64_t; 
# 147
typedef unsigned __id_t; 
# 148
typedef long __time_t; 
# 149
typedef unsigned __useconds_t; 
# 150
typedef long __suseconds_t; 
# 152
typedef int __daddr_t; 
# 153
typedef int __key_t; 
# 156
typedef int __clockid_t; 
# 159
typedef void *__timer_t; 
# 162
typedef long __blksize_t; 
# 167
typedef long __blkcnt_t; 
# 168
typedef long __blkcnt64_t; 
# 171
typedef unsigned long __fsblkcnt_t; 
# 172
typedef unsigned long __fsblkcnt64_t; 
# 175
typedef unsigned long __fsfilcnt_t; 
# 176
typedef unsigned long __fsfilcnt64_t; 
# 179
typedef long __fsword_t; 
# 181
typedef long __ssize_t; 
# 184
typedef long __syscall_slong_t; 
# 186
typedef unsigned long __syscall_ulong_t; 
# 190
typedef __off64_t __loff_t; 
# 191
typedef __quad_t *__qaddr_t; 
# 192
typedef char *__caddr_t; 
# 195
typedef long __intptr_t; 
# 198
typedef unsigned __socklen_t; 
# 30 "/usr/include/bits/time.h" 3
struct timeval { 
# 32
__time_t tv_sec; 
# 33
__suseconds_t tv_usec; 
# 34
}; 
# 25 "/usr/include/bits/timex.h" 3
struct timex { 
# 27
unsigned modes; 
# 28
__syscall_slong_t offset; 
# 29
__syscall_slong_t freq; 
# 30
__syscall_slong_t maxerror; 
# 31
__syscall_slong_t esterror; 
# 32
int status; 
# 33
__syscall_slong_t constant; 
# 34
__syscall_slong_t precision; 
# 35
__syscall_slong_t tolerance; 
# 36
timeval time; 
# 37
__syscall_slong_t tick; 
# 38
__syscall_slong_t ppsfreq; 
# 39
__syscall_slong_t jitter; 
# 40
int shift; 
# 41
__syscall_slong_t stabil; 
# 42
__syscall_slong_t jitcnt; 
# 43
__syscall_slong_t calcnt; 
# 44
__syscall_slong_t errcnt; 
# 45
__syscall_slong_t stbcnt; 
# 47
int tai; 
# 50
int:32; int:32; int:32; int:32; 
# 51
int:32; int:32; int:32; int:32; 
# 52
int:32; int:32; int:32; 
# 53
}; 
# 88 "/usr/include/bits/time.h" 3
extern "C" {
# 91
extern int clock_adjtime(__clockid_t __clock_id, timex * __utx) throw(); 
# 93
}
# 59 "/usr/include/time.h" 3
typedef __clock_t clock_t; 
# 75 "/usr/include/time.h" 3
typedef __time_t time_t; 
# 91 "/usr/include/time.h" 3
typedef __clockid_t clockid_t; 
# 103 "/usr/include/time.h" 3
typedef __timer_t timer_t; 
# 120 "/usr/include/time.h" 3
struct timespec { 
# 122
__time_t tv_sec; 
# 123
__syscall_slong_t tv_nsec; 
# 124
}; 
# 133
struct tm { 
# 135
int tm_sec; 
# 136
int tm_min; 
# 137
int tm_hour; 
# 138
int tm_mday; 
# 139
int tm_mon; 
# 140
int tm_year; 
# 141
int tm_wday; 
# 142
int tm_yday; 
# 143
int tm_isdst; 
# 146
long tm_gmtoff; 
# 147
const char *tm_zone; 
# 152
}; 
# 161
struct itimerspec { 
# 163
timespec it_interval; 
# 164
timespec it_value; 
# 165
}; 
# 168
struct sigevent; 
# 174
typedef __pid_t pid_t; 
# 189 "/usr/include/time.h" 3
extern clock_t clock() throw(); 
# 192
extern time_t time(time_t * __timer) throw(); 
# 195
extern double difftime(time_t __time1, time_t __time0) throw()
# 196
 __attribute((const)); 
# 199
extern time_t mktime(tm * __tp) throw(); 
# 205
extern size_t strftime(char *__restrict__ __s, size_t __maxsize, const char *__restrict__ __format, const tm *__restrict__ __tp) throw(); 
# 213
extern char *strptime(const char *__restrict__ __s, const char *__restrict__ __fmt, tm * __tp) throw(); 
# 223
extern size_t strftime_l(char *__restrict__ __s, size_t __maxsize, const char *__restrict__ __format, const tm *__restrict__ __tp, __locale_t __loc) throw(); 
# 230
extern char *strptime_l(const char *__restrict__ __s, const char *__restrict__ __fmt, tm * __tp, __locale_t __loc) throw(); 
# 239
extern tm *gmtime(const time_t * __timer) throw(); 
# 243
extern tm *localtime(const time_t * __timer) throw(); 
# 249
extern tm *gmtime_r(const time_t *__restrict__ __timer, tm *__restrict__ __tp) throw(); 
# 254
extern tm *localtime_r(const time_t *__restrict__ __timer, tm *__restrict__ __tp) throw(); 
# 261
extern char *asctime(const tm * __tp) throw(); 
# 264
extern char *ctime(const time_t * __timer) throw(); 
# 272
extern char *asctime_r(const tm *__restrict__ __tp, char *__restrict__ __buf) throw(); 
# 276
extern char *ctime_r(const time_t *__restrict__ __timer, char *__restrict__ __buf) throw(); 
# 282
extern char *__tzname[2]; 
# 283
extern int __daylight; 
# 284
extern long __timezone; 
# 289
extern char *tzname[2]; 
# 293
extern void tzset() throw(); 
# 297
extern int daylight; 
# 298
extern long timezone; 
# 304
extern int stime(const time_t * __when) throw(); 
# 319 "/usr/include/time.h" 3
extern time_t timegm(tm * __tp) throw(); 
# 322
extern time_t timelocal(tm * __tp) throw(); 
# 325
extern int dysize(int __year) throw() __attribute((const)); 
# 334 "/usr/include/time.h" 3
extern int nanosleep(const timespec * __requested_time, timespec * __remaining); 
# 339
extern int clock_getres(clockid_t __clock_id, timespec * __res) throw(); 
# 342
extern int clock_gettime(clockid_t __clock_id, timespec * __tp) throw(); 
# 345
extern int clock_settime(clockid_t __clock_id, const timespec * __tp) throw(); 
# 353
extern int clock_nanosleep(clockid_t __clock_id, int __flags, const timespec * __req, timespec * __rem); 
# 358
extern int clock_getcpuclockid(pid_t __pid, clockid_t * __clock_id) throw(); 
# 363
extern int timer_create(clockid_t __clock_id, sigevent *__restrict__ __evp, timer_t *__restrict__ __timerid) throw(); 
# 368
extern int timer_delete(timer_t __timerid) throw(); 
# 371
extern int timer_settime(timer_t __timerid, int __flags, const itimerspec *__restrict__ __value, itimerspec *__restrict__ __ovalue) throw(); 
# 376
extern int timer_gettime(timer_t __timerid, itimerspec * __value) throw(); 
# 380
extern int timer_getoverrun(timer_t __timerid) throw(); 
# 386
extern int timespec_get(timespec * __ts, int __base) throw()
# 387
 __attribute((__nonnull__(1))); 
# 403 "/usr/include/time.h" 3
extern int getdate_err; 
# 412 "/usr/include/time.h" 3
extern tm *getdate(const char * __string); 
# 426 "/usr/include/time.h" 3
extern int getdate_r(const char *__restrict__ __string, tm *__restrict__ __resbufp); 
# 430
}
# 80 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/common_functions.h"
extern "C" {
# 83
extern clock_t clock() throw(); 
# 88 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/common_functions.h"
extern void *memset(void *, int, size_t) throw(); 
# 89 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/common_functions.h"
extern void *memcpy(void *, const void *, size_t) throw(); 
# 91 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/common_functions.h"
}
# 108 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern "C" {
# 192 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern int abs(int) throw(); 
# 193 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern long labs(long) throw(); 
# 194 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern long long llabs(long long) throw(); 
# 244 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double fabs(double x) throw(); 
# 285 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float fabsf(float x) throw(); 
# 289 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern inline int min(int, int); 
# 291
extern inline unsigned umin(unsigned, unsigned); 
# 292
extern inline long long llmin(long long, long long); 
# 293
extern inline unsigned long long ullmin(unsigned long long, unsigned long long); 
# 314 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float fminf(float x, float y) throw(); 
# 334 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double fmin(double x, double y) throw(); 
# 341 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern inline int max(int, int); 
# 343
extern inline unsigned umax(unsigned, unsigned); 
# 344
extern inline long long llmax(long long, long long); 
# 345
extern inline unsigned long long ullmax(unsigned long long, unsigned long long); 
# 366 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float fmaxf(float x, float y) throw(); 
# 386 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double fmax(double, double) throw(); 
# 430 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double sin(double x) throw(); 
# 463 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double cos(double x) throw(); 
# 482 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern void sincos(double x, double * sptr, double * cptr) throw(); 
# 498 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern void sincosf(float x, float * sptr, float * cptr) throw(); 
# 543 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double tan(double x) throw(); 
# 612 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double sqrt(double x) throw(); 
# 684 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double rsqrt(double x); 
# 754 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float rsqrtf(float x); 
# 810 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double log2(double x) throw(); 
# 835 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double exp2(double x) throw(); 
# 860 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float exp2f(float x) throw(); 
# 887 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double exp10(double x) throw(); 
# 910 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float exp10f(float x) throw(); 
# 956 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double expm1(double x) throw(); 
# 1001 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float expm1f(float x) throw(); 
# 1056 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float log2f(float x) throw(); 
# 1110 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double log10(double x) throw(); 
# 1181 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double log(double x) throw(); 
# 1275 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double log1p(double x) throw(); 
# 1372 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float log1pf(float x) throw(); 
# 1436 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double floor(double x) throw(); 
# 1475 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double exp(double x) throw(); 
# 1506 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double cosh(double x) throw(); 
# 1536 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double sinh(double x) throw(); 
# 1566 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double tanh(double x) throw(); 
# 1601 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double acosh(double x) throw(); 
# 1639 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float acoshf(float x) throw(); 
# 1655 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double asinh(double x) throw(); 
# 1671 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float asinhf(float x) throw(); 
# 1725 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double atanh(double x) throw(); 
# 1779 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float atanhf(float x) throw(); 
# 1838 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double ldexp(double x, int exp) throw(); 
# 1894 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float ldexpf(float x, int exp) throw(); 
# 1946 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double logb(double x) throw(); 
# 2001 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float logbf(float x) throw(); 
# 2031 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern int ilogb(double x) throw(); 
# 2061 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern int ilogbf(float x) throw(); 
# 2137 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double scalbn(double x, int n) throw(); 
# 2213 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float scalbnf(float x, int n) throw(); 
# 2289 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double scalbln(double x, long n) throw(); 
# 2365 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float scalblnf(float x, long n) throw(); 
# 2443 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double frexp(double x, int * nptr) throw(); 
# 2518 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float frexpf(float x, int * nptr) throw(); 
# 2532 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double round(double x) throw(); 
# 2549 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float roundf(float x) throw(); 
# 2567 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern long lround(double x) throw(); 
# 2585 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern long lroundf(float x) throw(); 
# 2603 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern long long llround(double x) throw(); 
# 2621 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern long long llroundf(float x) throw(); 
# 2673 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float rintf(float x) throw(); 
# 2690 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern long lrint(double x) throw(); 
# 2707 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern long lrintf(float x) throw(); 
# 2724 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern long long llrint(double x) throw(); 
# 2741 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern long long llrintf(float x) throw(); 
# 2794 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double nearbyint(double x) throw(); 
# 2847 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float nearbyintf(float x) throw(); 
# 2909 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double ceil(double x) throw(); 
# 2921 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double trunc(double x) throw(); 
# 2936 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float truncf(float x) throw(); 
# 2962 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double fdim(double x, double y) throw(); 
# 2988 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float fdimf(float x, float y) throw(); 
# 3024 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double atan2(double y, double x) throw(); 
# 3055 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double atan(double x) throw(); 
# 3078 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double acos(double x) throw(); 
# 3110 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double asin(double x) throw(); 
# 3156 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double hypot(double x, double y) throw(); 
# 3208 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double rhypot(double x, double y) throw(); 
# 3254 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float hypotf(float x, float y) throw(); 
# 3306 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float rhypotf(float x, float y) throw(); 
# 3350 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double norm3d(double a, double b, double c) throw(); 
# 3401 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double rnorm3d(double a, double b, double c) throw(); 
# 3450 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double norm4d(double a, double b, double c, double d) throw(); 
# 3506 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double rnorm4d(double a, double b, double c, double d) throw(); 
# 3551 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double norm(int dim, const double * t) throw(); 
# 3602 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double rnorm(int dim, const double * t) throw(); 
# 3654 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float rnormf(int dim, const float * a) throw(); 
# 3698 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float normf(int dim, const float * a) throw(); 
# 3743 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float norm3df(float a, float b, float c) throw(); 
# 3794 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float rnorm3df(float a, float b, float c) throw(); 
# 3843 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float norm4df(float a, float b, float c, float d) throw(); 
# 3899 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float rnorm4df(float a, float b, float c, float d) throw(); 
# 3986 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double cbrt(double x) throw(); 
# 4072 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float cbrtf(float x) throw(); 
# 4127 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double rcbrt(double x); 
# 4177 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float rcbrtf(float x); 
# 4237 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double sinpi(double x); 
# 4297 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float sinpif(float x); 
# 4349 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double cospi(double x); 
# 4401 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float cospif(float x); 
# 4431 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern void sincospi(double x, double * sptr, double * cptr); 
# 4461 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern void sincospif(float x, float * sptr, float * cptr); 
# 4773 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double pow(double x, double y) throw(); 
# 4829 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double modf(double x, double * iptr) throw(); 
# 4888 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double fmod(double x, double y) throw(); 
# 4974 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double remainder(double x, double y) throw(); 
# 5064 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float remainderf(float x, float y) throw(); 
# 5118 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double remquo(double x, double y, int * quo) throw(); 
# 5172 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float remquof(float x, float y, int * quo) throw(); 
# 5213 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double j0(double x) throw(); 
# 5255 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float j0f(float x) throw(); 
# 5316 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double j1(double x) throw(); 
# 5377 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float j1f(float x) throw(); 
# 5420 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double jn(int n, double x) throw(); 
# 5463 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float jnf(int n, float x) throw(); 
# 5515 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double y0(double x) throw(); 
# 5567 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float y0f(float x) throw(); 
# 5619 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double y1(double x) throw(); 
# 5671 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float y1f(float x) throw(); 
# 5724 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double yn(int n, double x) throw(); 
# 5777 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float ynf(int n, float x) throw(); 
# 5804 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double cyl_bessel_i0(double x) throw(); 
# 5830 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float cyl_bessel_i0f(float x) throw(); 
# 5857 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double cyl_bessel_i1(double x) throw(); 
# 5883 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float cyl_bessel_i1f(float x) throw(); 
# 5966 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double erf(double x) throw(); 
# 6048 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float erff(float x) throw(); 
# 6112 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double erfinv(double y); 
# 6169 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float erfinvf(float y); 
# 6208 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double erfc(double x) throw(); 
# 6246 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float erfcf(float x) throw(); 
# 6374 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double lgamma(double x) throw(); 
# 6437 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double erfcinv(double y); 
# 6493 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float erfcinvf(float y); 
# 6551 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double normcdfinv(double y); 
# 6609 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float normcdfinvf(float y); 
# 6652 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double normcdf(double y); 
# 6695 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float normcdff(float y); 
# 6770 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double erfcx(double x); 
# 6845 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float erfcxf(float x); 
# 6979 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float lgammaf(float x) throw(); 
# 7088 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double tgamma(double x) throw(); 
# 7197 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float tgammaf(float x) throw(); 
# 7210 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double copysign(double x, double y) throw(); 
# 7223 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float copysignf(float x, float y) throw(); 
# 7260 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double nextafter(double x, double y) throw(); 
# 7297 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float nextafterf(float x, float y) throw(); 
# 7313 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double nan(const char * tagp) throw(); 
# 7329 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float nanf(const char * tagp) throw(); 
# 7336 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern int __isinff(float) throw(); 
# 7337 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern int __isnanf(float) throw(); 
# 7347 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern int __finite(double) throw(); 
# 7348 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern int __finitef(float) throw(); 
# 7349 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern int __signbit(double) throw(); 
# 7350 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern int __isnan(double) throw(); 
# 7351 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern int __isinf(double) throw(); 
# 7354 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern int __signbitf(float) throw(); 
# 7513 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern double fma(double x, double y, double z) throw(); 
# 7671 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float fmaf(float x, float y, float z) throw(); 
# 7682 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern int __signbitl(long double) throw(); 
# 7688 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern int __finitel(long double) throw(); 
# 7689 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern int __isinfl(long double) throw(); 
# 7690 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern int __isnanl(long double) throw(); 
# 7740 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float acosf(float x) throw(); 
# 7780 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float asinf(float x) throw(); 
# 7820 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float atanf(float x) throw(); 
# 7853 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float atan2f(float y, float x) throw(); 
# 7877 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float cosf(float x) throw(); 
# 7919 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float sinf(float x) throw(); 
# 7961 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float tanf(float x) throw(); 
# 7985 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float coshf(float x) throw(); 
# 8026 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float sinhf(float x) throw(); 
# 8056 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float tanhf(float x) throw(); 
# 8107 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float logf(float x) throw(); 
# 8157 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float expf(float x) throw(); 
# 8208 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float log10f(float x) throw(); 
# 8263 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float modff(float x, float * iptr) throw(); 
# 8571 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float powf(float x, float y) throw(); 
# 8640 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float sqrtf(float x) throw(); 
# 8699 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float ceilf(float x) throw(); 
# 8760 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float floorf(float x) throw(); 
# 8818 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern float fmodf(float x, float y) throw(); 
# 8833 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
}
# 256 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/x86_64-pc-linux-gnu/bits/c++config.h" 3
namespace std { 
# 258
typedef unsigned long size_t; 
# 259
typedef long ptrdiff_t; 
# 262
typedef __decltype((nullptr)) nullptr_t; 
# 264
}
# 278 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/x86_64-pc-linux-gnu/bits/c++config.h" 3
namespace std { 
# 280
inline namespace __cxx11 __attribute((__abi_tag__("cxx11"))) { }
# 281
}
# 282
namespace __gnu_cxx { 
# 284
inline namespace __cxx11 __attribute((__abi_tag__("cxx11"))) { }
# 285
}
# 67 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/bits/cpp_type_traits.h" 3
extern "C++" {
# 69
namespace std __attribute((__visibility__("default"))) { 
# 73
struct __true_type { }; 
# 74
struct __false_type { }; 
# 76
template< bool > 
# 77
struct __truth_type { 
# 78
typedef __false_type __type; }; 
# 81
template<> struct __truth_type< true>  { 
# 82
typedef __true_type __type; }; 
# 86
template< class _Sp, class _Tp> 
# 87
struct __traitor { 
# 89
enum { __value = ((bool)_Sp::__value) || ((bool)_Tp::__value)}; 
# 90
typedef typename __truth_type< __value> ::__type __type; 
# 91
}; 
# 94
template< class , class > 
# 95
struct __are_same { 
# 97
enum { __value}; 
# 98
typedef __false_type __type; 
# 99
}; 
# 101
template< class _Tp> 
# 102
struct __are_same< _Tp, _Tp>  { 
# 104
enum { __value = 1}; 
# 105
typedef __true_type __type; 
# 106
}; 
# 109
template< class _Tp> 
# 110
struct __is_void { 
# 112
enum { __value}; 
# 113
typedef __false_type __type; 
# 114
}; 
# 117
template<> struct __is_void< void>  { 
# 119
enum { __value = 1}; 
# 120
typedef __true_type __type; 
# 121
}; 
# 126
template< class _Tp> 
# 127
struct __is_integer { 
# 129
enum { __value}; 
# 130
typedef __false_type __type; 
# 131
}; 
# 138
template<> struct __is_integer< bool>  { 
# 140
enum { __value = 1}; 
# 141
typedef __true_type __type; 
# 142
}; 
# 145
template<> struct __is_integer< char>  { 
# 147
enum { __value = 1}; 
# 148
typedef __true_type __type; 
# 149
}; 
# 152
template<> struct __is_integer< signed char>  { 
# 154
enum { __value = 1}; 
# 155
typedef __true_type __type; 
# 156
}; 
# 159
template<> struct __is_integer< unsigned char>  { 
# 161
enum { __value = 1}; 
# 162
typedef __true_type __type; 
# 163
}; 
# 167
template<> struct __is_integer< wchar_t>  { 
# 169
enum { __value = 1}; 
# 170
typedef __true_type __type; 
# 171
}; 
# 185 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/bits/cpp_type_traits.h" 3
template<> struct __is_integer< char16_t>  { 
# 187
enum { __value = 1}; 
# 188
typedef __true_type __type; 
# 189
}; 
# 192
template<> struct __is_integer< char32_t>  { 
# 194
enum { __value = 1}; 
# 195
typedef __true_type __type; 
# 196
}; 
# 200
template<> struct __is_integer< short>  { 
# 202
enum { __value = 1}; 
# 203
typedef __true_type __type; 
# 204
}; 
# 207
template<> struct __is_integer< unsigned short>  { 
# 209
enum { __value = 1}; 
# 210
typedef __true_type __type; 
# 211
}; 
# 214
template<> struct __is_integer< int>  { 
# 216
enum { __value = 1}; 
# 217
typedef __true_type __type; 
# 218
}; 
# 221
template<> struct __is_integer< unsigned>  { 
# 223
enum { __value = 1}; 
# 224
typedef __true_type __type; 
# 225
}; 
# 228
template<> struct __is_integer< long>  { 
# 230
enum { __value = 1}; 
# 231
typedef __true_type __type; 
# 232
}; 
# 235
template<> struct __is_integer< unsigned long>  { 
# 237
enum { __value = 1}; 
# 238
typedef __true_type __type; 
# 239
}; 
# 242
template<> struct __is_integer< long long>  { 
# 244
enum { __value = 1}; 
# 245
typedef __true_type __type; 
# 246
}; 
# 249
template<> struct __is_integer< unsigned long long>  { 
# 251
enum { __value = 1}; 
# 252
typedef __true_type __type; 
# 253
}; 
# 270 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/bits/cpp_type_traits.h" 3
template<> struct __is_integer< __int128_t>  { enum { __value = 1}; typedef __true_type __type; }; template<> struct __is_integer< __uint128_t>  { enum { __value = 1}; typedef __true_type __type; }; 
# 287 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/bits/cpp_type_traits.h" 3
template< class _Tp> 
# 288
struct __is_floating { 
# 290
enum { __value}; 
# 291
typedef __false_type __type; 
# 292
}; 
# 296
template<> struct __is_floating< float>  { 
# 298
enum { __value = 1}; 
# 299
typedef __true_type __type; 
# 300
}; 
# 303
template<> struct __is_floating< double>  { 
# 305
enum { __value = 1}; 
# 306
typedef __true_type __type; 
# 307
}; 
# 310
template<> struct __is_floating< long double>  { 
# 312
enum { __value = 1}; 
# 313
typedef __true_type __type; 
# 314
}; 
# 319
template< class _Tp> 
# 320
struct __is_pointer { 
# 322
enum { __value}; 
# 323
typedef __false_type __type; 
# 324
}; 
# 326
template< class _Tp> 
# 327
struct __is_pointer< _Tp *>  { 
# 329
enum { __value = 1}; 
# 330
typedef __true_type __type; 
# 331
}; 
# 336
template< class _Tp> 
# 337
struct __is_arithmetic : public __traitor< __is_integer< _Tp> , __is_floating< _Tp> >  { 
# 339
}; 
# 344
template< class _Tp> 
# 345
struct __is_scalar : public __traitor< __is_arithmetic< _Tp> , __is_pointer< _Tp> >  { 
# 347
}; 
# 352
template< class _Tp> 
# 353
struct __is_char { 
# 355
enum { __value}; 
# 356
typedef __false_type __type; 
# 357
}; 
# 360
template<> struct __is_char< char>  { 
# 362
enum { __value = 1}; 
# 363
typedef __true_type __type; 
# 364
}; 
# 368
template<> struct __is_char< wchar_t>  { 
# 370
enum { __value = 1}; 
# 371
typedef __true_type __type; 
# 372
}; 
# 375
template< class _Tp> 
# 376
struct __is_byte { 
# 378
enum { __value}; 
# 379
typedef __false_type __type; 
# 380
}; 
# 383
template<> struct __is_byte< char>  { 
# 385
enum { __value = 1}; 
# 386
typedef __true_type __type; 
# 387
}; 
# 390
template<> struct __is_byte< signed char>  { 
# 392
enum { __value = 1}; 
# 393
typedef __true_type __type; 
# 394
}; 
# 397
template<> struct __is_byte< unsigned char>  { 
# 399
enum { __value = 1}; 
# 400
typedef __true_type __type; 
# 401
}; 
# 417 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/bits/cpp_type_traits.h" 3
template< class _Tp> 
# 418
struct __is_move_iterator { 
# 420
enum { __value}; 
# 421
typedef __false_type __type; 
# 422
}; 
# 426
template< class _Iterator> inline _Iterator 
# 428
__miter_base(_Iterator __it) 
# 429
{ return __it; } 
# 432
}
# 433
}
# 37 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/ext/type_traits.h" 3
extern "C++" {
# 39
namespace __gnu_cxx __attribute((__visibility__("default"))) { 
# 44
template< bool , class > 
# 45
struct __enable_if { 
# 46
}; 
# 48
template< class _Tp> 
# 49
struct __enable_if< true, _Tp>  { 
# 50
typedef _Tp __type; }; 
# 54
template< bool _Cond, class _Iftrue, class _Iffalse> 
# 55
struct __conditional_type { 
# 56
typedef _Iftrue __type; }; 
# 58
template< class _Iftrue, class _Iffalse> 
# 59
struct __conditional_type< false, _Iftrue, _Iffalse>  { 
# 60
typedef _Iffalse __type; }; 
# 64
template< class _Tp> 
# 65
struct __add_unsigned { 
# 68
private: typedef __enable_if< std::__is_integer< _Tp> ::__value, _Tp>  __if_type; 
# 71
public: typedef typename __enable_if< std::__is_integer< _Tp> ::__value, _Tp> ::__type __type; 
# 72
}; 
# 75
template<> struct __add_unsigned< char>  { 
# 76
typedef unsigned char __type; }; 
# 79
template<> struct __add_unsigned< signed char>  { 
# 80
typedef unsigned char __type; }; 
# 83
template<> struct __add_unsigned< short>  { 
# 84
typedef unsigned short __type; }; 
# 87
template<> struct __add_unsigned< int>  { 
# 88
typedef unsigned __type; }; 
# 91
template<> struct __add_unsigned< long>  { 
# 92
typedef unsigned long __type; }; 
# 95
template<> struct __add_unsigned< long long>  { 
# 96
typedef unsigned long long __type; }; 
# 100
template<> struct __add_unsigned< bool> ; 
# 103
template<> struct __add_unsigned< wchar_t> ; 
# 107
template< class _Tp> 
# 108
struct __remove_unsigned { 
# 111
private: typedef __enable_if< std::__is_integer< _Tp> ::__value, _Tp>  __if_type; 
# 114
public: typedef typename __enable_if< std::__is_integer< _Tp> ::__value, _Tp> ::__type __type; 
# 115
}; 
# 118
template<> struct __remove_unsigned< char>  { 
# 119
typedef signed char __type; }; 
# 122
template<> struct __remove_unsigned< unsigned char>  { 
# 123
typedef signed char __type; }; 
# 126
template<> struct __remove_unsigned< unsigned short>  { 
# 127
typedef short __type; }; 
# 130
template<> struct __remove_unsigned< unsigned>  { 
# 131
typedef int __type; }; 
# 134
template<> struct __remove_unsigned< unsigned long>  { 
# 135
typedef long __type; }; 
# 138
template<> struct __remove_unsigned< unsigned long long>  { 
# 139
typedef long long __type; }; 
# 143
template<> struct __remove_unsigned< bool> ; 
# 146
template<> struct __remove_unsigned< wchar_t> ; 
# 150
template< class _Type> inline bool 
# 152
__is_null_pointer(_Type *__ptr) 
# 153
{ return __ptr == 0; } 
# 155
template< class _Type> inline bool 
# 157
__is_null_pointer(_Type) 
# 158
{ return false; } 
# 162
inline bool __is_null_pointer(std::nullptr_t) 
# 163
{ return true; } 
# 167
template< class _Tp, bool  = std::__is_integer< _Tp> ::__value> 
# 168
struct __promote { 
# 169
typedef double __type; }; 
# 174
template< class _Tp> 
# 175
struct __promote< _Tp, false>  { 
# 176
}; 
# 179
template<> struct __promote< long double>  { 
# 180
typedef long double __type; }; 
# 183
template<> struct __promote< double>  { 
# 184
typedef double __type; }; 
# 187
template<> struct __promote< float>  { 
# 188
typedef float __type; }; 
# 190
template< class _Tp, class _Up, class 
# 191
_Tp2 = typename __promote< _Tp> ::__type, class 
# 192
_Up2 = typename __promote< _Up> ::__type> 
# 193
struct __promote_2 { 
# 195
typedef __typeof__(_Tp2() + _Up2()) __type; 
# 196
}; 
# 198
template< class _Tp, class _Up, class _Vp, class 
# 199
_Tp2 = typename __promote< _Tp> ::__type, class 
# 200
_Up2 = typename __promote< _Up> ::__type, class 
# 201
_Vp2 = typename __promote< _Vp> ::__type> 
# 202
struct __promote_3 { 
# 204
typedef __typeof__((_Tp2() + _Up2()) + _Vp2()) __type; 
# 205
}; 
# 207
template< class _Tp, class _Up, class _Vp, class _Wp, class 
# 208
_Tp2 = typename __promote< _Tp> ::__type, class 
# 209
_Up2 = typename __promote< _Up> ::__type, class 
# 210
_Vp2 = typename __promote< _Vp> ::__type, class 
# 211
_Wp2 = typename __promote< _Wp> ::__type> 
# 212
struct __promote_4 { 
# 214
typedef __typeof__(((_Tp2() + _Up2()) + _Vp2()) + _Wp2()) __type; 
# 215
}; 
# 218
}
# 219
}
# 29 "/usr/include/math.h" 3
extern "C" {
# 28 "/usr/include/bits/mathdef.h" 3
typedef float float_t; 
# 29
typedef double double_t; 
# 54 "/usr/include/bits/mathcalls.h" 3
extern double acos(double __x) throw(); extern double __acos(double __x) throw(); 
# 56
extern double asin(double __x) throw(); extern double __asin(double __x) throw(); 
# 58
extern double atan(double __x) throw(); extern double __atan(double __x) throw(); 
# 60
extern double atan2(double __y, double __x) throw(); extern double __atan2(double __y, double __x) throw(); 
# 63
extern double cos(double __x) throw(); extern double __cos(double __x) throw(); 
# 65
extern double sin(double __x) throw(); extern double __sin(double __x) throw(); 
# 67
extern double tan(double __x) throw(); extern double __tan(double __x) throw(); 
# 72
extern double cosh(double __x) throw(); extern double __cosh(double __x) throw(); 
# 74
extern double sinh(double __x) throw(); extern double __sinh(double __x) throw(); 
# 76
extern double tanh(double __x) throw(); extern double __tanh(double __x) throw(); 
# 81
extern void sincos(double __x, double * __sinx, double * __cosx) throw(); extern void __sincos(double __x, double * __sinx, double * __cosx) throw(); 
# 88
extern double acosh(double __x) throw(); extern double __acosh(double __x) throw(); 
# 90
extern double asinh(double __x) throw(); extern double __asinh(double __x) throw(); 
# 92
extern double atanh(double __x) throw(); extern double __atanh(double __x) throw(); 
# 100
extern double exp(double __x) throw(); extern double __exp(double __x) throw(); 
# 103
extern double frexp(double __x, int * __exponent) throw(); extern double __frexp(double __x, int * __exponent) throw(); 
# 106
extern double ldexp(double __x, int __exponent) throw(); extern double __ldexp(double __x, int __exponent) throw(); 
# 109
extern double log(double __x) throw(); extern double __log(double __x) throw(); 
# 112
extern double log10(double __x) throw(); extern double __log10(double __x) throw(); 
# 115
extern double modf(double __x, double * __iptr) throw(); extern double __modf(double __x, double * __iptr) throw()
# 116
 __attribute((__nonnull__(2))); 
# 121
extern double exp10(double __x) throw(); extern double __exp10(double __x) throw(); 
# 123
extern double pow10(double __x) throw(); extern double __pow10(double __x) throw(); 
# 129
extern double expm1(double __x) throw(); extern double __expm1(double __x) throw(); 
# 132
extern double log1p(double __x) throw(); extern double __log1p(double __x) throw(); 
# 135
extern double logb(double __x) throw(); extern double __logb(double __x) throw(); 
# 142
extern double exp2(double __x) throw(); extern double __exp2(double __x) throw(); 
# 145
extern double log2(double __x) throw(); extern double __log2(double __x) throw(); 
# 154
extern double pow(double __x, double __y) throw(); extern double __pow(double __x, double __y) throw(); 
# 157
extern double sqrt(double __x) throw(); extern double __sqrt(double __x) throw(); 
# 163
extern double hypot(double __x, double __y) throw(); extern double __hypot(double __x, double __y) throw(); 
# 170
extern double cbrt(double __x) throw(); extern double __cbrt(double __x) throw(); 
# 179
extern double ceil(double __x) throw() __attribute((const)); extern double __ceil(double __x) throw() __attribute((const)); 
# 182
extern double fabs(double __x) throw() __attribute((const)); extern double __fabs(double __x) throw() __attribute((const)); 
# 185
extern double floor(double __x) throw() __attribute((const)); extern double __floor(double __x) throw() __attribute((const)); 
# 188
extern double fmod(double __x, double __y) throw(); extern double __fmod(double __x, double __y) throw(); 
# 193
extern int __isinf(double __value) throw() __attribute((const)); 
# 196
extern int __finite(double __value) throw() __attribute((const)); 
# 202
extern int isinf(double __value) throw() __attribute((const)); 
# 205
extern int finite(double __value) throw() __attribute((const)); 
# 208
extern double drem(double __x, double __y) throw(); extern double __drem(double __x, double __y) throw(); 
# 212
extern double significand(double __x) throw(); extern double __significand(double __x) throw(); 
# 218
extern double copysign(double __x, double __y) throw() __attribute((const)); extern double __copysign(double __x, double __y) throw() __attribute((const)); 
# 225
extern double nan(const char * __tagb) throw() __attribute((const)); extern double __nan(const char * __tagb) throw() __attribute((const)); 
# 231
extern int __isnan(double __value) throw() __attribute((const)); 
# 235
extern int isnan(double __value) throw() __attribute((const)); 
# 238
extern double j0(double) throw(); extern double __j0(double) throw(); 
# 239
extern double j1(double) throw(); extern double __j1(double) throw(); 
# 240
extern double jn(int, double) throw(); extern double __jn(int, double) throw(); 
# 241
extern double y0(double) throw(); extern double __y0(double) throw(); 
# 242
extern double y1(double) throw(); extern double __y1(double) throw(); 
# 243
extern double yn(int, double) throw(); extern double __yn(int, double) throw(); 
# 250
extern double erf(double) throw(); extern double __erf(double) throw(); 
# 251
extern double erfc(double) throw(); extern double __erfc(double) throw(); 
# 252
extern double lgamma(double) throw(); extern double __lgamma(double) throw(); 
# 259
extern double tgamma(double) throw(); extern double __tgamma(double) throw(); 
# 265
extern double gamma(double) throw(); extern double __gamma(double) throw(); 
# 272
extern double lgamma_r(double, int * __signgamp) throw(); extern double __lgamma_r(double, int * __signgamp) throw(); 
# 280
extern double rint(double __x) throw(); extern double __rint(double __x) throw(); 
# 283
extern double nextafter(double __x, double __y) throw() __attribute((const)); extern double __nextafter(double __x, double __y) throw() __attribute((const)); 
# 285
extern double nexttoward(double __x, long double __y) throw() __attribute((const)); extern double __nexttoward(double __x, long double __y) throw() __attribute((const)); 
# 289
extern double remainder(double __x, double __y) throw(); extern double __remainder(double __x, double __y) throw(); 
# 293
extern double scalbn(double __x, int __n) throw(); extern double __scalbn(double __x, int __n) throw(); 
# 297
extern int ilogb(double __x) throw(); extern int __ilogb(double __x) throw(); 
# 302
extern double scalbln(double __x, long __n) throw(); extern double __scalbln(double __x, long __n) throw(); 
# 306
extern double nearbyint(double __x) throw(); extern double __nearbyint(double __x) throw(); 
# 310
extern double round(double __x) throw() __attribute((const)); extern double __round(double __x) throw() __attribute((const)); 
# 314
extern double trunc(double __x) throw() __attribute((const)); extern double __trunc(double __x) throw() __attribute((const)); 
# 319
extern double remquo(double __x, double __y, int * __quo) throw(); extern double __remquo(double __x, double __y, int * __quo) throw(); 
# 326
extern long lrint(double __x) throw(); extern long __lrint(double __x) throw(); 
# 327
extern long long llrint(double __x) throw(); extern long long __llrint(double __x) throw(); 
# 331
extern long lround(double __x) throw(); extern long __lround(double __x) throw(); 
# 332
extern long long llround(double __x) throw(); extern long long __llround(double __x) throw(); 
# 336
extern double fdim(double __x, double __y) throw(); extern double __fdim(double __x, double __y) throw(); 
# 339
extern double fmax(double __x, double __y) throw() __attribute((const)); extern double __fmax(double __x, double __y) throw() __attribute((const)); 
# 342
extern double fmin(double __x, double __y) throw() __attribute((const)); extern double __fmin(double __x, double __y) throw() __attribute((const)); 
# 346
extern int __fpclassify(double __value) throw()
# 347
 __attribute((const)); 
# 350
extern int __signbit(double __value) throw()
# 351
 __attribute((const)); 
# 355
extern double fma(double __x, double __y, double __z) throw(); extern double __fma(double __x, double __y, double __z) throw(); 
# 364
extern double scalb(double __x, double __n) throw(); extern double __scalb(double __x, double __n) throw(); 
# 54 "/usr/include/bits/mathcalls.h" 3
extern float acosf(float __x) throw(); extern float __acosf(float __x) throw(); 
# 56
extern float asinf(float __x) throw(); extern float __asinf(float __x) throw(); 
# 58
extern float atanf(float __x) throw(); extern float __atanf(float __x) throw(); 
# 60
extern float atan2f(float __y, float __x) throw(); extern float __atan2f(float __y, float __x) throw(); 
# 63
extern float cosf(float __x) throw(); 
# 65
extern float sinf(float __x) throw(); 
# 67
extern float tanf(float __x) throw(); 
# 72
extern float coshf(float __x) throw(); extern float __coshf(float __x) throw(); 
# 74
extern float sinhf(float __x) throw(); extern float __sinhf(float __x) throw(); 
# 76
extern float tanhf(float __x) throw(); extern float __tanhf(float __x) throw(); 
# 81
extern void sincosf(float __x, float * __sinx, float * __cosx) throw(); 
# 88
extern float acoshf(float __x) throw(); extern float __acoshf(float __x) throw(); 
# 90
extern float asinhf(float __x) throw(); extern float __asinhf(float __x) throw(); 
# 92
extern float atanhf(float __x) throw(); extern float __atanhf(float __x) throw(); 
# 100
extern float expf(float __x) throw(); 
# 103
extern float frexpf(float __x, int * __exponent) throw(); extern float __frexpf(float __x, int * __exponent) throw(); 
# 106
extern float ldexpf(float __x, int __exponent) throw(); extern float __ldexpf(float __x, int __exponent) throw(); 
# 109
extern float logf(float __x) throw(); 
# 112
extern float log10f(float __x) throw(); 
# 115
extern float modff(float __x, float * __iptr) throw(); extern float __modff(float __x, float * __iptr) throw()
# 116
 __attribute((__nonnull__(2))); 
# 121
extern float exp10f(float __x) throw(); 
# 123
extern float pow10f(float __x) throw(); extern float __pow10f(float __x) throw(); 
# 129
extern float expm1f(float __x) throw(); extern float __expm1f(float __x) throw(); 
# 132
extern float log1pf(float __x) throw(); extern float __log1pf(float __x) throw(); 
# 135
extern float logbf(float __x) throw(); extern float __logbf(float __x) throw(); 
# 142
extern float exp2f(float __x) throw(); extern float __exp2f(float __x) throw(); 
# 145
extern float log2f(float __x) throw(); 
# 154
extern float powf(float __x, float __y) throw(); 
# 157
extern float sqrtf(float __x) throw(); extern float __sqrtf(float __x) throw(); 
# 163
extern float hypotf(float __x, float __y) throw(); extern float __hypotf(float __x, float __y) throw(); 
# 170
extern float cbrtf(float __x) throw(); extern float __cbrtf(float __x) throw(); 
# 179
extern float ceilf(float __x) throw() __attribute((const)); extern float __ceilf(float __x) throw() __attribute((const)); 
# 182
extern float fabsf(float __x) throw() __attribute((const)); extern float __fabsf(float __x) throw() __attribute((const)); 
# 185
extern float floorf(float __x) throw() __attribute((const)); extern float __floorf(float __x) throw() __attribute((const)); 
# 188
extern float fmodf(float __x, float __y) throw(); extern float __fmodf(float __x, float __y) throw(); 
# 193
extern int __isinff(float __value) throw() __attribute((const)); 
# 196
extern int __finitef(float __value) throw() __attribute((const)); 
# 202
extern int isinff(float __value) throw() __attribute((const)); 
# 205
extern int finitef(float __value) throw() __attribute((const)); 
# 208
extern float dremf(float __x, float __y) throw(); extern float __dremf(float __x, float __y) throw(); 
# 212
extern float significandf(float __x) throw(); extern float __significandf(float __x) throw(); 
# 218
extern float copysignf(float __x, float __y) throw() __attribute((const)); extern float __copysignf(float __x, float __y) throw() __attribute((const)); 
# 225
extern float nanf(const char * __tagb) throw() __attribute((const)); extern float __nanf(const char * __tagb) throw() __attribute((const)); 
# 231
extern int __isnanf(float __value) throw() __attribute((const)); 
# 235
extern int isnanf(float __value) throw() __attribute((const)); 
# 238
extern float j0f(float) throw(); extern float __j0f(float) throw(); 
# 239
extern float j1f(float) throw(); extern float __j1f(float) throw(); 
# 240
extern float jnf(int, float) throw(); extern float __jnf(int, float) throw(); 
# 241
extern float y0f(float) throw(); extern float __y0f(float) throw(); 
# 242
extern float y1f(float) throw(); extern float __y1f(float) throw(); 
# 243
extern float ynf(int, float) throw(); extern float __ynf(int, float) throw(); 
# 250
extern float erff(float) throw(); extern float __erff(float) throw(); 
# 251
extern float erfcf(float) throw(); extern float __erfcf(float) throw(); 
# 252
extern float lgammaf(float) throw(); extern float __lgammaf(float) throw(); 
# 259
extern float tgammaf(float) throw(); extern float __tgammaf(float) throw(); 
# 265
extern float gammaf(float) throw(); extern float __gammaf(float) throw(); 
# 272
extern float lgammaf_r(float, int * __signgamp) throw(); extern float __lgammaf_r(float, int * __signgamp) throw(); 
# 280
extern float rintf(float __x) throw(); extern float __rintf(float __x) throw(); 
# 283
extern float nextafterf(float __x, float __y) throw() __attribute((const)); extern float __nextafterf(float __x, float __y) throw() __attribute((const)); 
# 285
extern float nexttowardf(float __x, long double __y) throw() __attribute((const)); extern float __nexttowardf(float __x, long double __y) throw() __attribute((const)); 
# 289
extern float remainderf(float __x, float __y) throw(); extern float __remainderf(float __x, float __y) throw(); 
# 293
extern float scalbnf(float __x, int __n) throw(); extern float __scalbnf(float __x, int __n) throw(); 
# 297
extern int ilogbf(float __x) throw(); extern int __ilogbf(float __x) throw(); 
# 302
extern float scalblnf(float __x, long __n) throw(); extern float __scalblnf(float __x, long __n) throw(); 
# 306
extern float nearbyintf(float __x) throw(); extern float __nearbyintf(float __x) throw(); 
# 310
extern float roundf(float __x) throw() __attribute((const)); extern float __roundf(float __x) throw() __attribute((const)); 
# 314
extern float truncf(float __x) throw() __attribute((const)); extern float __truncf(float __x) throw() __attribute((const)); 
# 319
extern float remquof(float __x, float __y, int * __quo) throw(); extern float __remquof(float __x, float __y, int * __quo) throw(); 
# 326
extern long lrintf(float __x) throw(); extern long __lrintf(float __x) throw(); 
# 327
extern long long llrintf(float __x) throw(); extern long long __llrintf(float __x) throw(); 
# 331
extern long lroundf(float __x) throw(); extern long __lroundf(float __x) throw(); 
# 332
extern long long llroundf(float __x) throw(); extern long long __llroundf(float __x) throw(); 
# 336
extern float fdimf(float __x, float __y) throw(); extern float __fdimf(float __x, float __y) throw(); 
# 339
extern float fmaxf(float __x, float __y) throw() __attribute((const)); extern float __fmaxf(float __x, float __y) throw() __attribute((const)); 
# 342
extern float fminf(float __x, float __y) throw() __attribute((const)); extern float __fminf(float __x, float __y) throw() __attribute((const)); 
# 346
extern int __fpclassifyf(float __value) throw()
# 347
 __attribute((const)); 
# 350
extern int __signbitf(float __value) throw()
# 351
 __attribute((const)); 
# 355
extern float fmaf(float __x, float __y, float __z) throw(); extern float __fmaf(float __x, float __y, float __z) throw(); 
# 364
extern float scalbf(float __x, float __n) throw(); extern float __scalbf(float __x, float __n) throw(); 
# 54 "/usr/include/bits/mathcalls.h" 3
extern long double acosl(long double __x) throw(); extern long double __acosl(long double __x) throw(); 
# 56
extern long double asinl(long double __x) throw(); extern long double __asinl(long double __x) throw(); 
# 58
extern long double atanl(long double __x) throw(); extern long double __atanl(long double __x) throw(); 
# 60
extern long double atan2l(long double __y, long double __x) throw(); extern long double __atan2l(long double __y, long double __x) throw(); 
# 63
extern long double cosl(long double __x) throw(); extern long double __cosl(long double __x) throw(); 
# 65
extern long double sinl(long double __x) throw(); extern long double __sinl(long double __x) throw(); 
# 67
extern long double tanl(long double __x) throw(); extern long double __tanl(long double __x) throw(); 
# 72
extern long double coshl(long double __x) throw(); extern long double __coshl(long double __x) throw(); 
# 74
extern long double sinhl(long double __x) throw(); extern long double __sinhl(long double __x) throw(); 
# 76
extern long double tanhl(long double __x) throw(); extern long double __tanhl(long double __x) throw(); 
# 81
extern void sincosl(long double __x, long double * __sinx, long double * __cosx) throw(); extern void __sincosl(long double __x, long double * __sinx, long double * __cosx) throw(); 
# 88
extern long double acoshl(long double __x) throw(); extern long double __acoshl(long double __x) throw(); 
# 90
extern long double asinhl(long double __x) throw(); extern long double __asinhl(long double __x) throw(); 
# 92
extern long double atanhl(long double __x) throw(); extern long double __atanhl(long double __x) throw(); 
# 100
extern long double expl(long double __x) throw(); extern long double __expl(long double __x) throw(); 
# 103
extern long double frexpl(long double __x, int * __exponent) throw(); extern long double __frexpl(long double __x, int * __exponent) throw(); 
# 106
extern long double ldexpl(long double __x, int __exponent) throw(); extern long double __ldexpl(long double __x, int __exponent) throw(); 
# 109
extern long double logl(long double __x) throw(); extern long double __logl(long double __x) throw(); 
# 112
extern long double log10l(long double __x) throw(); extern long double __log10l(long double __x) throw(); 
# 115
extern long double modfl(long double __x, long double * __iptr) throw(); extern long double __modfl(long double __x, long double * __iptr) throw()
# 116
 __attribute((__nonnull__(2))); 
# 121
extern long double exp10l(long double __x) throw(); extern long double __exp10l(long double __x) throw(); 
# 123
extern long double pow10l(long double __x) throw(); extern long double __pow10l(long double __x) throw(); 
# 129
extern long double expm1l(long double __x) throw(); extern long double __expm1l(long double __x) throw(); 
# 132
extern long double log1pl(long double __x) throw(); extern long double __log1pl(long double __x) throw(); 
# 135
extern long double logbl(long double __x) throw(); extern long double __logbl(long double __x) throw(); 
# 142
extern long double exp2l(long double __x) throw(); extern long double __exp2l(long double __x) throw(); 
# 145
extern long double log2l(long double __x) throw(); extern long double __log2l(long double __x) throw(); 
# 154
extern long double powl(long double __x, long double __y) throw(); extern long double __powl(long double __x, long double __y) throw(); 
# 157
extern long double sqrtl(long double __x) throw(); extern long double __sqrtl(long double __x) throw(); 
# 163
extern long double hypotl(long double __x, long double __y) throw(); extern long double __hypotl(long double __x, long double __y) throw(); 
# 170
extern long double cbrtl(long double __x) throw(); extern long double __cbrtl(long double __x) throw(); 
# 179
extern long double ceill(long double __x) throw() __attribute((const)); extern long double __ceill(long double __x) throw() __attribute((const)); 
# 182
extern long double fabsl(long double __x) throw() __attribute((const)); extern long double __fabsl(long double __x) throw() __attribute((const)); 
# 185
extern long double floorl(long double __x) throw() __attribute((const)); extern long double __floorl(long double __x) throw() __attribute((const)); 
# 188
extern long double fmodl(long double __x, long double __y) throw(); extern long double __fmodl(long double __x, long double __y) throw(); 
# 193
extern int __isinfl(long double __value) throw() __attribute((const)); 
# 196
extern int __finitel(long double __value) throw() __attribute((const)); 
# 202
extern int isinfl(long double __value) throw() __attribute((const)); 
# 205
extern int finitel(long double __value) throw() __attribute((const)); 
# 208
extern long double dreml(long double __x, long double __y) throw(); extern long double __dreml(long double __x, long double __y) throw(); 
# 212
extern long double significandl(long double __x) throw(); extern long double __significandl(long double __x) throw(); 
# 218
extern long double copysignl(long double __x, long double __y) throw() __attribute((const)); extern long double __copysignl(long double __x, long double __y) throw() __attribute((const)); 
# 225
extern long double nanl(const char * __tagb) throw() __attribute((const)); extern long double __nanl(const char * __tagb) throw() __attribute((const)); 
# 231
extern int __isnanl(long double __value) throw() __attribute((const)); 
# 235
extern int isnanl(long double __value) throw() __attribute((const)); 
# 238
extern long double j0l(long double) throw(); extern long double __j0l(long double) throw(); 
# 239
extern long double j1l(long double) throw(); extern long double __j1l(long double) throw(); 
# 240
extern long double jnl(int, long double) throw(); extern long double __jnl(int, long double) throw(); 
# 241
extern long double y0l(long double) throw(); extern long double __y0l(long double) throw(); 
# 242
extern long double y1l(long double) throw(); extern long double __y1l(long double) throw(); 
# 243
extern long double ynl(int, long double) throw(); extern long double __ynl(int, long double) throw(); 
# 250
extern long double erfl(long double) throw(); extern long double __erfl(long double) throw(); 
# 251
extern long double erfcl(long double) throw(); extern long double __erfcl(long double) throw(); 
# 252
extern long double lgammal(long double) throw(); extern long double __lgammal(long double) throw(); 
# 259
extern long double tgammal(long double) throw(); extern long double __tgammal(long double) throw(); 
# 265
extern long double gammal(long double) throw(); extern long double __gammal(long double) throw(); 
# 272
extern long double lgammal_r(long double, int * __signgamp) throw(); extern long double __lgammal_r(long double, int * __signgamp) throw(); 
# 280
extern long double rintl(long double __x) throw(); extern long double __rintl(long double __x) throw(); 
# 283
extern long double nextafterl(long double __x, long double __y) throw() __attribute((const)); extern long double __nextafterl(long double __x, long double __y) throw() __attribute((const)); 
# 285
extern long double nexttowardl(long double __x, long double __y) throw() __attribute((const)); extern long double __nexttowardl(long double __x, long double __y) throw() __attribute((const)); 
# 289
extern long double remainderl(long double __x, long double __y) throw(); extern long double __remainderl(long double __x, long double __y) throw(); 
# 293
extern long double scalbnl(long double __x, int __n) throw(); extern long double __scalbnl(long double __x, int __n) throw(); 
# 297
extern int ilogbl(long double __x) throw(); extern int __ilogbl(long double __x) throw(); 
# 302
extern long double scalblnl(long double __x, long __n) throw(); extern long double __scalblnl(long double __x, long __n) throw(); 
# 306
extern long double nearbyintl(long double __x) throw(); extern long double __nearbyintl(long double __x) throw(); 
# 310
extern long double roundl(long double __x) throw() __attribute((const)); extern long double __roundl(long double __x) throw() __attribute((const)); 
# 314
extern long double truncl(long double __x) throw() __attribute((const)); extern long double __truncl(long double __x) throw() __attribute((const)); 
# 319
extern long double remquol(long double __x, long double __y, int * __quo) throw(); extern long double __remquol(long double __x, long double __y, int * __quo) throw(); 
# 326
extern long lrintl(long double __x) throw(); extern long __lrintl(long double __x) throw(); 
# 327
extern long long llrintl(long double __x) throw(); extern long long __llrintl(long double __x) throw(); 
# 331
extern long lroundl(long double __x) throw(); extern long __lroundl(long double __x) throw(); 
# 332
extern long long llroundl(long double __x) throw(); extern long long __llroundl(long double __x) throw(); 
# 336
extern long double fdiml(long double __x, long double __y) throw(); extern long double __fdiml(long double __x, long double __y) throw(); 
# 339
extern long double fmaxl(long double __x, long double __y) throw() __attribute((const)); extern long double __fmaxl(long double __x, long double __y) throw() __attribute((const)); 
# 342
extern long double fminl(long double __x, long double __y) throw() __attribute((const)); extern long double __fminl(long double __x, long double __y) throw() __attribute((const)); 
# 346
extern int __fpclassifyl(long double __value) throw()
# 347
 __attribute((const)); 
# 350
extern int __signbitl(long double __value) throw()
# 351
 __attribute((const)); 
# 355
extern long double fmal(long double __x, long double __y, long double __z) throw(); extern long double __fmal(long double __x, long double __y, long double __z) throw(); 
# 364
extern long double scalbl(long double __x, long double __n) throw(); extern long double __scalbl(long double __x, long double __n) throw(); 
# 149 "/usr/include/math.h" 3
extern int signgam; 
# 191 "/usr/include/math.h" 3
enum { 
# 192
FP_NAN, 
# 195
FP_INFINITE, 
# 198
FP_ZERO, 
# 201
FP_SUBNORMAL, 
# 204
FP_NORMAL
# 207
}; 
# 295 "/usr/include/math.h" 3
typedef 
# 289
enum { 
# 290
_IEEE_ = (-1), 
# 291
_SVID_ = 0, 
# 292
_XOPEN_, 
# 293
_POSIX_, 
# 294
_ISOC_
# 295
} _LIB_VERSION_TYPE; 
# 300
extern _LIB_VERSION_TYPE _LIB_VERSION; 
# 311 "/usr/include/math.h" 3
struct __exception { 
# 316
int type; 
# 317
char *name; 
# 318
double arg1; 
# 319
double arg2; 
# 320
double retval; 
# 321
}; 
# 324
extern int matherr(__exception * __exc) throw(); 
# 475 "/usr/include/math.h" 3
}
# 34 "/usr/include/stdlib.h" 3
extern "C" {
# 45 "/usr/include/bits/byteswap.h" 3
static inline unsigned __bswap_32(unsigned __bsx) 
# 46
{ 
# 47
return __builtin_bswap32(__bsx); 
# 48
} 
# 109 "/usr/include/bits/byteswap.h" 3
static inline __uint64_t __bswap_64(__uint64_t __bsx) 
# 110
{ 
# 111
return __builtin_bswap64(__bsx); 
# 112
} 
# 66 "/usr/include/bits/waitstatus.h" 3
union wait { 
# 68
int w_status; 
# 70
struct { 
# 72
unsigned __w_termsig:7; 
# 73
unsigned __w_coredump:1; 
# 74
unsigned __w_retcode:8; 
# 75
unsigned:16; 
# 83
} __wait_terminated; 
# 85
struct { 
# 87
unsigned __w_stopval:8; 
# 88
unsigned __w_stopsig:8; 
# 89
unsigned:16; 
# 96
} __wait_stopped; 
# 97
}; 
# 101 "/usr/include/stdlib.h" 3
typedef 
# 98
struct { 
# 99
int quot; 
# 100
int rem; 
# 101
} div_t; 
# 109
typedef 
# 106
struct { 
# 107
long quot; 
# 108
long rem; 
# 109
} ldiv_t; 
# 121
__extension__ typedef 
# 118
struct { 
# 119
long long quot; 
# 120
long long rem; 
# 121
} lldiv_t; 
# 139 "/usr/include/stdlib.h" 3
extern size_t __ctype_get_mb_cur_max() throw(); 
# 144
extern double atof(const char * __nptr) throw()
# 145
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 147
extern int atoi(const char * __nptr) throw()
# 148
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 150
extern long atol(const char * __nptr) throw()
# 151
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 157
__extension__ extern long long atoll(const char * __nptr) throw()
# 158
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 164
extern double strtod(const char *__restrict__ __nptr, char **__restrict__ __endptr) throw()
# 166
 __attribute((__nonnull__(1))); 
# 172
extern float strtof(const char *__restrict__ __nptr, char **__restrict__ __endptr) throw()
# 173
 __attribute((__nonnull__(1))); 
# 175
extern long double strtold(const char *__restrict__ __nptr, char **__restrict__ __endptr) throw()
# 177
 __attribute((__nonnull__(1))); 
# 183
extern long strtol(const char *__restrict__ __nptr, char **__restrict__ __endptr, int __base) throw()
# 185
 __attribute((__nonnull__(1))); 
# 187
extern unsigned long strtoul(const char *__restrict__ __nptr, char **__restrict__ __endptr, int __base) throw()
# 189
 __attribute((__nonnull__(1))); 
# 195
__extension__ extern long long strtoq(const char *__restrict__ __nptr, char **__restrict__ __endptr, int __base) throw()
# 197
 __attribute((__nonnull__(1))); 
# 200
__extension__ extern unsigned long long strtouq(const char *__restrict__ __nptr, char **__restrict__ __endptr, int __base) throw()
# 202
 __attribute((__nonnull__(1))); 
# 209
__extension__ extern long long strtoll(const char *__restrict__ __nptr, char **__restrict__ __endptr, int __base) throw()
# 211
 __attribute((__nonnull__(1))); 
# 214
__extension__ extern unsigned long long strtoull(const char *__restrict__ __nptr, char **__restrict__ __endptr, int __base) throw()
# 216
 __attribute((__nonnull__(1))); 
# 239 "/usr/include/stdlib.h" 3
extern long strtol_l(const char *__restrict__ __nptr, char **__restrict__ __endptr, int __base, __locale_t __loc) throw()
# 241
 __attribute((__nonnull__(1, 4))); 
# 243
extern unsigned long strtoul_l(const char *__restrict__ __nptr, char **__restrict__ __endptr, int __base, __locale_t __loc) throw()
# 246
 __attribute((__nonnull__(1, 4))); 
# 249
__extension__ extern long long strtoll_l(const char *__restrict__ __nptr, char **__restrict__ __endptr, int __base, __locale_t __loc) throw()
# 252
 __attribute((__nonnull__(1, 4))); 
# 255
__extension__ extern unsigned long long strtoull_l(const char *__restrict__ __nptr, char **__restrict__ __endptr, int __base, __locale_t __loc) throw()
# 258
 __attribute((__nonnull__(1, 4))); 
# 260
extern double strtod_l(const char *__restrict__ __nptr, char **__restrict__ __endptr, __locale_t __loc) throw()
# 262
 __attribute((__nonnull__(1, 3))); 
# 264
extern float strtof_l(const char *__restrict__ __nptr, char **__restrict__ __endptr, __locale_t __loc) throw()
# 266
 __attribute((__nonnull__(1, 3))); 
# 268
extern long double strtold_l(const char *__restrict__ __nptr, char **__restrict__ __endptr, __locale_t __loc) throw()
# 271
 __attribute((__nonnull__(1, 3))); 
# 305 "/usr/include/stdlib.h" 3
extern char *l64a(long __n) throw(); 
# 308
extern long a64l(const char * __s) throw()
# 309
 __attribute((__pure__)) __attribute((__nonnull__(1))); 
# 27 "/usr/include/sys/types.h" 3
extern "C" {
# 33
typedef __u_char u_char; 
# 34
typedef __u_short u_short; 
# 35
typedef __u_int u_int; 
# 36
typedef __u_long u_long; 
# 37
typedef __quad_t quad_t; 
# 38
typedef __u_quad_t u_quad_t; 
# 39
typedef __fsid_t fsid_t; 
# 44
typedef __loff_t loff_t; 
# 48
typedef __ino_t ino_t; 
# 55
typedef __ino64_t ino64_t; 
# 60
typedef __dev_t dev_t; 
# 65
typedef __gid_t gid_t; 
# 70
typedef __mode_t mode_t; 
# 75
typedef __nlink_t nlink_t; 
# 80
typedef __uid_t uid_t; 
# 86
typedef __off_t off_t; 
# 93
typedef __off64_t off64_t; 
# 104 "/usr/include/sys/types.h" 3
typedef __id_t id_t; 
# 109
typedef __ssize_t ssize_t; 
# 115
typedef __daddr_t daddr_t; 
# 116
typedef __caddr_t caddr_t; 
# 122
typedef __key_t key_t; 
# 136 "/usr/include/sys/types.h" 3
typedef __useconds_t useconds_t; 
# 140
typedef __suseconds_t suseconds_t; 
# 150 "/usr/include/sys/types.h" 3
typedef unsigned long ulong; 
# 151
typedef unsigned short ushort; 
# 152
typedef unsigned uint; 
# 194 "/usr/include/sys/types.h" 3
typedef signed char int8_t __attribute((__mode__(__QI__))); 
# 195
typedef short int16_t __attribute((__mode__(__HI__))); 
# 196
typedef int int32_t __attribute((__mode__(__SI__))); 
# 197
typedef long int64_t __attribute((__mode__(__DI__))); 
# 200
typedef unsigned char u_int8_t __attribute((__mode__(__QI__))); 
# 201
typedef unsigned short u_int16_t __attribute((__mode__(__HI__))); 
# 202
typedef unsigned u_int32_t __attribute((__mode__(__SI__))); 
# 203
typedef unsigned long u_int64_t __attribute((__mode__(__DI__))); 
# 205
typedef long register_t __attribute((__mode__(__word__))); 
# 23 "/usr/include/bits/sigset.h" 3
typedef int __sig_atomic_t; 
# 31
typedef 
# 29
struct { 
# 30
unsigned long __val[(1024) / ((8) * sizeof(unsigned long))]; 
# 31
} __sigset_t; 
# 37 "/usr/include/sys/select.h" 3
typedef __sigset_t sigset_t; 
# 54 "/usr/include/sys/select.h" 3
typedef long __fd_mask; 
# 75 "/usr/include/sys/select.h" 3
typedef 
# 65
struct { 
# 69
__fd_mask fds_bits[1024 / (8 * ((int)sizeof(__fd_mask)))]; 
# 75
} fd_set; 
# 82
typedef __fd_mask fd_mask; 
# 96 "/usr/include/sys/select.h" 3
extern "C" {
# 106 "/usr/include/sys/select.h" 3
extern int select(int __nfds, fd_set *__restrict__ __readfds, fd_set *__restrict__ __writefds, fd_set *__restrict__ __exceptfds, timeval *__restrict__ __timeout); 
# 118 "/usr/include/sys/select.h" 3
extern int pselect(int __nfds, fd_set *__restrict__ __readfds, fd_set *__restrict__ __writefds, fd_set *__restrict__ __exceptfds, const timespec *__restrict__ __timeout, const __sigset_t *__restrict__ __sigmask); 
# 131 "/usr/include/sys/select.h" 3
}
# 29 "/usr/include/sys/sysmacros.h" 3
extern "C" {
# 32
__extension__ extern unsigned gnu_dev_major(unsigned long long __dev) throw()
# 33
 __attribute((const)); 
# 35
__extension__ extern unsigned gnu_dev_minor(unsigned long long __dev) throw()
# 36
 __attribute((const)); 
# 38
__extension__ extern unsigned long long gnu_dev_makedev(unsigned __major, unsigned __minor) throw()
# 40
 __attribute((const)); 
# 63 "/usr/include/sys/sysmacros.h" 3
}
# 228 "/usr/include/sys/types.h" 3
typedef __blksize_t blksize_t; 
# 235
typedef __blkcnt_t blkcnt_t; 
# 239
typedef __fsblkcnt_t fsblkcnt_t; 
# 243
typedef __fsfilcnt_t fsfilcnt_t; 
# 262 "/usr/include/sys/types.h" 3
typedef __blkcnt64_t blkcnt64_t; 
# 263
typedef __fsblkcnt64_t fsblkcnt64_t; 
# 264
typedef __fsfilcnt64_t fsfilcnt64_t; 
# 60 "/usr/include/bits/pthreadtypes.h" 3
typedef unsigned long pthread_t; 
# 63
union pthread_attr_t { 
# 65
char __size[56]; 
# 66
long __align; 
# 67
}; 
# 69
typedef pthread_attr_t pthread_attr_t; 
# 79
typedef 
# 75
struct __pthread_internal_list { 
# 77
__pthread_internal_list *__prev; 
# 78
__pthread_internal_list *__next; 
# 79
} __pthread_list_t; 
# 127 "/usr/include/bits/pthreadtypes.h" 3
typedef 
# 91 "/usr/include/bits/pthreadtypes.h" 3
union { 
# 92
struct __pthread_mutex_s { 
# 94
int __lock; 
# 95
unsigned __count; 
# 96
int __owner; 
# 98
unsigned __nusers; 
# 102
int __kind; 
# 104
short __spins; 
# 105
short __elision; 
# 106
__pthread_list_t __list; 
# 124 "/usr/include/bits/pthreadtypes.h" 3
} __data; 
# 125
char __size[40]; 
# 126
long __align; 
# 127
} pthread_mutex_t; 
# 133
typedef 
# 130
union { 
# 131
char __size[4]; 
# 132
int __align; 
# 133
} pthread_mutexattr_t; 
# 153
typedef 
# 139
union { 
# 141
struct { 
# 142
int __lock; 
# 143
unsigned __futex; 
# 144
__extension__ unsigned long long __total_seq; 
# 145
__extension__ unsigned long long __wakeup_seq; 
# 146
__extension__ unsigned long long __woken_seq; 
# 147
void *__mutex; 
# 148
unsigned __nwaiters; 
# 149
unsigned __broadcast_seq; 
# 150
} __data; 
# 151
char __size[48]; 
# 152
__extension__ long long __align; 
# 153
} pthread_cond_t; 
# 159
typedef 
# 156
union { 
# 157
char __size[4]; 
# 158
int __align; 
# 159
} pthread_condattr_t; 
# 163
typedef unsigned pthread_key_t; 
# 167
typedef int pthread_once_t; 
# 213 "/usr/include/bits/pthreadtypes.h" 3
typedef 
# 174 "/usr/include/bits/pthreadtypes.h" 3
union { 
# 177
struct { 
# 178
int __lock; 
# 179
unsigned __nr_readers; 
# 180
unsigned __readers_wakeup; 
# 181
unsigned __writer_wakeup; 
# 182
unsigned __nr_readers_queued; 
# 183
unsigned __nr_writers_queued; 
# 184
int __writer; 
# 185
int __shared; 
# 186
unsigned long __pad1; 
# 187
unsigned long __pad2; 
# 190
unsigned __flags; 
# 192
} __data; 
# 211 "/usr/include/bits/pthreadtypes.h" 3
char __size[56]; 
# 212
long __align; 
# 213
} pthread_rwlock_t; 
# 219
typedef 
# 216
union { 
# 217
char __size[8]; 
# 218
long __align; 
# 219
} pthread_rwlockattr_t; 
# 225
typedef volatile int pthread_spinlock_t; 
# 234
typedef 
# 231
union { 
# 232
char __size[32]; 
# 233
long __align; 
# 234
} pthread_barrier_t; 
# 240
typedef 
# 237
union { 
# 238
char __size[4]; 
# 239
int __align; 
# 240
} pthread_barrierattr_t; 
# 273 "/usr/include/sys/types.h" 3
}
# 321 "/usr/include/stdlib.h" 3
extern long random() throw(); 
# 324
extern void srandom(unsigned __seed) throw(); 
# 330
extern char *initstate(unsigned __seed, char * __statebuf, size_t __statelen) throw()
# 331
 __attribute((__nonnull__(2))); 
# 335
extern char *setstate(char * __statebuf) throw() __attribute((__nonnull__(1))); 
# 343
struct random_data { 
# 345
int32_t *fptr; 
# 346
int32_t *rptr; 
# 347
int32_t *state; 
# 348
int rand_type; 
# 349
int rand_deg; 
# 350
int rand_sep; 
# 351
int32_t *end_ptr; 
# 352
}; 
# 354
extern int random_r(random_data *__restrict__ __buf, int32_t *__restrict__ __result) throw()
# 355
 __attribute((__nonnull__(1, 2))); 
# 357
extern int srandom_r(unsigned __seed, random_data * __buf) throw()
# 358
 __attribute((__nonnull__(2))); 
# 360
extern int initstate_r(unsigned __seed, char *__restrict__ __statebuf, size_t __statelen, random_data *__restrict__ __buf) throw()
# 363
 __attribute((__nonnull__(2, 4))); 
# 365
extern int setstate_r(char *__restrict__ __statebuf, random_data *__restrict__ __buf) throw()
# 367
 __attribute((__nonnull__(1, 2))); 
# 374
extern int rand() throw(); 
# 376
extern void srand(unsigned __seed) throw(); 
# 381
extern int rand_r(unsigned * __seed) throw(); 
# 389
extern double drand48() throw(); 
# 390
extern double erand48(unsigned short  __xsubi[3]) throw() __attribute((__nonnull__(1))); 
# 393
extern long lrand48() throw(); 
# 394
extern long nrand48(unsigned short  __xsubi[3]) throw()
# 395
 __attribute((__nonnull__(1))); 
# 398
extern long mrand48() throw(); 
# 399
extern long jrand48(unsigned short  __xsubi[3]) throw()
# 400
 __attribute((__nonnull__(1))); 
# 403
extern void srand48(long __seedval) throw(); 
# 404
extern unsigned short *seed48(unsigned short  __seed16v[3]) throw()
# 405
 __attribute((__nonnull__(1))); 
# 406
extern void lcong48(unsigned short  __param[7]) throw() __attribute((__nonnull__(1))); 
# 412
struct drand48_data { 
# 414
unsigned short __x[3]; 
# 415
unsigned short __old_x[3]; 
# 416
unsigned short __c; 
# 417
unsigned short __init; 
# 418
unsigned long long __a; 
# 419
}; 
# 422
extern int drand48_r(drand48_data *__restrict__ __buffer, double *__restrict__ __result) throw()
# 423
 __attribute((__nonnull__(1, 2))); 
# 424
extern int erand48_r(unsigned short  __xsubi[3], drand48_data *__restrict__ __buffer, double *__restrict__ __result) throw()
# 426
 __attribute((__nonnull__(1, 2))); 
# 429
extern int lrand48_r(drand48_data *__restrict__ __buffer, long *__restrict__ __result) throw()
# 431
 __attribute((__nonnull__(1, 2))); 
# 432
extern int nrand48_r(unsigned short  __xsubi[3], drand48_data *__restrict__ __buffer, long *__restrict__ __result) throw()
# 435
 __attribute((__nonnull__(1, 2))); 
# 438
extern int mrand48_r(drand48_data *__restrict__ __buffer, long *__restrict__ __result) throw()
# 440
 __attribute((__nonnull__(1, 2))); 
# 441
extern int jrand48_r(unsigned short  __xsubi[3], drand48_data *__restrict__ __buffer, long *__restrict__ __result) throw()
# 444
 __attribute((__nonnull__(1, 2))); 
# 447
extern int srand48_r(long __seedval, drand48_data * __buffer) throw()
# 448
 __attribute((__nonnull__(2))); 
# 450
extern int seed48_r(unsigned short  __seed16v[3], drand48_data * __buffer) throw()
# 451
 __attribute((__nonnull__(1, 2))); 
# 453
extern int lcong48_r(unsigned short  __param[7], drand48_data * __buffer) throw()
# 455
 __attribute((__nonnull__(1, 2))); 
# 465
extern void *malloc(size_t __size) throw() __attribute((__malloc__)); 
# 467
extern void *calloc(size_t __nmemb, size_t __size) throw()
# 468
 __attribute((__malloc__)); 
# 479
extern void *realloc(void * __ptr, size_t __size) throw()
# 480
 __attribute((__warn_unused_result__)); 
# 482
extern void free(void * __ptr) throw(); 
# 487
extern void cfree(void * __ptr) throw(); 
# 26 "/usr/include/alloca.h" 3
extern "C" {
# 32
extern void *alloca(size_t __size) throw(); 
# 38
}
# 497 "/usr/include/stdlib.h" 3
extern void *valloc(size_t __size) throw() __attribute((__malloc__)); 
# 502
extern int posix_memalign(void ** __memptr, size_t __alignment, size_t __size) throw()
# 503
 __attribute((__nonnull__(1))); 
# 508
extern void *aligned_alloc(size_t __alignment, size_t __size) throw()
# 509
 __attribute((__malloc__, __alloc_size__(2))); 
# 514
extern void abort() throw() __attribute((__noreturn__)); 
# 518
extern int atexit(void (* __func)(void)) throw() __attribute((__nonnull__(1))); 
# 523
extern "C++" int at_quick_exit(void (* __func)(void)) throw() __asm__("at_quick_exit")
# 524
 __attribute((__nonnull__(1))); 
# 534
extern int on_exit(void (* __func)(int __status, void * __arg), void * __arg) throw()
# 535
 __attribute((__nonnull__(1))); 
# 542
extern void exit(int __status) throw() __attribute((__noreturn__)); 
# 548
extern void quick_exit(int __status) throw() __attribute((__noreturn__)); 
# 556
extern void _Exit(int __status) throw() __attribute((__noreturn__)); 
# 563
extern char *getenv(const char * __name) throw() __attribute((__nonnull__(1))); 
# 569
extern char *secure_getenv(const char * __name) throw()
# 570
 __attribute((__nonnull__(1))); 
# 577
extern int putenv(char * __string) throw() __attribute((__nonnull__(1))); 
# 583
extern int setenv(const char * __name, const char * __value, int __replace) throw()
# 584
 __attribute((__nonnull__(2))); 
# 587
extern int unsetenv(const char * __name) throw() __attribute((__nonnull__(1))); 
# 594
extern int clearenv() throw(); 
# 605 "/usr/include/stdlib.h" 3
extern char *mktemp(char * __template) throw() __attribute((__nonnull__(1))); 
# 619 "/usr/include/stdlib.h" 3
extern int mkstemp(char * __template) __attribute((__nonnull__(1))); 
# 629 "/usr/include/stdlib.h" 3
extern int mkstemp64(char * __template) __attribute((__nonnull__(1))); 
# 641 "/usr/include/stdlib.h" 3
extern int mkstemps(char * __template, int __suffixlen) __attribute((__nonnull__(1))); 
# 651 "/usr/include/stdlib.h" 3
extern int mkstemps64(char * __template, int __suffixlen)
# 652
 __attribute((__nonnull__(1))); 
# 662 "/usr/include/stdlib.h" 3
extern char *mkdtemp(char * __template) throw() __attribute((__nonnull__(1))); 
# 673 "/usr/include/stdlib.h" 3
extern int mkostemp(char * __template, int __flags) __attribute((__nonnull__(1))); 
# 683 "/usr/include/stdlib.h" 3
extern int mkostemp64(char * __template, int __flags) __attribute((__nonnull__(1))); 
# 693 "/usr/include/stdlib.h" 3
extern int mkostemps(char * __template, int __suffixlen, int __flags)
# 694
 __attribute((__nonnull__(1))); 
# 705 "/usr/include/stdlib.h" 3
extern int mkostemps64(char * __template, int __suffixlen, int __flags)
# 706
 __attribute((__nonnull__(1))); 
# 716
extern int system(const char * __command); 
# 723
extern char *canonicalize_file_name(const char * __name) throw()
# 724
 __attribute((__nonnull__(1))); 
# 733 "/usr/include/stdlib.h" 3
extern char *realpath(const char *__restrict__ __name, char *__restrict__ __resolved) throw(); 
# 741
typedef int (*__compar_fn_t)(const void *, const void *); 
# 744
typedef __compar_fn_t comparison_fn_t; 
# 748
typedef int (*__compar_d_fn_t)(const void *, const void *, void *); 
# 754
extern void *bsearch(const void * __key, const void * __base, size_t __nmemb, size_t __size, __compar_fn_t __compar)
# 756
 __attribute((__nonnull__(1, 2, 5))); 
# 760
extern void qsort(void * __base, size_t __nmemb, size_t __size, __compar_fn_t __compar)
# 761
 __attribute((__nonnull__(1, 4))); 
# 763
extern void qsort_r(void * __base, size_t __nmemb, size_t __size, __compar_d_fn_t __compar, void * __arg)
# 765
 __attribute((__nonnull__(1, 4))); 
# 770
extern int abs(int __x) throw() __attribute((const)); 
# 771
extern long labs(long __x) throw() __attribute((const)); 
# 775
__extension__ extern long long llabs(long long __x) throw()
# 776
 __attribute((const)); 
# 784
extern div_t div(int __numer, int __denom) throw()
# 785
 __attribute((const)); 
# 786
extern ldiv_t ldiv(long __numer, long __denom) throw()
# 787
 __attribute((const)); 
# 792
__extension__ extern lldiv_t lldiv(long long __numer, long long __denom) throw()
# 794
 __attribute((const)); 
# 807 "/usr/include/stdlib.h" 3
extern char *ecvt(double __value, int __ndigit, int *__restrict__ __decpt, int *__restrict__ __sign) throw()
# 808
 __attribute((__nonnull__(3, 4))); 
# 813
extern char *fcvt(double __value, int __ndigit, int *__restrict__ __decpt, int *__restrict__ __sign) throw()
# 814
 __attribute((__nonnull__(3, 4))); 
# 819
extern char *gcvt(double __value, int __ndigit, char * __buf) throw()
# 820
 __attribute((__nonnull__(3))); 
# 825
extern char *qecvt(long double __value, int __ndigit, int *__restrict__ __decpt, int *__restrict__ __sign) throw()
# 827
 __attribute((__nonnull__(3, 4))); 
# 828
extern char *qfcvt(long double __value, int __ndigit, int *__restrict__ __decpt, int *__restrict__ __sign) throw()
# 830
 __attribute((__nonnull__(3, 4))); 
# 831
extern char *qgcvt(long double __value, int __ndigit, char * __buf) throw()
# 832
 __attribute((__nonnull__(3))); 
# 837
extern int ecvt_r(double __value, int __ndigit, int *__restrict__ __decpt, int *__restrict__ __sign, char *__restrict__ __buf, size_t __len) throw()
# 839
 __attribute((__nonnull__(3, 4, 5))); 
# 840
extern int fcvt_r(double __value, int __ndigit, int *__restrict__ __decpt, int *__restrict__ __sign, char *__restrict__ __buf, size_t __len) throw()
# 842
 __attribute((__nonnull__(3, 4, 5))); 
# 844
extern int qecvt_r(long double __value, int __ndigit, int *__restrict__ __decpt, int *__restrict__ __sign, char *__restrict__ __buf, size_t __len) throw()
# 847
 __attribute((__nonnull__(3, 4, 5))); 
# 848
extern int qfcvt_r(long double __value, int __ndigit, int *__restrict__ __decpt, int *__restrict__ __sign, char *__restrict__ __buf, size_t __len) throw()
# 851
 __attribute((__nonnull__(3, 4, 5))); 
# 859
extern int mblen(const char * __s, size_t __n) throw(); 
# 862
extern int mbtowc(wchar_t *__restrict__ __pwc, const char *__restrict__ __s, size_t __n) throw(); 
# 866
extern int wctomb(char * __s, wchar_t __wchar) throw(); 
# 870
extern size_t mbstowcs(wchar_t *__restrict__ __pwcs, const char *__restrict__ __s, size_t __n) throw(); 
# 873
extern size_t wcstombs(char *__restrict__ __s, const wchar_t *__restrict__ __pwcs, size_t __n) throw(); 
# 884
extern int rpmatch(const char * __response) throw() __attribute((__nonnull__(1))); 
# 895 "/usr/include/stdlib.h" 3
extern int getsubopt(char **__restrict__ __optionp, char *const *__restrict__ __tokens, char **__restrict__ __valuep) throw()
# 898
 __attribute((__nonnull__(1, 2, 3))); 
# 904
extern void setkey(const char * __key) throw() __attribute((__nonnull__(1))); 
# 912
extern int posix_openpt(int __oflag); 
# 920
extern int grantpt(int __fd) throw(); 
# 924
extern int unlockpt(int __fd) throw(); 
# 929
extern char *ptsname(int __fd) throw(); 
# 936
extern int ptsname_r(int __fd, char * __buf, size_t __buflen) throw()
# 937
 __attribute((__nonnull__(2))); 
# 940
extern int getpt(); 
# 947
extern int getloadavg(double  __loadavg[], int __nelem) throw()
# 948
 __attribute((__nonnull__(1))); 
# 964 "/usr/include/stdlib.h" 3
}
# 46 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/bits/std_abs.h" 3
extern "C++" {
# 48
namespace std __attribute((__visibility__("default"))) { 
# 52
using ::abs;
# 56
inline long abs(long __i) { return __builtin_labs(__i); } 
# 61
inline long long abs(long long __x) { return __builtin_llabs(__x); } 
# 71 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/bits/std_abs.h" 3
constexpr double abs(double __x) 
# 72
{ return __builtin_fabs(__x); } 
# 75
constexpr float abs(float __x) 
# 76
{ return __builtin_fabsf(__x); } 
# 79
constexpr long double abs(long double __x) 
# 80
{ return __builtin_fabsl(__x); } 
# 85
constexpr __int128_t abs(__int128_t __x) { return (__x >= (0)) ? __x : (-__x); } 
# 103 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/bits/std_abs.h" 3
constexpr __float128 abs(__float128 __x) 
# 104
{ return (__x < (0)) ? -__x : __x; } 
# 108
}
# 109
}
# 77 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/cmath" 3
extern "C++" {
# 79
namespace std __attribute((__visibility__("default"))) { 
# 83
using ::acos;
# 87
constexpr float acos(float __x) 
# 88
{ return __builtin_acosf(__x); } 
# 91
constexpr long double acos(long double __x) 
# 92
{ return __builtin_acosl(__x); } 
# 95
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 99
acos(_Tp __x) 
# 100
{ return __builtin_acos(__x); } 
# 102
using ::asin;
# 106
constexpr float asin(float __x) 
# 107
{ return __builtin_asinf(__x); } 
# 110
constexpr long double asin(long double __x) 
# 111
{ return __builtin_asinl(__x); } 
# 114
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 118
asin(_Tp __x) 
# 119
{ return __builtin_asin(__x); } 
# 121
using ::atan;
# 125
constexpr float atan(float __x) 
# 126
{ return __builtin_atanf(__x); } 
# 129
constexpr long double atan(long double __x) 
# 130
{ return __builtin_atanl(__x); } 
# 133
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 137
atan(_Tp __x) 
# 138
{ return __builtin_atan(__x); } 
# 140
using ::atan2;
# 144
constexpr float atan2(float __y, float __x) 
# 145
{ return __builtin_atan2f(__y, __x); } 
# 148
constexpr long double atan2(long double __y, long double __x) 
# 149
{ return __builtin_atan2l(__y, __x); } 
# 152
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type 
# 155
atan2(_Tp __y, _Up __x) 
# 156
{ 
# 157
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 158
return atan2((__type)__y, (__type)__x); 
# 159
} 
# 161
using ::ceil;
# 165
constexpr float ceil(float __x) 
# 166
{ return __builtin_ceilf(__x); } 
# 169
constexpr long double ceil(long double __x) 
# 170
{ return __builtin_ceill(__x); } 
# 173
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 177
ceil(_Tp __x) 
# 178
{ return __builtin_ceil(__x); } 
# 180
using ::cos;
# 184
constexpr float cos(float __x) 
# 185
{ return __builtin_cosf(__x); } 
# 188
constexpr long double cos(long double __x) 
# 189
{ return __builtin_cosl(__x); } 
# 192
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 196
cos(_Tp __x) 
# 197
{ return __builtin_cos(__x); } 
# 199
using ::cosh;
# 203
constexpr float cosh(float __x) 
# 204
{ return __builtin_coshf(__x); } 
# 207
constexpr long double cosh(long double __x) 
# 208
{ return __builtin_coshl(__x); } 
# 211
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 215
cosh(_Tp __x) 
# 216
{ return __builtin_cosh(__x); } 
# 218
using ::exp;
# 222
constexpr float exp(float __x) 
# 223
{ return __builtin_expf(__x); } 
# 226
constexpr long double exp(long double __x) 
# 227
{ return __builtin_expl(__x); } 
# 230
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 234
exp(_Tp __x) 
# 235
{ return __builtin_exp(__x); } 
# 237
using ::fabs;
# 241
constexpr float fabs(float __x) 
# 242
{ return __builtin_fabsf(__x); } 
# 245
constexpr long double fabs(long double __x) 
# 246
{ return __builtin_fabsl(__x); } 
# 249
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 253
fabs(_Tp __x) 
# 254
{ return __builtin_fabs(__x); } 
# 256
using ::floor;
# 260
constexpr float floor(float __x) 
# 261
{ return __builtin_floorf(__x); } 
# 264
constexpr long double floor(long double __x) 
# 265
{ return __builtin_floorl(__x); } 
# 268
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 272
floor(_Tp __x) 
# 273
{ return __builtin_floor(__x); } 
# 275
using ::fmod;
# 279
constexpr float fmod(float __x, float __y) 
# 280
{ return __builtin_fmodf(__x, __y); } 
# 283
constexpr long double fmod(long double __x, long double __y) 
# 284
{ return __builtin_fmodl(__x, __y); } 
# 287
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type 
# 290
fmod(_Tp __x, _Up __y) 
# 291
{ 
# 292
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 293
return fmod((__type)__x, (__type)__y); 
# 294
} 
# 296
using ::frexp;
# 300
inline float frexp(float __x, int *__exp) 
# 301
{ return __builtin_frexpf(__x, __exp); } 
# 304
inline long double frexp(long double __x, int *__exp) 
# 305
{ return __builtin_frexpl(__x, __exp); } 
# 308
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 312
frexp(_Tp __x, int *__exp) 
# 313
{ return __builtin_frexp(__x, __exp); } 
# 315
using ::ldexp;
# 319
constexpr float ldexp(float __x, int __exp) 
# 320
{ return __builtin_ldexpf(__x, __exp); } 
# 323
constexpr long double ldexp(long double __x, int __exp) 
# 324
{ return __builtin_ldexpl(__x, __exp); } 
# 327
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 331
ldexp(_Tp __x, int __exp) 
# 332
{ return __builtin_ldexp(__x, __exp); } 
# 334
using ::log;
# 338
constexpr float log(float __x) 
# 339
{ return __builtin_logf(__x); } 
# 342
constexpr long double log(long double __x) 
# 343
{ return __builtin_logl(__x); } 
# 346
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 350
log(_Tp __x) 
# 351
{ return __builtin_log(__x); } 
# 353
using ::log10;
# 357
constexpr float log10(float __x) 
# 358
{ return __builtin_log10f(__x); } 
# 361
constexpr long double log10(long double __x) 
# 362
{ return __builtin_log10l(__x); } 
# 365
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 369
log10(_Tp __x) 
# 370
{ return __builtin_log10(__x); } 
# 372
using ::modf;
# 376
inline float modf(float __x, float *__iptr) 
# 377
{ return __builtin_modff(__x, __iptr); } 
# 380
inline long double modf(long double __x, long double *__iptr) 
# 381
{ return __builtin_modfl(__x, __iptr); } 
# 384
using ::pow;
# 388
constexpr float pow(float __x, float __y) 
# 389
{ return __builtin_powf(__x, __y); } 
# 392
constexpr long double pow(long double __x, long double __y) 
# 393
{ return __builtin_powl(__x, __y); } 
# 412 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/cmath" 3
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type 
# 415
pow(_Tp __x, _Up __y) 
# 416
{ 
# 417
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 418
return pow((__type)__x, (__type)__y); 
# 419
} 
# 421
using ::sin;
# 425
constexpr float sin(float __x) 
# 426
{ return __builtin_sinf(__x); } 
# 429
constexpr long double sin(long double __x) 
# 430
{ return __builtin_sinl(__x); } 
# 433
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 437
sin(_Tp __x) 
# 438
{ return __builtin_sin(__x); } 
# 440
using ::sinh;
# 444
constexpr float sinh(float __x) 
# 445
{ return __builtin_sinhf(__x); } 
# 448
constexpr long double sinh(long double __x) 
# 449
{ return __builtin_sinhl(__x); } 
# 452
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 456
sinh(_Tp __x) 
# 457
{ return __builtin_sinh(__x); } 
# 459
using ::sqrt;
# 463
constexpr float sqrt(float __x) 
# 464
{ return __builtin_sqrtf(__x); } 
# 467
constexpr long double sqrt(long double __x) 
# 468
{ return __builtin_sqrtl(__x); } 
# 471
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 475
sqrt(_Tp __x) 
# 476
{ return __builtin_sqrt(__x); } 
# 478
using ::tan;
# 482
constexpr float tan(float __x) 
# 483
{ return __builtin_tanf(__x); } 
# 486
constexpr long double tan(long double __x) 
# 487
{ return __builtin_tanl(__x); } 
# 490
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 494
tan(_Tp __x) 
# 495
{ return __builtin_tan(__x); } 
# 497
using ::tanh;
# 501
constexpr float tanh(float __x) 
# 502
{ return __builtin_tanhf(__x); } 
# 505
constexpr long double tanh(long double __x) 
# 506
{ return __builtin_tanhl(__x); } 
# 509
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 513
tanh(_Tp __x) 
# 514
{ return __builtin_tanh(__x); } 
# 537 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/cmath" 3
constexpr int fpclassify(float __x) 
# 538
{ return __builtin_fpclassify(0, 1, 4, 3, 2, __x); 
# 539
} 
# 542
constexpr int fpclassify(double __x) 
# 543
{ return __builtin_fpclassify(0, 1, 4, 3, 2, __x); 
# 544
} 
# 547
constexpr int fpclassify(long double __x) 
# 548
{ return __builtin_fpclassify(0, 1, 4, 3, 2, __x); 
# 549
} 
# 553
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, int> ::__type 
# 556
fpclassify(_Tp __x) 
# 557
{ return (__x != 0) ? 4 : 2; } 
# 562
constexpr bool isfinite(float __x) 
# 563
{ return __builtin_isfinite(__x); } 
# 566
constexpr bool isfinite(double __x) 
# 567
{ return __builtin_isfinite(__x); } 
# 570
constexpr bool isfinite(long double __x) 
# 571
{ return __builtin_isfinite(__x); } 
# 575
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, bool> ::__type 
# 578
isfinite(_Tp __x) 
# 579
{ return true; } 
# 584
constexpr bool isinf(float __x) 
# 585
{ return __builtin_isinf(__x); } 
# 589
using ::isinf;
# 597
constexpr bool isinf(long double __x) 
# 598
{ return __builtin_isinf(__x); } 
# 602
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, bool> ::__type 
# 605
isinf(_Tp __x) 
# 606
{ return false; } 
# 611
constexpr bool isnan(float __x) 
# 612
{ return __builtin_isnan(__x); } 
# 616
using ::isnan;
# 624
constexpr bool isnan(long double __x) 
# 625
{ return __builtin_isnan(__x); } 
# 629
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, bool> ::__type 
# 632
isnan(_Tp __x) 
# 633
{ return false; } 
# 638
constexpr bool isnormal(float __x) 
# 639
{ return __builtin_isnormal(__x); } 
# 642
constexpr bool isnormal(double __x) 
# 643
{ return __builtin_isnormal(__x); } 
# 646
constexpr bool isnormal(long double __x) 
# 647
{ return __builtin_isnormal(__x); } 
# 651
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, bool> ::__type 
# 654
isnormal(_Tp __x) 
# 655
{ return (__x != 0) ? true : false; } 
# 661
constexpr bool signbit(float __x) 
# 662
{ return __builtin_signbit(__x); } 
# 665
constexpr bool signbit(double __x) 
# 666
{ return __builtin_signbit(__x); } 
# 669
constexpr bool signbit(long double __x) 
# 670
{ return __builtin_signbit(__x); } 
# 674
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, bool> ::__type 
# 677
signbit(_Tp __x) 
# 678
{ return (__x < 0) ? true : false; } 
# 683
constexpr bool isgreater(float __x, float __y) 
# 684
{ return __builtin_isgreater(__x, __y); } 
# 687
constexpr bool isgreater(double __x, double __y) 
# 688
{ return __builtin_isgreater(__x, __y); } 
# 691
constexpr bool isgreater(long double __x, long double __y) 
# 692
{ return __builtin_isgreater(__x, __y); } 
# 696
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__enable_if< __is_arithmetic< _Tp> ::__value && __is_arithmetic< _Up> ::__value, bool> ::__type 
# 700
isgreater(_Tp __x, _Up __y) 
# 701
{ 
# 702
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 703
return __builtin_isgreater((__type)__x, (__type)__y); 
# 704
} 
# 709
constexpr bool isgreaterequal(float __x, float __y) 
# 710
{ return __builtin_isgreaterequal(__x, __y); } 
# 713
constexpr bool isgreaterequal(double __x, double __y) 
# 714
{ return __builtin_isgreaterequal(__x, __y); } 
# 717
constexpr bool isgreaterequal(long double __x, long double __y) 
# 718
{ return __builtin_isgreaterequal(__x, __y); } 
# 722
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__enable_if< __is_arithmetic< _Tp> ::__value && __is_arithmetic< _Up> ::__value, bool> ::__type 
# 726
isgreaterequal(_Tp __x, _Up __y) 
# 727
{ 
# 728
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 729
return __builtin_isgreaterequal((__type)__x, (__type)__y); 
# 730
} 
# 735
constexpr bool isless(float __x, float __y) 
# 736
{ return __builtin_isless(__x, __y); } 
# 739
constexpr bool isless(double __x, double __y) 
# 740
{ return __builtin_isless(__x, __y); } 
# 743
constexpr bool isless(long double __x, long double __y) 
# 744
{ return __builtin_isless(__x, __y); } 
# 748
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__enable_if< __is_arithmetic< _Tp> ::__value && __is_arithmetic< _Up> ::__value, bool> ::__type 
# 752
isless(_Tp __x, _Up __y) 
# 753
{ 
# 754
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 755
return __builtin_isless((__type)__x, (__type)__y); 
# 756
} 
# 761
constexpr bool islessequal(float __x, float __y) 
# 762
{ return __builtin_islessequal(__x, __y); } 
# 765
constexpr bool islessequal(double __x, double __y) 
# 766
{ return __builtin_islessequal(__x, __y); } 
# 769
constexpr bool islessequal(long double __x, long double __y) 
# 770
{ return __builtin_islessequal(__x, __y); } 
# 774
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__enable_if< __is_arithmetic< _Tp> ::__value && __is_arithmetic< _Up> ::__value, bool> ::__type 
# 778
islessequal(_Tp __x, _Up __y) 
# 779
{ 
# 780
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 781
return __builtin_islessequal((__type)__x, (__type)__y); 
# 782
} 
# 787
constexpr bool islessgreater(float __x, float __y) 
# 788
{ return __builtin_islessgreater(__x, __y); } 
# 791
constexpr bool islessgreater(double __x, double __y) 
# 792
{ return __builtin_islessgreater(__x, __y); } 
# 795
constexpr bool islessgreater(long double __x, long double __y) 
# 796
{ return __builtin_islessgreater(__x, __y); } 
# 800
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__enable_if< __is_arithmetic< _Tp> ::__value && __is_arithmetic< _Up> ::__value, bool> ::__type 
# 804
islessgreater(_Tp __x, _Up __y) 
# 805
{ 
# 806
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 807
return __builtin_islessgreater((__type)__x, (__type)__y); 
# 808
} 
# 813
constexpr bool isunordered(float __x, float __y) 
# 814
{ return __builtin_isunordered(__x, __y); } 
# 817
constexpr bool isunordered(double __x, double __y) 
# 818
{ return __builtin_isunordered(__x, __y); } 
# 821
constexpr bool isunordered(long double __x, long double __y) 
# 822
{ return __builtin_isunordered(__x, __y); } 
# 826
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__enable_if< __is_arithmetic< _Tp> ::__value && __is_arithmetic< _Up> ::__value, bool> ::__type 
# 830
isunordered(_Tp __x, _Up __y) 
# 831
{ 
# 832
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 833
return __builtin_isunordered((__type)__x, (__type)__y); 
# 834
} 
# 1065 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/cmath" 3
using ::double_t;
# 1066
using ::float_t;
# 1069
using ::acosh;
# 1070
using ::acoshf;
# 1071
using ::acoshl;
# 1073
using ::asinh;
# 1074
using ::asinhf;
# 1075
using ::asinhl;
# 1077
using ::atanh;
# 1078
using ::atanhf;
# 1079
using ::atanhl;
# 1081
using ::cbrt;
# 1082
using ::cbrtf;
# 1083
using ::cbrtl;
# 1085
using ::copysign;
# 1086
using ::copysignf;
# 1087
using ::copysignl;
# 1089
using ::erf;
# 1090
using ::erff;
# 1091
using ::erfl;
# 1093
using ::erfc;
# 1094
using ::erfcf;
# 1095
using ::erfcl;
# 1097
using ::exp2;
# 1098
using ::exp2f;
# 1099
using ::exp2l;
# 1101
using ::expm1;
# 1102
using ::expm1f;
# 1103
using ::expm1l;
# 1105
using ::fdim;
# 1106
using ::fdimf;
# 1107
using ::fdiml;
# 1109
using ::fma;
# 1110
using ::fmaf;
# 1111
using ::fmal;
# 1113
using ::fmax;
# 1114
using ::fmaxf;
# 1115
using ::fmaxl;
# 1117
using ::fmin;
# 1118
using ::fminf;
# 1119
using ::fminl;
# 1121
using ::hypot;
# 1122
using ::hypotf;
# 1123
using ::hypotl;
# 1125
using ::ilogb;
# 1126
using ::ilogbf;
# 1127
using ::ilogbl;
# 1129
using ::lgamma;
# 1130
using ::lgammaf;
# 1131
using ::lgammal;
# 1134
using ::llrint;
# 1135
using ::llrintf;
# 1136
using ::llrintl;
# 1138
using ::llround;
# 1139
using ::llroundf;
# 1140
using ::llroundl;
# 1143
using ::log1p;
# 1144
using ::log1pf;
# 1145
using ::log1pl;
# 1147
using ::log2;
# 1148
using ::log2f;
# 1149
using ::log2l;
# 1151
using ::logb;
# 1152
using ::logbf;
# 1153
using ::logbl;
# 1155
using ::lrint;
# 1156
using ::lrintf;
# 1157
using ::lrintl;
# 1159
using ::lround;
# 1160
using ::lroundf;
# 1161
using ::lroundl;
# 1163
using ::nan;
# 1164
using ::nanf;
# 1165
using ::nanl;
# 1167
using ::nearbyint;
# 1168
using ::nearbyintf;
# 1169
using ::nearbyintl;
# 1171
using ::nextafter;
# 1172
using ::nextafterf;
# 1173
using ::nextafterl;
# 1175
using ::nexttoward;
# 1176
using ::nexttowardf;
# 1177
using ::nexttowardl;
# 1179
using ::remainder;
# 1180
using ::remainderf;
# 1181
using ::remainderl;
# 1183
using ::remquo;
# 1184
using ::remquof;
# 1185
using ::remquol;
# 1187
using ::rint;
# 1188
using ::rintf;
# 1189
using ::rintl;
# 1191
using ::round;
# 1192
using ::roundf;
# 1193
using ::roundl;
# 1195
using ::scalbln;
# 1196
using ::scalblnf;
# 1197
using ::scalblnl;
# 1199
using ::scalbn;
# 1200
using ::scalbnf;
# 1201
using ::scalbnl;
# 1203
using ::tgamma;
# 1204
using ::tgammaf;
# 1205
using ::tgammal;
# 1207
using ::trunc;
# 1208
using ::truncf;
# 1209
using ::truncl;
# 1214
constexpr float acosh(float __x) 
# 1215
{ return __builtin_acoshf(__x); } 
# 1218
constexpr long double acosh(long double __x) 
# 1219
{ return __builtin_acoshl(__x); } 
# 1223
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1226
acosh(_Tp __x) 
# 1227
{ return __builtin_acosh(__x); } 
# 1232
constexpr float asinh(float __x) 
# 1233
{ return __builtin_asinhf(__x); } 
# 1236
constexpr long double asinh(long double __x) 
# 1237
{ return __builtin_asinhl(__x); } 
# 1241
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1244
asinh(_Tp __x) 
# 1245
{ return __builtin_asinh(__x); } 
# 1250
constexpr float atanh(float __x) 
# 1251
{ return __builtin_atanhf(__x); } 
# 1254
constexpr long double atanh(long double __x) 
# 1255
{ return __builtin_atanhl(__x); } 
# 1259
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1262
atanh(_Tp __x) 
# 1263
{ return __builtin_atanh(__x); } 
# 1268
constexpr float cbrt(float __x) 
# 1269
{ return __builtin_cbrtf(__x); } 
# 1272
constexpr long double cbrt(long double __x) 
# 1273
{ return __builtin_cbrtl(__x); } 
# 1277
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1280
cbrt(_Tp __x) 
# 1281
{ return __builtin_cbrt(__x); } 
# 1286
constexpr float copysign(float __x, float __y) 
# 1287
{ return __builtin_copysignf(__x, __y); } 
# 1290
constexpr long double copysign(long double __x, long double __y) 
# 1291
{ return __builtin_copysignl(__x, __y); } 
# 1295
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type 
# 1297
copysign(_Tp __x, _Up __y) 
# 1298
{ 
# 1299
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 1300
return copysign((__type)__x, (__type)__y); 
# 1301
} 
# 1306
constexpr float erf(float __x) 
# 1307
{ return __builtin_erff(__x); } 
# 1310
constexpr long double erf(long double __x) 
# 1311
{ return __builtin_erfl(__x); } 
# 1315
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1318
erf(_Tp __x) 
# 1319
{ return __builtin_erf(__x); } 
# 1324
constexpr float erfc(float __x) 
# 1325
{ return __builtin_erfcf(__x); } 
# 1328
constexpr long double erfc(long double __x) 
# 1329
{ return __builtin_erfcl(__x); } 
# 1333
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1336
erfc(_Tp __x) 
# 1337
{ return __builtin_erfc(__x); } 
# 1342
constexpr float exp2(float __x) 
# 1343
{ return __builtin_exp2f(__x); } 
# 1346
constexpr long double exp2(long double __x) 
# 1347
{ return __builtin_exp2l(__x); } 
# 1351
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1354
exp2(_Tp __x) 
# 1355
{ return __builtin_exp2(__x); } 
# 1360
constexpr float expm1(float __x) 
# 1361
{ return __builtin_expm1f(__x); } 
# 1364
constexpr long double expm1(long double __x) 
# 1365
{ return __builtin_expm1l(__x); } 
# 1369
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1372
expm1(_Tp __x) 
# 1373
{ return __builtin_expm1(__x); } 
# 1378
constexpr float fdim(float __x, float __y) 
# 1379
{ return __builtin_fdimf(__x, __y); } 
# 1382
constexpr long double fdim(long double __x, long double __y) 
# 1383
{ return __builtin_fdiml(__x, __y); } 
# 1387
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type 
# 1389
fdim(_Tp __x, _Up __y) 
# 1390
{ 
# 1391
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 1392
return fdim((__type)__x, (__type)__y); 
# 1393
} 
# 1398
constexpr float fma(float __x, float __y, float __z) 
# 1399
{ return __builtin_fmaf(__x, __y, __z); } 
# 1402
constexpr long double fma(long double __x, long double __y, long double __z) 
# 1403
{ return __builtin_fmal(__x, __y, __z); } 
# 1407
template< class _Tp, class _Up, class _Vp> constexpr typename __gnu_cxx::__promote_3< _Tp, _Up, _Vp> ::__type 
# 1409
fma(_Tp __x, _Up __y, _Vp __z) 
# 1410
{ 
# 1411
typedef typename __gnu_cxx::__promote_3< _Tp, _Up, _Vp> ::__type __type; 
# 1412
return fma((__type)__x, (__type)__y, (__type)__z); 
# 1413
} 
# 1418
constexpr float fmax(float __x, float __y) 
# 1419
{ return __builtin_fmaxf(__x, __y); } 
# 1422
constexpr long double fmax(long double __x, long double __y) 
# 1423
{ return __builtin_fmaxl(__x, __y); } 
# 1427
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type 
# 1429
fmax(_Tp __x, _Up __y) 
# 1430
{ 
# 1431
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 1432
return fmax((__type)__x, (__type)__y); 
# 1433
} 
# 1438
constexpr float fmin(float __x, float __y) 
# 1439
{ return __builtin_fminf(__x, __y); } 
# 1442
constexpr long double fmin(long double __x, long double __y) 
# 1443
{ return __builtin_fminl(__x, __y); } 
# 1447
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type 
# 1449
fmin(_Tp __x, _Up __y) 
# 1450
{ 
# 1451
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 1452
return fmin((__type)__x, (__type)__y); 
# 1453
} 
# 1458
constexpr float hypot(float __x, float __y) 
# 1459
{ return __builtin_hypotf(__x, __y); } 
# 1462
constexpr long double hypot(long double __x, long double __y) 
# 1463
{ return __builtin_hypotl(__x, __y); } 
# 1467
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type 
# 1469
hypot(_Tp __x, _Up __y) 
# 1470
{ 
# 1471
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 1472
return hypot((__type)__x, (__type)__y); 
# 1473
} 
# 1478
constexpr int ilogb(float __x) 
# 1479
{ return __builtin_ilogbf(__x); } 
# 1482
constexpr int ilogb(long double __x) 
# 1483
{ return __builtin_ilogbl(__x); } 
# 1487
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, int> ::__type 
# 1491
ilogb(_Tp __x) 
# 1492
{ return __builtin_ilogb(__x); } 
# 1497
constexpr float lgamma(float __x) 
# 1498
{ return __builtin_lgammaf(__x); } 
# 1501
constexpr long double lgamma(long double __x) 
# 1502
{ return __builtin_lgammal(__x); } 
# 1506
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1509
lgamma(_Tp __x) 
# 1510
{ return __builtin_lgamma(__x); } 
# 1515
constexpr long long llrint(float __x) 
# 1516
{ return __builtin_llrintf(__x); } 
# 1519
constexpr long long llrint(long double __x) 
# 1520
{ return __builtin_llrintl(__x); } 
# 1524
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, long long> ::__type 
# 1527
llrint(_Tp __x) 
# 1528
{ return __builtin_llrint(__x); } 
# 1533
constexpr long long llround(float __x) 
# 1534
{ return __builtin_llroundf(__x); } 
# 1537
constexpr long long llround(long double __x) 
# 1538
{ return __builtin_llroundl(__x); } 
# 1542
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, long long> ::__type 
# 1545
llround(_Tp __x) 
# 1546
{ return __builtin_llround(__x); } 
# 1551
constexpr float log1p(float __x) 
# 1552
{ return __builtin_log1pf(__x); } 
# 1555
constexpr long double log1p(long double __x) 
# 1556
{ return __builtin_log1pl(__x); } 
# 1560
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1563
log1p(_Tp __x) 
# 1564
{ return __builtin_log1p(__x); } 
# 1570
constexpr float log2(float __x) 
# 1571
{ return __builtin_log2f(__x); } 
# 1574
constexpr long double log2(long double __x) 
# 1575
{ return __builtin_log2l(__x); } 
# 1579
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1582
log2(_Tp __x) 
# 1583
{ return __builtin_log2(__x); } 
# 1588
constexpr float logb(float __x) 
# 1589
{ return __builtin_logbf(__x); } 
# 1592
constexpr long double logb(long double __x) 
# 1593
{ return __builtin_logbl(__x); } 
# 1597
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1600
logb(_Tp __x) 
# 1601
{ return __builtin_logb(__x); } 
# 1606
constexpr long lrint(float __x) 
# 1607
{ return __builtin_lrintf(__x); } 
# 1610
constexpr long lrint(long double __x) 
# 1611
{ return __builtin_lrintl(__x); } 
# 1615
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, long> ::__type 
# 1618
lrint(_Tp __x) 
# 1619
{ return __builtin_lrint(__x); } 
# 1624
constexpr long lround(float __x) 
# 1625
{ return __builtin_lroundf(__x); } 
# 1628
constexpr long lround(long double __x) 
# 1629
{ return __builtin_lroundl(__x); } 
# 1633
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, long> ::__type 
# 1636
lround(_Tp __x) 
# 1637
{ return __builtin_lround(__x); } 
# 1642
constexpr float nearbyint(float __x) 
# 1643
{ return __builtin_nearbyintf(__x); } 
# 1646
constexpr long double nearbyint(long double __x) 
# 1647
{ return __builtin_nearbyintl(__x); } 
# 1651
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1654
nearbyint(_Tp __x) 
# 1655
{ return __builtin_nearbyint(__x); } 
# 1660
constexpr float nextafter(float __x, float __y) 
# 1661
{ return __builtin_nextafterf(__x, __y); } 
# 1664
constexpr long double nextafter(long double __x, long double __y) 
# 1665
{ return __builtin_nextafterl(__x, __y); } 
# 1669
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type 
# 1671
nextafter(_Tp __x, _Up __y) 
# 1672
{ 
# 1673
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 1674
return nextafter((__type)__x, (__type)__y); 
# 1675
} 
# 1680
constexpr float nexttoward(float __x, long double __y) 
# 1681
{ return __builtin_nexttowardf(__x, __y); } 
# 1684
constexpr long double nexttoward(long double __x, long double __y) 
# 1685
{ return __builtin_nexttowardl(__x, __y); } 
# 1689
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1692
nexttoward(_Tp __x, long double __y) 
# 1693
{ return __builtin_nexttoward(__x, __y); } 
# 1698
constexpr float remainder(float __x, float __y) 
# 1699
{ return __builtin_remainderf(__x, __y); } 
# 1702
constexpr long double remainder(long double __x, long double __y) 
# 1703
{ return __builtin_remainderl(__x, __y); } 
# 1707
template< class _Tp, class _Up> constexpr typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type 
# 1709
remainder(_Tp __x, _Up __y) 
# 1710
{ 
# 1711
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 1712
return remainder((__type)__x, (__type)__y); 
# 1713
} 
# 1718
inline float remquo(float __x, float __y, int *__pquo) 
# 1719
{ return __builtin_remquof(__x, __y, __pquo); } 
# 1722
inline long double remquo(long double __x, long double __y, int *__pquo) 
# 1723
{ return __builtin_remquol(__x, __y, __pquo); } 
# 1727
template< class _Tp, class _Up> inline typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type 
# 1729
remquo(_Tp __x, _Up __y, int *__pquo) 
# 1730
{ 
# 1731
typedef typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type __type; 
# 1732
return remquo((__type)__x, (__type)__y, __pquo); 
# 1733
} 
# 1738
constexpr float rint(float __x) 
# 1739
{ return __builtin_rintf(__x); } 
# 1742
constexpr long double rint(long double __x) 
# 1743
{ return __builtin_rintl(__x); } 
# 1747
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1750
rint(_Tp __x) 
# 1751
{ return __builtin_rint(__x); } 
# 1756
constexpr float round(float __x) 
# 1757
{ return __builtin_roundf(__x); } 
# 1760
constexpr long double round(long double __x) 
# 1761
{ return __builtin_roundl(__x); } 
# 1765
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1768
round(_Tp __x) 
# 1769
{ return __builtin_round(__x); } 
# 1774
constexpr float scalbln(float __x, long __ex) 
# 1775
{ return __builtin_scalblnf(__x, __ex); } 
# 1778
constexpr long double scalbln(long double __x, long __ex) 
# 1779
{ return __builtin_scalblnl(__x, __ex); } 
# 1783
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1786
scalbln(_Tp __x, long __ex) 
# 1787
{ return __builtin_scalbln(__x, __ex); } 
# 1792
constexpr float scalbn(float __x, int __ex) 
# 1793
{ return __builtin_scalbnf(__x, __ex); } 
# 1796
constexpr long double scalbn(long double __x, int __ex) 
# 1797
{ return __builtin_scalbnl(__x, __ex); } 
# 1801
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1804
scalbn(_Tp __x, int __ex) 
# 1805
{ return __builtin_scalbn(__x, __ex); } 
# 1810
constexpr float tgamma(float __x) 
# 1811
{ return __builtin_tgammaf(__x); } 
# 1814
constexpr long double tgamma(long double __x) 
# 1815
{ return __builtin_tgammal(__x); } 
# 1819
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1822
tgamma(_Tp __x) 
# 1823
{ return __builtin_tgamma(__x); } 
# 1828
constexpr float trunc(float __x) 
# 1829
{ return __builtin_truncf(__x); } 
# 1832
constexpr long double trunc(long double __x) 
# 1833
{ return __builtin_truncl(__x); } 
# 1837
template< class _Tp> constexpr typename __gnu_cxx::__enable_if< __is_integer< _Tp> ::__value, double> ::__type 
# 1840
trunc(_Tp __x) 
# 1841
{ return __builtin_trunc(__x); } 
# 1924 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/cmath" 3
}
# 1930
}
# 38 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/math.h" 3
using std::abs;
# 39
using std::acos;
# 40
using std::asin;
# 41
using std::atan;
# 42
using std::atan2;
# 43
using std::cos;
# 44
using std::sin;
# 45
using std::tan;
# 46
using std::cosh;
# 47
using std::sinh;
# 48
using std::tanh;
# 49
using std::exp;
# 50
using std::frexp;
# 51
using std::ldexp;
# 52
using std::log;
# 53
using std::log10;
# 54
using std::modf;
# 55
using std::pow;
# 56
using std::sqrt;
# 57
using std::ceil;
# 58
using std::fabs;
# 59
using std::floor;
# 60
using std::fmod;
# 63
using std::fpclassify;
# 64
using std::isfinite;
# 65
using std::isinf;
# 66
using std::isnan;
# 67
using std::isnormal;
# 68
using std::signbit;
# 69
using std::isgreater;
# 70
using std::isgreaterequal;
# 71
using std::isless;
# 72
using std::islessequal;
# 73
using std::islessgreater;
# 74
using std::isunordered;
# 78
using std::acosh;
# 79
using std::asinh;
# 80
using std::atanh;
# 81
using std::cbrt;
# 82
using std::copysign;
# 83
using std::erf;
# 84
using std::erfc;
# 85
using std::exp2;
# 86
using std::expm1;
# 87
using std::fdim;
# 88
using std::fma;
# 89
using std::fmax;
# 90
using std::fmin;
# 91
using std::hypot;
# 92
using std::ilogb;
# 93
using std::lgamma;
# 94
using std::llrint;
# 95
using std::llround;
# 96
using std::log1p;
# 97
using std::log2;
# 98
using std::logb;
# 99
using std::lrint;
# 100
using std::lround;
# 101
using std::nearbyint;
# 102
using std::nextafter;
# 103
using std::nexttoward;
# 104
using std::remainder;
# 105
using std::remquo;
# 106
using std::rint;
# 107
using std::round;
# 108
using std::scalbln;
# 109
using std::scalbn;
# 110
using std::tgamma;
# 111
using std::trunc;
# 121 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/cstdlib" 3
extern "C++" {
# 123
namespace std __attribute((__visibility__("default"))) { 
# 127
using ::div_t;
# 128
using ::ldiv_t;
# 130
using ::abort;
# 134
using ::atexit;
# 137
using ::at_quick_exit;
# 140
using ::atof;
# 141
using ::atoi;
# 142
using ::atol;
# 143
using ::bsearch;
# 144
using ::calloc;
# 145
using ::div;
# 146
using ::exit;
# 147
using ::free;
# 148
using ::getenv;
# 149
using ::labs;
# 150
using ::ldiv;
# 151
using ::malloc;
# 153
using ::mblen;
# 154
using ::mbstowcs;
# 155
using ::mbtowc;
# 157
using ::qsort;
# 160
using ::quick_exit;
# 163
using ::rand;
# 164
using ::realloc;
# 165
using ::srand;
# 166
using ::strtod;
# 167
using ::strtol;
# 168
using ::strtoul;
# 169
using ::system;
# 171
using ::wcstombs;
# 172
using ::wctomb;
# 177
inline ldiv_t div(long __i, long __j) { return ldiv(__i, __j); } 
# 182
}
# 195 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/cstdlib" 3
namespace __gnu_cxx __attribute((__visibility__("default"))) { 
# 200
using ::lldiv_t;
# 206
using ::_Exit;
# 210
using ::llabs;
# 213
inline lldiv_t div(long long __n, long long __d) 
# 214
{ lldiv_t __q; (__q.quot) = (__n / __d); (__q.rem) = (__n % __d); return __q; } 
# 216
using ::lldiv;
# 227 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/cstdlib" 3
using ::atoll;
# 228
using ::strtoll;
# 229
using ::strtoull;
# 231
using ::strtof;
# 232
using ::strtold;
# 235
}
# 237
namespace std { 
# 240
using __gnu_cxx::lldiv_t;
# 242
using __gnu_cxx::_Exit;
# 244
using __gnu_cxx::llabs;
# 245
using __gnu_cxx::div;
# 246
using __gnu_cxx::lldiv;
# 248
using __gnu_cxx::atoll;
# 249
using __gnu_cxx::strtof;
# 250
using __gnu_cxx::strtoll;
# 251
using __gnu_cxx::strtoull;
# 252
using __gnu_cxx::strtold;
# 253
}
# 257
}
# 38 "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/stdlib.h" 3
using std::abort;
# 39
using std::atexit;
# 40
using std::exit;
# 43
using std::at_quick_exit;
# 46
using std::quick_exit;
# 54
using std::abs;
# 55
using std::atof;
# 56
using std::atoi;
# 57
using std::atol;
# 58
using std::bsearch;
# 59
using std::calloc;
# 60
using std::div;
# 61
using std::free;
# 62
using std::getenv;
# 63
using std::labs;
# 64
using std::ldiv;
# 65
using std::malloc;
# 67
using std::mblen;
# 68
using std::mbstowcs;
# 69
using std::mbtowc;
# 71
using std::qsort;
# 72
using std::rand;
# 73
using std::realloc;
# 74
using std::srand;
# 75
using std::strtod;
# 76
using std::strtol;
# 77
using std::strtoul;
# 78
using std::system;
# 80
using std::wcstombs;
# 81
using std::wctomb;
# 8911 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
namespace std { 
# 8912
constexpr bool signbit(float x); 
# 8913
constexpr bool signbit(double x); 
# 8914
constexpr bool signbit(long double x); 
# 8915
constexpr bool isfinite(float x); 
# 8916
constexpr bool isfinite(double x); 
# 8917
constexpr bool isfinite(long double x); 
# 8918
constexpr bool isnan(float x); 
# 8921
extern "C" int isnan(double x) throw(); 
# 8925
constexpr bool isnan(long double x); 
# 8926
constexpr bool isinf(float x); 
# 8929
extern "C" int isinf(double x) throw(); 
# 8933
constexpr bool isinf(long double x); 
# 8934
}
# 9075 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
namespace std { 
# 9077
template< class T> extern T __pow_helper(T, int); 
# 9078
template< class T> extern T __cmath_power(T, unsigned); 
# 9079
}
# 9081
using std::abs;
# 9082
using std::fabs;
# 9083
using std::ceil;
# 9084
using std::floor;
# 9085
using std::sqrt;
# 9087
using std::pow;
# 9089
using std::log;
# 9090
using std::log10;
# 9091
using std::fmod;
# 9092
using std::modf;
# 9093
using std::exp;
# 9094
using std::frexp;
# 9095
using std::ldexp;
# 9096
using std::asin;
# 9097
using std::sin;
# 9098
using std::sinh;
# 9099
using std::acos;
# 9100
using std::cos;
# 9101
using std::cosh;
# 9102
using std::atan;
# 9103
using std::atan2;
# 9104
using std::tan;
# 9105
using std::tanh;
# 9470 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
namespace std { 
# 9479 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern inline long long abs(long long); 
# 9489 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern inline long abs(long); 
# 9490
extern constexpr float abs(float); 
# 9491
extern constexpr double abs(double); 
# 9492
extern constexpr float fabs(float); 
# 9493
extern constexpr float ceil(float); 
# 9494
extern constexpr float floor(float); 
# 9495
extern constexpr float sqrt(float); 
# 9496
extern constexpr float pow(float, float); 
# 9501
template< class _Tp, class _Up> extern constexpr typename __gnu_cxx::__promote_2< _Tp, _Up> ::__type pow(_Tp, _Up); 
# 9511
extern constexpr float log(float); 
# 9512
extern constexpr float log10(float); 
# 9513
extern constexpr float fmod(float, float); 
# 9514
extern inline float modf(float, float *); 
# 9515
extern constexpr float exp(float); 
# 9516
extern inline float frexp(float, int *); 
# 9517
extern constexpr float ldexp(float, int); 
# 9518
extern constexpr float asin(float); 
# 9519
extern constexpr float sin(float); 
# 9520
extern constexpr float sinh(float); 
# 9521
extern constexpr float acos(float); 
# 9522
extern constexpr float cos(float); 
# 9523
extern constexpr float cosh(float); 
# 9524
extern constexpr float atan(float); 
# 9525
extern constexpr float atan2(float, float); 
# 9526
extern constexpr float tan(float); 
# 9527
extern constexpr float tanh(float); 
# 9601 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
}
# 9702 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
namespace std { 
# 9703
constexpr float logb(float a); 
# 9704
constexpr int ilogb(float a); 
# 9705
constexpr float scalbn(float a, int b); 
# 9706
constexpr float scalbln(float a, long b); 
# 9707
constexpr float exp2(float a); 
# 9708
constexpr float expm1(float a); 
# 9709
constexpr float log2(float a); 
# 9710
constexpr float log1p(float a); 
# 9711
constexpr float acosh(float a); 
# 9712
constexpr float asinh(float a); 
# 9713
constexpr float atanh(float a); 
# 9714
constexpr float hypot(float a, float b); 
# 9715
constexpr float cbrt(float a); 
# 9716
constexpr float erf(float a); 
# 9717
constexpr float erfc(float a); 
# 9718
constexpr float lgamma(float a); 
# 9719
constexpr float tgamma(float a); 
# 9720
constexpr float copysign(float a, float b); 
# 9721
constexpr float nextafter(float a, float b); 
# 9722
constexpr float remainder(float a, float b); 
# 9723
inline float remquo(float a, float b, int * quo); 
# 9724
constexpr float round(float a); 
# 9725
constexpr long lround(float a); 
# 9726
constexpr long long llround(float a); 
# 9727
constexpr float trunc(float a); 
# 9728
constexpr float rint(float a); 
# 9729
constexpr long lrint(float a); 
# 9730
constexpr long long llrint(float a); 
# 9731
constexpr float nearbyint(float a); 
# 9732
constexpr float fdim(float a, float b); 
# 9733
constexpr float fma(float a, float b, float c); 
# 9734
constexpr float fmax(float a, float b); 
# 9735
constexpr float fmin(float a, float b); 
# 9736
}
# 9841 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
static inline float exp10(float a); 
# 9843
static inline float rsqrt(float a); 
# 9845
static inline float rcbrt(float a); 
# 9847
static inline float sinpi(float a); 
# 9849
static inline float cospi(float a); 
# 9851
static inline void sincospi(float a, float * sptr, float * cptr); 
# 9853
static inline void sincos(float a, float * sptr, float * cptr); 
# 9855
static inline float j0(float a); 
# 9857
static inline float j1(float a); 
# 9859
static inline float jn(int n, float a); 
# 9861
static inline float y0(float a); 
# 9863
static inline float y1(float a); 
# 9865
static inline float yn(int n, float a); 
# 9867
static inline float cyl_bessel_i0(float a); 
# 9869
static inline float cyl_bessel_i1(float a); 
# 9871
static inline float erfinv(float a); 
# 9873
static inline float erfcinv(float a); 
# 9875
static inline float normcdfinv(float a); 
# 9877
static inline float normcdf(float a); 
# 9879
static inline float erfcx(float a); 
# 9881
static inline double copysign(double a, float b); 
# 9883
static inline double copysign(float a, double b); 
# 9885
static inline unsigned min(unsigned a, unsigned b); 
# 9887
static inline unsigned min(int a, unsigned b); 
# 9889
static inline unsigned min(unsigned a, int b); 
# 9891
static inline long min(long a, long b); 
# 9893
static inline unsigned long min(unsigned long a, unsigned long b); 
# 9895
static inline unsigned long min(long a, unsigned long b); 
# 9897
static inline unsigned long min(unsigned long a, long b); 
# 9899
static inline long long min(long long a, long long b); 
# 9901
static inline unsigned long long min(unsigned long long a, unsigned long long b); 
# 9903
static inline unsigned long long min(long long a, unsigned long long b); 
# 9905
static inline unsigned long long min(unsigned long long a, long long b); 
# 9907
static inline float min(float a, float b); 
# 9909
static inline double min(double a, double b); 
# 9911
static inline double min(float a, double b); 
# 9913
static inline double min(double a, float b); 
# 9915
static inline unsigned max(unsigned a, unsigned b); 
# 9917
static inline unsigned max(int a, unsigned b); 
# 9919
static inline unsigned max(unsigned a, int b); 
# 9921
static inline long max(long a, long b); 
# 9923
static inline unsigned long max(unsigned long a, unsigned long b); 
# 9925
static inline unsigned long max(long a, unsigned long b); 
# 9927
static inline unsigned long max(unsigned long a, long b); 
# 9929
static inline long long max(long long a, long long b); 
# 9931
static inline unsigned long long max(unsigned long long a, unsigned long long b); 
# 9933
static inline unsigned long long max(long long a, unsigned long long b); 
# 9935
static inline unsigned long long max(unsigned long long a, long long b); 
# 9937
static inline float max(float a, float b); 
# 9939
static inline double max(double a, double b); 
# 9941
static inline double max(float a, double b); 
# 9943
static inline double max(double a, float b); 
# 9953 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
extern "C" {
# 9954
__attribute__((unused)) inline void *__nv_aligned_device_malloc(size_t size, size_t align) 
# 9955
{int volatile ___ = 1;(void)size;(void)align;
# 9958
::exit(___);}
#if 0
# 9955
{ 
# 9956
__attribute__((unused)) void *__nv_aligned_device_malloc_impl(size_t, size_t); 
# 9957
return __nv_aligned_device_malloc_impl(size, align); 
# 9958
} 
#endif
# 9959 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.h"
}
# 756 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.hpp"
static inline float exp10(float a) 
# 757
{ 
# 758
return exp10f(a); 
# 759
} 
# 761
static inline float rsqrt(float a) 
# 762
{ 
# 763
return rsqrtf(a); 
# 764
} 
# 766
static inline float rcbrt(float a) 
# 767
{ 
# 768
return rcbrtf(a); 
# 769
} 
# 771
static inline float sinpi(float a) 
# 772
{ 
# 773
return sinpif(a); 
# 774
} 
# 776
static inline float cospi(float a) 
# 777
{ 
# 778
return cospif(a); 
# 779
} 
# 781
static inline void sincospi(float a, float *sptr, float *cptr) 
# 782
{ 
# 783
sincospif(a, sptr, cptr); 
# 784
} 
# 786
static inline void sincos(float a, float *sptr, float *cptr) 
# 787
{ 
# 788
sincosf(a, sptr, cptr); 
# 789
} 
# 791
static inline float j0(float a) 
# 792
{ 
# 793
return j0f(a); 
# 794
} 
# 796
static inline float j1(float a) 
# 797
{ 
# 798
return j1f(a); 
# 799
} 
# 801
static inline float jn(int n, float a) 
# 802
{ 
# 803
return jnf(n, a); 
# 804
} 
# 806
static inline float y0(float a) 
# 807
{ 
# 808
return y0f(a); 
# 809
} 
# 811
static inline float y1(float a) 
# 812
{ 
# 813
return y1f(a); 
# 814
} 
# 816
static inline float yn(int n, float a) 
# 817
{ 
# 818
return ynf(n, a); 
# 819
} 
# 821
static inline float cyl_bessel_i0(float a) 
# 822
{ 
# 823
return cyl_bessel_i0f(a); 
# 824
} 
# 826
static inline float cyl_bessel_i1(float a) 
# 827
{ 
# 828
return cyl_bessel_i1f(a); 
# 829
} 
# 831
static inline float erfinv(float a) 
# 832
{ 
# 833
return erfinvf(a); 
# 834
} 
# 836
static inline float erfcinv(float a) 
# 837
{ 
# 838
return erfcinvf(a); 
# 839
} 
# 841
static inline float normcdfinv(float a) 
# 842
{ 
# 843
return normcdfinvf(a); 
# 844
} 
# 846
static inline float normcdf(float a) 
# 847
{ 
# 848
return normcdff(a); 
# 849
} 
# 851
static inline float erfcx(float a) 
# 852
{ 
# 853
return erfcxf(a); 
# 854
} 
# 856
static inline double copysign(double a, float b) 
# 857
{ 
# 858
return copysign(a, (double)b); 
# 859
} 
# 861
static inline double copysign(float a, double b) 
# 862
{ 
# 863
return copysign((double)a, b); 
# 864
} 
# 866
static inline unsigned min(unsigned a, unsigned b) 
# 867
{ 
# 868
return umin(a, b); 
# 869
} 
# 871
static inline unsigned min(int a, unsigned b) 
# 872
{ 
# 873
return umin((unsigned)a, b); 
# 874
} 
# 876
static inline unsigned min(unsigned a, int b) 
# 877
{ 
# 878
return umin(a, (unsigned)b); 
# 879
} 
# 881
static inline long min(long a, long b) 
# 882
{ 
# 888
if (sizeof(long) == sizeof(int)) { 
# 892
return (long)min((int)a, (int)b); 
# 893
} else { 
# 894
return (long)llmin((long long)a, (long long)b); 
# 895
}  
# 896
} 
# 898
static inline unsigned long min(unsigned long a, unsigned long b) 
# 899
{ 
# 903
if (sizeof(unsigned long) == sizeof(unsigned)) { 
# 907
return (unsigned long)umin((unsigned)a, (unsigned)b); 
# 908
} else { 
# 909
return (unsigned long)ullmin((unsigned long long)a, (unsigned long long)b); 
# 910
}  
# 911
} 
# 913
static inline unsigned long min(long a, unsigned long b) 
# 914
{ 
# 918
if (sizeof(unsigned long) == sizeof(unsigned)) { 
# 922
return (unsigned long)umin((unsigned)a, (unsigned)b); 
# 923
} else { 
# 924
return (unsigned long)ullmin((unsigned long long)a, (unsigned long long)b); 
# 925
}  
# 926
} 
# 928
static inline unsigned long min(unsigned long a, long b) 
# 929
{ 
# 933
if (sizeof(unsigned long) == sizeof(unsigned)) { 
# 937
return (unsigned long)umin((unsigned)a, (unsigned)b); 
# 938
} else { 
# 939
return (unsigned long)ullmin((unsigned long long)a, (unsigned long long)b); 
# 940
}  
# 941
} 
# 943
static inline long long min(long long a, long long b) 
# 944
{ 
# 945
return llmin(a, b); 
# 946
} 
# 948
static inline unsigned long long min(unsigned long long a, unsigned long long b) 
# 949
{ 
# 950
return ullmin(a, b); 
# 951
} 
# 953
static inline unsigned long long min(long long a, unsigned long long b) 
# 954
{ 
# 955
return ullmin((unsigned long long)a, b); 
# 956
} 
# 958
static inline unsigned long long min(unsigned long long a, long long b) 
# 959
{ 
# 960
return ullmin(a, (unsigned long long)b); 
# 961
} 
# 963
static inline float min(float a, float b) 
# 964
{ 
# 965
return fminf(a, b); 
# 966
} 
# 968
static inline double min(double a, double b) 
# 969
{ 
# 970
return fmin(a, b); 
# 971
} 
# 973
static inline double min(float a, double b) 
# 974
{ 
# 975
return fmin((double)a, b); 
# 976
} 
# 978
static inline double min(double a, float b) 
# 979
{ 
# 980
return fmin(a, (double)b); 
# 981
} 
# 983
static inline unsigned max(unsigned a, unsigned b) 
# 984
{ 
# 985
return umax(a, b); 
# 986
} 
# 988
static inline unsigned max(int a, unsigned b) 
# 989
{ 
# 990
return umax((unsigned)a, b); 
# 991
} 
# 993
static inline unsigned max(unsigned a, int b) 
# 994
{ 
# 995
return umax(a, (unsigned)b); 
# 996
} 
# 998
static inline long max(long a, long b) 
# 999
{ 
# 1004
if (sizeof(long) == sizeof(int)) { 
# 1008
return (long)max((int)a, (int)b); 
# 1009
} else { 
# 1010
return (long)llmax((long long)a, (long long)b); 
# 1011
}  
# 1012
} 
# 1014
static inline unsigned long max(unsigned long a, unsigned long b) 
# 1015
{ 
# 1019
if (sizeof(unsigned long) == sizeof(unsigned)) { 
# 1023
return (unsigned long)umax((unsigned)a, (unsigned)b); 
# 1024
} else { 
# 1025
return (unsigned long)ullmax((unsigned long long)a, (unsigned long long)b); 
# 1026
}  
# 1027
} 
# 1029
static inline unsigned long max(long a, unsigned long b) 
# 1030
{ 
# 1034
if (sizeof(unsigned long) == sizeof(unsigned)) { 
# 1038
return (unsigned long)umax((unsigned)a, (unsigned)b); 
# 1039
} else { 
# 1040
return (unsigned long)ullmax((unsigned long long)a, (unsigned long long)b); 
# 1041
}  
# 1042
} 
# 1044
static inline unsigned long max(unsigned long a, long b) 
# 1045
{ 
# 1049
if (sizeof(unsigned long) == sizeof(unsigned)) { 
# 1053
return (unsigned long)umax((unsigned)a, (unsigned)b); 
# 1054
} else { 
# 1055
return (unsigned long)ullmax((unsigned long long)a, (unsigned long long)b); 
# 1056
}  
# 1057
} 
# 1059
static inline long long max(long long a, long long b) 
# 1060
{ 
# 1061
return llmax(a, b); 
# 1062
} 
# 1064
static inline unsigned long long max(unsigned long long a, unsigned long long b) 
# 1065
{ 
# 1066
return ullmax(a, b); 
# 1067
} 
# 1069
static inline unsigned long long max(long long a, unsigned long long b) 
# 1070
{ 
# 1071
return ullmax((unsigned long long)a, b); 
# 1072
} 
# 1074
static inline unsigned long long max(unsigned long long a, long long b) 
# 1075
{ 
# 1076
return ullmax(a, (unsigned long long)b); 
# 1077
} 
# 1079
static inline float max(float a, float b) 
# 1080
{ 
# 1081
return fmaxf(a, b); 
# 1082
} 
# 1084
static inline double max(double a, double b) 
# 1085
{ 
# 1086
return fmax(a, b); 
# 1087
} 
# 1089
static inline double max(float a, double b) 
# 1090
{ 
# 1091
return fmax((double)a, b); 
# 1092
} 
# 1094
static inline double max(double a, float b) 
# 1095
{ 
# 1096
return fmax(a, (double)b); 
# 1097
} 
# 1108 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/math_functions.hpp"
inline int min(int a, int b) 
# 1109
{ 
# 1110
return (a < b) ? a : b; 
# 1111
} 
# 1113
inline unsigned umin(unsigned a, unsigned b) 
# 1114
{ 
# 1115
return (a < b) ? a : b; 
# 1116
} 
# 1118
inline long long llmin(long long a, long long b) 
# 1119
{ 
# 1120
return (a < b) ? a : b; 
# 1121
} 
# 1123
inline unsigned long long ullmin(unsigned long long a, unsigned long long 
# 1124
b) 
# 1125
{ 
# 1126
return (a < b) ? a : b; 
# 1127
} 
# 1129
inline int max(int a, int b) 
# 1130
{ 
# 1131
return (a > b) ? a : b; 
# 1132
} 
# 1134
inline unsigned umax(unsigned a, unsigned b) 
# 1135
{ 
# 1136
return (a > b) ? a : b; 
# 1137
} 
# 1139
inline long long llmax(long long a, long long b) 
# 1140
{ 
# 1141
return (a > b) ? a : b; 
# 1142
} 
# 1144
inline unsigned long long ullmax(unsigned long long a, unsigned long long 
# 1145
b) 
# 1146
{ 
# 1147
return (a > b) ? a : b; 
# 1148
} 
# 74 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_surface_types.h"
template< class T, int dim = 1> 
# 75
struct surface : public surfaceReference { 
# 78
surface() 
# 79
{ 
# 80
(channelDesc) = cudaCreateChannelDesc< T> (); 
# 81
} 
# 83
surface(cudaChannelFormatDesc desc) 
# 84
{ 
# 85
(channelDesc) = desc; 
# 86
} 
# 88
}; 
# 90
template< int dim> 
# 91
struct surface< void, dim>  : public surfaceReference { 
# 94
surface() 
# 95
{ 
# 96
(channelDesc) = cudaCreateChannelDesc< void> (); 
# 97
} 
# 99
}; 
# 74 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_texture_types.h"
template< class T, int texType = 1, cudaTextureReadMode mode = cudaReadModeElementType> 
# 75
struct texture : public textureReference { 
# 78
texture(int norm = 0, cudaTextureFilterMode 
# 79
fMode = cudaFilterModePoint, cudaTextureAddressMode 
# 80
aMode = cudaAddressModeClamp) 
# 81
{ 
# 82
(normalized) = norm; 
# 83
(filterMode) = fMode; 
# 84
((addressMode)[0]) = aMode; 
# 85
((addressMode)[1]) = aMode; 
# 86
((addressMode)[2]) = aMode; 
# 87
(channelDesc) = cudaCreateChannelDesc< T> (); 
# 88
(sRGB) = 0; 
# 89
} 
# 91
texture(int norm, cudaTextureFilterMode 
# 92
fMode, cudaTextureAddressMode 
# 93
aMode, cudaChannelFormatDesc 
# 94
desc) 
# 95
{ 
# 96
(normalized) = norm; 
# 97
(filterMode) = fMode; 
# 98
((addressMode)[0]) = aMode; 
# 99
((addressMode)[1]) = aMode; 
# 100
((addressMode)[2]) = aMode; 
# 101
(channelDesc) = desc; 
# 102
(sRGB) = 0; 
# 103
} 
# 105
}; 
# 89 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.h"
extern "C" {
# 3217 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.h"
}
# 3225
__attribute__((unused)) static inline int mulhi(int a, int b); 
# 3227
__attribute__((unused)) static inline unsigned mulhi(unsigned a, unsigned b); 
# 3229
__attribute__((unused)) static inline unsigned mulhi(int a, unsigned b); 
# 3231
__attribute__((unused)) static inline unsigned mulhi(unsigned a, int b); 
# 3233
__attribute__((unused)) static inline long long mul64hi(long long a, long long b); 
# 3235
__attribute__((unused)) static inline unsigned long long mul64hi(unsigned long long a, unsigned long long b); 
# 3237
__attribute__((unused)) static inline unsigned long long mul64hi(long long a, unsigned long long b); 
# 3239
__attribute__((unused)) static inline unsigned long long mul64hi(unsigned long long a, long long b); 
# 3241
__attribute__((unused)) static inline int float_as_int(float a); 
# 3243
__attribute__((unused)) static inline float int_as_float(int a); 
# 3245
__attribute__((unused)) static inline unsigned float_as_uint(float a); 
# 3247
__attribute__((unused)) static inline float uint_as_float(unsigned a); 
# 3249
__attribute__((unused)) static inline float saturate(float a); 
# 3251
__attribute__((unused)) static inline int mul24(int a, int b); 
# 3253
__attribute__((unused)) static inline unsigned umul24(unsigned a, unsigned b); 
# 3255
__attribute__((unused)) static inline int float2int(float a, cudaRoundMode mode = cudaRoundZero); 
# 3257
__attribute__((unused)) static inline unsigned float2uint(float a, cudaRoundMode mode = cudaRoundZero); 
# 3259
__attribute__((unused)) static inline float int2float(int a, cudaRoundMode mode = cudaRoundNearest); 
# 3261
__attribute__((unused)) static inline float uint2float(unsigned a, cudaRoundMode mode = cudaRoundNearest); 
# 90 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline int mulhi(int a, int b) 
# 91
{int volatile ___ = 1;(void)a;(void)b;
# 93
::exit(___);}
#if 0
# 91
{ 
# 92
return __mulhi(a, b); 
# 93
} 
#endif
# 95 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline unsigned mulhi(unsigned a, unsigned b) 
# 96
{int volatile ___ = 1;(void)a;(void)b;
# 98
::exit(___);}
#if 0
# 96
{ 
# 97
return __umulhi(a, b); 
# 98
} 
#endif
# 100 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline unsigned mulhi(int a, unsigned b) 
# 101
{int volatile ___ = 1;(void)a;(void)b;
# 103
::exit(___);}
#if 0
# 101
{ 
# 102
return __umulhi((unsigned)a, b); 
# 103
} 
#endif
# 105 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline unsigned mulhi(unsigned a, int b) 
# 106
{int volatile ___ = 1;(void)a;(void)b;
# 108
::exit(___);}
#if 0
# 106
{ 
# 107
return __umulhi(a, (unsigned)b); 
# 108
} 
#endif
# 110 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline long long mul64hi(long long a, long long b) 
# 111
{int volatile ___ = 1;(void)a;(void)b;
# 113
::exit(___);}
#if 0
# 111
{ 
# 112
return __mul64hi(a, b); 
# 113
} 
#endif
# 115 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline unsigned long long mul64hi(unsigned long long a, unsigned long long b) 
# 116
{int volatile ___ = 1;(void)a;(void)b;
# 118
::exit(___);}
#if 0
# 116
{ 
# 117
return __umul64hi(a, b); 
# 118
} 
#endif
# 120 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline unsigned long long mul64hi(long long a, unsigned long long b) 
# 121
{int volatile ___ = 1;(void)a;(void)b;
# 123
::exit(___);}
#if 0
# 121
{ 
# 122
return __umul64hi((unsigned long long)a, b); 
# 123
} 
#endif
# 125 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline unsigned long long mul64hi(unsigned long long a, long long b) 
# 126
{int volatile ___ = 1;(void)a;(void)b;
# 128
::exit(___);}
#if 0
# 126
{ 
# 127
return __umul64hi(a, (unsigned long long)b); 
# 128
} 
#endif
# 130 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline int float_as_int(float a) 
# 131
{int volatile ___ = 1;(void)a;
# 133
::exit(___);}
#if 0
# 131
{ 
# 132
return __float_as_int(a); 
# 133
} 
#endif
# 135 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline float int_as_float(int a) 
# 136
{int volatile ___ = 1;(void)a;
# 138
::exit(___);}
#if 0
# 136
{ 
# 137
return __int_as_float(a); 
# 138
} 
#endif
# 140 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline unsigned float_as_uint(float a) 
# 141
{int volatile ___ = 1;(void)a;
# 143
::exit(___);}
#if 0
# 141
{ 
# 142
return __float_as_uint(a); 
# 143
} 
#endif
# 145 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline float uint_as_float(unsigned a) 
# 146
{int volatile ___ = 1;(void)a;
# 148
::exit(___);}
#if 0
# 146
{ 
# 147
return __uint_as_float(a); 
# 148
} 
#endif
# 149 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline float saturate(float a) 
# 150
{int volatile ___ = 1;(void)a;
# 152
::exit(___);}
#if 0
# 150
{ 
# 151
return __saturatef(a); 
# 152
} 
#endif
# 154 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline int mul24(int a, int b) 
# 155
{int volatile ___ = 1;(void)a;(void)b;
# 157
::exit(___);}
#if 0
# 155
{ 
# 156
return __mul24(a, b); 
# 157
} 
#endif
# 159 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline unsigned umul24(unsigned a, unsigned b) 
# 160
{int volatile ___ = 1;(void)a;(void)b;
# 162
::exit(___);}
#if 0
# 160
{ 
# 161
return __umul24(a, b); 
# 162
} 
#endif
# 164 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline int float2int(float a, cudaRoundMode mode) 
# 165
{int volatile ___ = 1;(void)a;(void)mode;
# 170
::exit(___);}
#if 0
# 165
{ 
# 166
return (mode == (cudaRoundNearest)) ? __float2int_rn(a) : ((mode == (cudaRoundPosInf)) ? __float2int_ru(a) : ((mode == (cudaRoundMinInf)) ? __float2int_rd(a) : __float2int_rz(a))); 
# 170
} 
#endif
# 172 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline unsigned float2uint(float a, cudaRoundMode mode) 
# 173
{int volatile ___ = 1;(void)a;(void)mode;
# 178
::exit(___);}
#if 0
# 173
{ 
# 174
return (mode == (cudaRoundNearest)) ? __float2uint_rn(a) : ((mode == (cudaRoundPosInf)) ? __float2uint_ru(a) : ((mode == (cudaRoundMinInf)) ? __float2uint_rd(a) : __float2uint_rz(a))); 
# 178
} 
#endif
# 180 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline float int2float(int a, cudaRoundMode mode) 
# 181
{int volatile ___ = 1;(void)a;(void)mode;
# 186
::exit(___);}
#if 0
# 181
{ 
# 182
return (mode == (cudaRoundZero)) ? __int2float_rz(a) : ((mode == (cudaRoundPosInf)) ? __int2float_ru(a) : ((mode == (cudaRoundMinInf)) ? __int2float_rd(a) : __int2float_rn(a))); 
# 186
} 
#endif
# 188 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.hpp"
__attribute__((unused)) static inline float uint2float(unsigned a, cudaRoundMode mode) 
# 189
{int volatile ___ = 1;(void)a;(void)mode;
# 194
::exit(___);}
#if 0
# 189
{ 
# 190
return (mode == (cudaRoundZero)) ? __uint2float_rz(a) : ((mode == (cudaRoundPosInf)) ? __uint2float_ru(a) : ((mode == (cudaRoundMinInf)) ? __uint2float_rd(a) : __uint2float_rn(a))); 
# 194
} 
#endif
# 106 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline int atomicAdd(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 106
{ } 
#endif
# 108 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicAdd(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 108
{ } 
#endif
# 110 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline int atomicSub(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 110
{ } 
#endif
# 112 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicSub(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 112
{ } 
#endif
# 114 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline int atomicExch(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 114
{ } 
#endif
# 116 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicExch(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 116
{ } 
#endif
# 118 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline float atomicExch(float *address, float val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 118
{ } 
#endif
# 120 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline int atomicMin(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 120
{ } 
#endif
# 122 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicMin(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 122
{ } 
#endif
# 124 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline int atomicMax(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 124
{ } 
#endif
# 126 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicMax(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 126
{ } 
#endif
# 128 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicInc(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 128
{ } 
#endif
# 130 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicDec(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 130
{ } 
#endif
# 132 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline int atomicAnd(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 132
{ } 
#endif
# 134 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicAnd(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 134
{ } 
#endif
# 136 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline int atomicOr(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 136
{ } 
#endif
# 138 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicOr(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 138
{ } 
#endif
# 140 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline int atomicXor(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 140
{ } 
#endif
# 142 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicXor(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 142
{ } 
#endif
# 144 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline int atomicCAS(int *address, int compare, int val) {int volatile ___ = 1;(void)address;(void)compare;(void)val;::exit(___);}
#if 0
# 144
{ } 
#endif
# 146 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicCAS(unsigned *address, unsigned compare, unsigned val) {int volatile ___ = 1;(void)address;(void)compare;(void)val;::exit(___);}
#if 0
# 146
{ } 
#endif
# 171 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
extern "C" {
# 180
}
# 189 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicAdd(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 189
{ } 
#endif
# 191 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicExch(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 191
{ } 
#endif
# 193 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicCAS(unsigned long long *address, unsigned long long compare, unsigned long long val) {int volatile ___ = 1;(void)address;(void)compare;(void)val;::exit(___);}
#if 0
# 193
{ } 
#endif
# 195 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute((deprecated("__any() is deprecated in favor of __any_sync() and may be removed in a future release (Use -Wno-deprecated-declarations to suppr" "ess this warning)."))) __attribute__((unused)) static inline bool any(bool cond) {int volatile ___ = 1;(void)cond;::exit(___);}
#if 0
# 195
{ } 
#endif
# 197 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_atomic_functions.h"
__attribute((deprecated("__all() is deprecated in favor of __all_sync() and may be removed in a future release (Use -Wno-deprecated-declarations to suppr" "ess this warning)."))) __attribute__((unused)) static inline bool all(bool cond) {int volatile ___ = 1;(void)cond;::exit(___);}
#if 0
# 197
{ } 
#endif
# 87 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_double_functions.h"
extern "C" {
# 1139 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_double_functions.h"
}
# 1147
__attribute__((unused)) static inline double fma(double a, double b, double c, cudaRoundMode mode); 
# 1149
__attribute__((unused)) static inline double dmul(double a, double b, cudaRoundMode mode = cudaRoundNearest); 
# 1151
__attribute__((unused)) static inline double dadd(double a, double b, cudaRoundMode mode = cudaRoundNearest); 
# 1153
__attribute__((unused)) static inline double dsub(double a, double b, cudaRoundMode mode = cudaRoundNearest); 
# 1155
__attribute__((unused)) static inline int double2int(double a, cudaRoundMode mode = cudaRoundZero); 
# 1157
__attribute__((unused)) static inline unsigned double2uint(double a, cudaRoundMode mode = cudaRoundZero); 
# 1159
__attribute__((unused)) static inline long long double2ll(double a, cudaRoundMode mode = cudaRoundZero); 
# 1161
__attribute__((unused)) static inline unsigned long long double2ull(double a, cudaRoundMode mode = cudaRoundZero); 
# 1163
__attribute__((unused)) static inline double ll2double(long long a, cudaRoundMode mode = cudaRoundNearest); 
# 1165
__attribute__((unused)) static inline double ull2double(unsigned long long a, cudaRoundMode mode = cudaRoundNearest); 
# 1167
__attribute__((unused)) static inline double int2double(int a, cudaRoundMode mode = cudaRoundNearest); 
# 1169
__attribute__((unused)) static inline double uint2double(unsigned a, cudaRoundMode mode = cudaRoundNearest); 
# 1171
__attribute__((unused)) static inline double float2double(float a, cudaRoundMode mode = cudaRoundNearest); 
# 93 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_double_functions.hpp"
__attribute__((unused)) static inline double fma(double a, double b, double c, cudaRoundMode mode) 
# 94
{int volatile ___ = 1;(void)a;(void)b;(void)c;(void)mode;
# 99
::exit(___);}
#if 0
# 94
{ 
# 95
return (mode == (cudaRoundZero)) ? __fma_rz(a, b, c) : ((mode == (cudaRoundPosInf)) ? __fma_ru(a, b, c) : ((mode == (cudaRoundMinInf)) ? __fma_rd(a, b, c) : __fma_rn(a, b, c))); 
# 99
} 
#endif
# 101 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_double_functions.hpp"
__attribute__((unused)) static inline double dmul(double a, double b, cudaRoundMode mode) 
# 102
{int volatile ___ = 1;(void)a;(void)b;(void)mode;
# 107
::exit(___);}
#if 0
# 102
{ 
# 103
return (mode == (cudaRoundZero)) ? __dmul_rz(a, b) : ((mode == (cudaRoundPosInf)) ? __dmul_ru(a, b) : ((mode == (cudaRoundMinInf)) ? __dmul_rd(a, b) : __dmul_rn(a, b))); 
# 107
} 
#endif
# 109 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_double_functions.hpp"
__attribute__((unused)) static inline double dadd(double a, double b, cudaRoundMode mode) 
# 110
{int volatile ___ = 1;(void)a;(void)b;(void)mode;
# 115
::exit(___);}
#if 0
# 110
{ 
# 111
return (mode == (cudaRoundZero)) ? __dadd_rz(a, b) : ((mode == (cudaRoundPosInf)) ? __dadd_ru(a, b) : ((mode == (cudaRoundMinInf)) ? __dadd_rd(a, b) : __dadd_rn(a, b))); 
# 115
} 
#endif
# 117 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_double_functions.hpp"
__attribute__((unused)) static inline double dsub(double a, double b, cudaRoundMode mode) 
# 118
{int volatile ___ = 1;(void)a;(void)b;(void)mode;
# 123
::exit(___);}
#if 0
# 118
{ 
# 119
return (mode == (cudaRoundZero)) ? __dsub_rz(a, b) : ((mode == (cudaRoundPosInf)) ? __dsub_ru(a, b) : ((mode == (cudaRoundMinInf)) ? __dsub_rd(a, b) : __dsub_rn(a, b))); 
# 123
} 
#endif
# 125 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_double_functions.hpp"
__attribute__((unused)) static inline int double2int(double a, cudaRoundMode mode) 
# 126
{int volatile ___ = 1;(void)a;(void)mode;
# 131
::exit(___);}
#if 0
# 126
{ 
# 127
return (mode == (cudaRoundNearest)) ? __double2int_rn(a) : ((mode == (cudaRoundPosInf)) ? __double2int_ru(a) : ((mode == (cudaRoundMinInf)) ? __double2int_rd(a) : __double2int_rz(a))); 
# 131
} 
#endif
# 133 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_double_functions.hpp"
__attribute__((unused)) static inline unsigned double2uint(double a, cudaRoundMode mode) 
# 134
{int volatile ___ = 1;(void)a;(void)mode;
# 139
::exit(___);}
#if 0
# 134
{ 
# 135
return (mode == (cudaRoundNearest)) ? __double2uint_rn(a) : ((mode == (cudaRoundPosInf)) ? __double2uint_ru(a) : ((mode == (cudaRoundMinInf)) ? __double2uint_rd(a) : __double2uint_rz(a))); 
# 139
} 
#endif
# 141 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_double_functions.hpp"
__attribute__((unused)) static inline long long double2ll(double a, cudaRoundMode mode) 
# 142
{int volatile ___ = 1;(void)a;(void)mode;
# 147
::exit(___);}
#if 0
# 142
{ 
# 143
return (mode == (cudaRoundNearest)) ? __double2ll_rn(a) : ((mode == (cudaRoundPosInf)) ? __double2ll_ru(a) : ((mode == (cudaRoundMinInf)) ? __double2ll_rd(a) : __double2ll_rz(a))); 
# 147
} 
#endif
# 149 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_double_functions.hpp"
__attribute__((unused)) static inline unsigned long long double2ull(double a, cudaRoundMode mode) 
# 150
{int volatile ___ = 1;(void)a;(void)mode;
# 155
::exit(___);}
#if 0
# 150
{ 
# 151
return (mode == (cudaRoundNearest)) ? __double2ull_rn(a) : ((mode == (cudaRoundPosInf)) ? __double2ull_ru(a) : ((mode == (cudaRoundMinInf)) ? __double2ull_rd(a) : __double2ull_rz(a))); 
# 155
} 
#endif
# 157 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_double_functions.hpp"
__attribute__((unused)) static inline double ll2double(long long a, cudaRoundMode mode) 
# 158
{int volatile ___ = 1;(void)a;(void)mode;
# 163
::exit(___);}
#if 0
# 158
{ 
# 159
return (mode == (cudaRoundZero)) ? __ll2double_rz(a) : ((mode == (cudaRoundPosInf)) ? __ll2double_ru(a) : ((mode == (cudaRoundMinInf)) ? __ll2double_rd(a) : __ll2double_rn(a))); 
# 163
} 
#endif
# 165 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_double_functions.hpp"
__attribute__((unused)) static inline double ull2double(unsigned long long a, cudaRoundMode mode) 
# 166
{int volatile ___ = 1;(void)a;(void)mode;
# 171
::exit(___);}
#if 0
# 166
{ 
# 167
return (mode == (cudaRoundZero)) ? __ull2double_rz(a) : ((mode == (cudaRoundPosInf)) ? __ull2double_ru(a) : ((mode == (cudaRoundMinInf)) ? __ull2double_rd(a) : __ull2double_rn(a))); 
# 171
} 
#endif
# 173 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_double_functions.hpp"
__attribute__((unused)) static inline double int2double(int a, cudaRoundMode mode) 
# 174
{int volatile ___ = 1;(void)a;(void)mode;
# 176
::exit(___);}
#if 0
# 174
{ 
# 175
return (double)a; 
# 176
} 
#endif
# 178 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_double_functions.hpp"
__attribute__((unused)) static inline double uint2double(unsigned a, cudaRoundMode mode) 
# 179
{int volatile ___ = 1;(void)a;(void)mode;
# 181
::exit(___);}
#if 0
# 179
{ 
# 180
return (double)a; 
# 181
} 
#endif
# 183 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_double_functions.hpp"
__attribute__((unused)) static inline double float2double(float a, cudaRoundMode mode) 
# 184
{int volatile ___ = 1;(void)a;(void)mode;
# 186
::exit(___);}
#if 0
# 184
{ 
# 185
return (double)a; 
# 186
} 
#endif
# 89 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_atomic_functions.h"
__attribute__((unused)) static inline float atomicAdd(float *address, float val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 89
{ } 
#endif
# 100 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_atomic_functions.h"
__attribute__((unused)) static inline long long atomicMin(long long *address, long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 100
{ } 
#endif
# 102 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_atomic_functions.h"
__attribute__((unused)) static inline long long atomicMax(long long *address, long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 102
{ } 
#endif
# 104 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_atomic_functions.h"
__attribute__((unused)) static inline long long atomicAnd(long long *address, long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 104
{ } 
#endif
# 106 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_atomic_functions.h"
__attribute__((unused)) static inline long long atomicOr(long long *address, long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 106
{ } 
#endif
# 108 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_atomic_functions.h"
__attribute__((unused)) static inline long long atomicXor(long long *address, long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 108
{ } 
#endif
# 110 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicMin(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 110
{ } 
#endif
# 112 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicMax(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 112
{ } 
#endif
# 114 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicAnd(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 114
{ } 
#endif
# 116 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicOr(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 116
{ } 
#endif
# 118 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicXor(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 118
{ } 
#endif
# 303 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline double atomicAdd(double *address, double val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 303
{ } 
#endif
# 306 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicAdd_block(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 306
{ } 
#endif
# 309 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicAdd_system(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 309
{ } 
#endif
# 312 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicAdd_block(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 312
{ } 
#endif
# 315 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicAdd_system(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 315
{ } 
#endif
# 318 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicAdd_block(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 318
{ } 
#endif
# 321 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicAdd_system(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 321
{ } 
#endif
# 324 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline float atomicAdd_block(float *address, float val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 324
{ } 
#endif
# 327 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline float atomicAdd_system(float *address, float val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 327
{ } 
#endif
# 330 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline double atomicAdd_block(double *address, double val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 330
{ } 
#endif
# 333 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline double atomicAdd_system(double *address, double val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 333
{ } 
#endif
# 336 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicSub_block(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 336
{ } 
#endif
# 339 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicSub_system(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 339
{ } 
#endif
# 342 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicSub_block(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 342
{ } 
#endif
# 345 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicSub_system(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 345
{ } 
#endif
# 348 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicExch_block(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 348
{ } 
#endif
# 351 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicExch_system(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 351
{ } 
#endif
# 354 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicExch_block(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 354
{ } 
#endif
# 357 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicExch_system(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 357
{ } 
#endif
# 360 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicExch_block(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 360
{ } 
#endif
# 363 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicExch_system(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 363
{ } 
#endif
# 366 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline float atomicExch_block(float *address, float val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 366
{ } 
#endif
# 369 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline float atomicExch_system(float *address, float val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 369
{ } 
#endif
# 372 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicMin_block(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 372
{ } 
#endif
# 375 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicMin_system(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 375
{ } 
#endif
# 378 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline long long atomicMin_block(long long *address, long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 378
{ } 
#endif
# 381 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline long long atomicMin_system(long long *address, long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 381
{ } 
#endif
# 384 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicMin_block(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 384
{ } 
#endif
# 387 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicMin_system(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 387
{ } 
#endif
# 390 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicMin_block(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 390
{ } 
#endif
# 393 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicMin_system(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 393
{ } 
#endif
# 396 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicMax_block(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 396
{ } 
#endif
# 399 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicMax_system(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 399
{ } 
#endif
# 402 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline long long atomicMax_block(long long *address, long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 402
{ } 
#endif
# 405 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline long long atomicMax_system(long long *address, long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 405
{ } 
#endif
# 408 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicMax_block(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 408
{ } 
#endif
# 411 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicMax_system(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 411
{ } 
#endif
# 414 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicMax_block(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 414
{ } 
#endif
# 417 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicMax_system(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 417
{ } 
#endif
# 420 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicInc_block(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 420
{ } 
#endif
# 423 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicInc_system(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 423
{ } 
#endif
# 426 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicDec_block(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 426
{ } 
#endif
# 429 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicDec_system(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 429
{ } 
#endif
# 432 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicCAS_block(int *address, int compare, int val) {int volatile ___ = 1;(void)address;(void)compare;(void)val;::exit(___);}
#if 0
# 432
{ } 
#endif
# 435 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicCAS_system(int *address, int compare, int val) {int volatile ___ = 1;(void)address;(void)compare;(void)val;::exit(___);}
#if 0
# 435
{ } 
#endif
# 438 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicCAS_block(unsigned *address, unsigned compare, unsigned 
# 439
val) {int volatile ___ = 1;(void)address;(void)compare;(void)val;::exit(___);}
#if 0
# 439
{ } 
#endif
# 442 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicCAS_system(unsigned *address, unsigned compare, unsigned 
# 443
val) {int volatile ___ = 1;(void)address;(void)compare;(void)val;::exit(___);}
#if 0
# 443
{ } 
#endif
# 446 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicCAS_block(unsigned long long *address, unsigned long long 
# 447
compare, unsigned long long 
# 448
val) {int volatile ___ = 1;(void)address;(void)compare;(void)val;::exit(___);}
#if 0
# 448
{ } 
#endif
# 451 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicCAS_system(unsigned long long *address, unsigned long long 
# 452
compare, unsigned long long 
# 453
val) {int volatile ___ = 1;(void)address;(void)compare;(void)val;::exit(___);}
#if 0
# 453
{ } 
#endif
# 456 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicAnd_block(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 456
{ } 
#endif
# 459 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicAnd_system(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 459
{ } 
#endif
# 462 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline long long atomicAnd_block(long long *address, long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 462
{ } 
#endif
# 465 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline long long atomicAnd_system(long long *address, long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 465
{ } 
#endif
# 468 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicAnd_block(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 468
{ } 
#endif
# 471 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicAnd_system(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 471
{ } 
#endif
# 474 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicAnd_block(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 474
{ } 
#endif
# 477 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicAnd_system(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 477
{ } 
#endif
# 480 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicOr_block(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 480
{ } 
#endif
# 483 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicOr_system(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 483
{ } 
#endif
# 486 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline long long atomicOr_block(long long *address, long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 486
{ } 
#endif
# 489 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline long long atomicOr_system(long long *address, long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 489
{ } 
#endif
# 492 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicOr_block(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 492
{ } 
#endif
# 495 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicOr_system(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 495
{ } 
#endif
# 498 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicOr_block(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 498
{ } 
#endif
# 501 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicOr_system(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 501
{ } 
#endif
# 504 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicXor_block(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 504
{ } 
#endif
# 507 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline int atomicXor_system(int *address, int val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 507
{ } 
#endif
# 510 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline long long atomicXor_block(long long *address, long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 510
{ } 
#endif
# 513 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline long long atomicXor_system(long long *address, long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 513
{ } 
#endif
# 516 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicXor_block(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 516
{ } 
#endif
# 519 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned atomicXor_system(unsigned *address, unsigned val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 519
{ } 
#endif
# 522 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicXor_block(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 522
{ } 
#endif
# 525 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_60_atomic_functions.h"
__attribute__((unused)) static inline unsigned long long atomicXor_system(unsigned long long *address, unsigned long long val) {int volatile ___ = 1;(void)address;(void)val;::exit(___);}
#if 0
# 525
{ } 
#endif
# 90 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
__attribute__((unused)) static inline size_t __cvta_generic_to_global(const void *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 90
{ } 
#endif
# 91 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
__attribute__((unused)) static inline size_t __cvta_generic_to_shared(const void *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 91
{ } 
#endif
# 92 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
__attribute__((unused)) static inline size_t __cvta_generic_to_constant(const void *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 92
{ } 
#endif
# 93 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
__attribute__((unused)) static inline size_t __cvta_generic_to_local(const void *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 93
{ } 
#endif
# 95 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
__attribute__((unused)) static inline void *__cvta_global_to_generic(size_t rawbits) {int volatile ___ = 1;(void)rawbits;::exit(___);}
#if 0
# 95
{ } 
#endif
# 96 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
__attribute__((unused)) static inline void *__cvta_shared_to_generic(size_t rawbits) {int volatile ___ = 1;(void)rawbits;::exit(___);}
#if 0
# 96
{ } 
#endif
# 97 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
__attribute__((unused)) static inline void *__cvta_constant_to_generic(size_t rawbits) {int volatile ___ = 1;(void)rawbits;::exit(___);}
#if 0
# 97
{ } 
#endif
# 98 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
__attribute__((unused)) static inline void *__cvta_local_to_generic(size_t rawbits) {int volatile ___ = 1;(void)rawbits;::exit(___);}
#if 0
# 98
{ } 
#endif
# 101 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
extern "C" {
# 1486 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
}
# 1493
__attribute((deprecated("__ballot() is deprecated in favor of __ballot_sync() and may be removed in a future release (Use -Wno-deprecated-declarations to" " suppress this warning)."))) __attribute__((unused)) static inline unsigned ballot(bool pred) {int volatile ___ = 1;(void)pred;::exit(___);}
#if 0
# 1493
{ } 
#endif
# 1495 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
__attribute__((unused)) static inline int syncthreads_count(bool pred) {int volatile ___ = 1;(void)pred;::exit(___);}
#if 0
# 1495
{ } 
#endif
# 1497 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
__attribute__((unused)) static inline bool syncthreads_and(bool pred) {int volatile ___ = 1;(void)pred;::exit(___);}
#if 0
# 1497
{ } 
#endif
# 1499 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
__attribute__((unused)) static inline bool syncthreads_or(bool pred) {int volatile ___ = 1;(void)pred;::exit(___);}
#if 0
# 1499
{ } 
#endif
# 1504 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
__attribute__((unused)) static inline unsigned __isGlobal(const void *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 1504
{ } 
#endif
# 1505 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
__attribute__((unused)) static inline unsigned __isShared(const void *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 1505
{ } 
#endif
# 1506 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
__attribute__((unused)) static inline unsigned __isConstant(const void *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 1506
{ } 
#endif
# 1507 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_20_intrinsics.h"
__attribute__((unused)) static inline unsigned __isLocal(const void *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 1507
{ } 
#endif
# 102 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline unsigned __fns(unsigned mask, unsigned base, int offset) {int volatile ___ = 1;(void)mask;(void)base;(void)offset;::exit(___);}
#if 0
# 102
{ } 
#endif
# 103 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline void __barrier_sync(unsigned id) {int volatile ___ = 1;(void)id;::exit(___);}
#if 0
# 103
{ } 
#endif
# 104 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline void __barrier_sync_count(unsigned id, unsigned cnt) {int volatile ___ = 1;(void)id;(void)cnt;::exit(___);}
#if 0
# 104
{ } 
#endif
# 105 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline void __syncwarp(unsigned mask = 4294967295U) {int volatile ___ = 1;(void)mask;::exit(___);}
#if 0
# 105
{ } 
#endif
# 106 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline int __all_sync(unsigned mask, int pred) {int volatile ___ = 1;(void)mask;(void)pred;::exit(___);}
#if 0
# 106
{ } 
#endif
# 107 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline int __any_sync(unsigned mask, int pred) {int volatile ___ = 1;(void)mask;(void)pred;::exit(___);}
#if 0
# 107
{ } 
#endif
# 108 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline int __uni_sync(unsigned mask, int pred) {int volatile ___ = 1;(void)mask;(void)pred;::exit(___);}
#if 0
# 108
{ } 
#endif
# 109 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline unsigned __ballot_sync(unsigned mask, int pred) {int volatile ___ = 1;(void)mask;(void)pred;::exit(___);}
#if 0
# 109
{ } 
#endif
# 110 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline unsigned __activemask() {int volatile ___ = 1;::exit(___);}
#if 0
# 110
{ } 
#endif
# 119 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl() is deprecated in favor of __shfl_sync() and may be removed in a future release (Use -Wno-deprecated-declarations to sup" "press this warning)."))) __attribute__((unused)) static inline int __shfl(int var, int srcLane, int width = 32) {int volatile ___ = 1;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 119
{ } 
#endif
# 120 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl() is deprecated in favor of __shfl_sync() and may be removed in a future release (Use -Wno-deprecated-declarations to sup" "press this warning)."))) __attribute__((unused)) static inline unsigned __shfl(unsigned var, int srcLane, int width = 32) {int volatile ___ = 1;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 120
{ } 
#endif
# 121 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_up() is deprecated in favor of __shfl_up_sync() and may be removed in a future release (Use -Wno-deprecated-declarations " "to suppress this warning)."))) __attribute__((unused)) static inline int __shfl_up(int var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 121
{ } 
#endif
# 122 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_up() is deprecated in favor of __shfl_up_sync() and may be removed in a future release (Use -Wno-deprecated-declarations " "to suppress this warning)."))) __attribute__((unused)) static inline unsigned __shfl_up(unsigned var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 122
{ } 
#endif
# 123 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_down() is deprecated in favor of __shfl_down_sync() and may be removed in a future release (Use -Wno-deprecated-declarati" "ons to suppress this warning)."))) __attribute__((unused)) static inline int __shfl_down(int var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 123
{ } 
#endif
# 124 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_down() is deprecated in favor of __shfl_down_sync() and may be removed in a future release (Use -Wno-deprecated-declarati" "ons to suppress this warning)."))) __attribute__((unused)) static inline unsigned __shfl_down(unsigned var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 124
{ } 
#endif
# 125 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_xor() is deprecated in favor of __shfl_xor_sync() and may be removed in a future release (Use -Wno-deprecated-declaration" "s to suppress this warning)."))) __attribute__((unused)) static inline int __shfl_xor(int var, int laneMask, int width = 32) {int volatile ___ = 1;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 125
{ } 
#endif
# 126 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_xor() is deprecated in favor of __shfl_xor_sync() and may be removed in a future release (Use -Wno-deprecated-declaration" "s to suppress this warning)."))) __attribute__((unused)) static inline unsigned __shfl_xor(unsigned var, int laneMask, int width = 32) {int volatile ___ = 1;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 126
{ } 
#endif
# 127 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl() is deprecated in favor of __shfl_sync() and may be removed in a future release (Use -Wno-deprecated-declarations to sup" "press this warning)."))) __attribute__((unused)) static inline float __shfl(float var, int srcLane, int width = 32) {int volatile ___ = 1;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 127
{ } 
#endif
# 128 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_up() is deprecated in favor of __shfl_up_sync() and may be removed in a future release (Use -Wno-deprecated-declarations " "to suppress this warning)."))) __attribute__((unused)) static inline float __shfl_up(float var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 128
{ } 
#endif
# 129 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_down() is deprecated in favor of __shfl_down_sync() and may be removed in a future release (Use -Wno-deprecated-declarati" "ons to suppress this warning)."))) __attribute__((unused)) static inline float __shfl_down(float var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 129
{ } 
#endif
# 130 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_xor() is deprecated in favor of __shfl_xor_sync() and may be removed in a future release (Use -Wno-deprecated-declaration" "s to suppress this warning)."))) __attribute__((unused)) static inline float __shfl_xor(float var, int laneMask, int width = 32) {int volatile ___ = 1;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 130
{ } 
#endif
# 133 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline int __shfl_sync(unsigned mask, int var, int srcLane, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 133
{ } 
#endif
# 134 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline unsigned __shfl_sync(unsigned mask, unsigned var, int srcLane, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 134
{ } 
#endif
# 135 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline int __shfl_up_sync(unsigned mask, int var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 135
{ } 
#endif
# 136 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline unsigned __shfl_up_sync(unsigned mask, unsigned var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 136
{ } 
#endif
# 137 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline int __shfl_down_sync(unsigned mask, int var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 137
{ } 
#endif
# 138 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline unsigned __shfl_down_sync(unsigned mask, unsigned var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 138
{ } 
#endif
# 139 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline int __shfl_xor_sync(unsigned mask, int var, int laneMask, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 139
{ } 
#endif
# 140 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline unsigned __shfl_xor_sync(unsigned mask, unsigned var, int laneMask, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 140
{ } 
#endif
# 141 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline float __shfl_sync(unsigned mask, float var, int srcLane, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 141
{ } 
#endif
# 142 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline float __shfl_up_sync(unsigned mask, float var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 142
{ } 
#endif
# 143 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline float __shfl_down_sync(unsigned mask, float var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 143
{ } 
#endif
# 144 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline float __shfl_xor_sync(unsigned mask, float var, int laneMask, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 144
{ } 
#endif
# 148 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl() is deprecated in favor of __shfl_sync() and may be removed in a future release (Use -Wno-deprecated-declarations to sup" "press this warning)."))) __attribute__((unused)) static inline unsigned long long __shfl(unsigned long long var, int srcLane, int width = 32) {int volatile ___ = 1;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 148
{ } 
#endif
# 149 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl() is deprecated in favor of __shfl_sync() and may be removed in a future release (Use -Wno-deprecated-declarations to sup" "press this warning)."))) __attribute__((unused)) static inline long long __shfl(long long var, int srcLane, int width = 32) {int volatile ___ = 1;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 149
{ } 
#endif
# 150 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_up() is deprecated in favor of __shfl_up_sync() and may be removed in a future release (Use -Wno-deprecated-declarations " "to suppress this warning)."))) __attribute__((unused)) static inline long long __shfl_up(long long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 150
{ } 
#endif
# 151 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_up() is deprecated in favor of __shfl_up_sync() and may be removed in a future release (Use -Wno-deprecated-declarations " "to suppress this warning)."))) __attribute__((unused)) static inline unsigned long long __shfl_up(unsigned long long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 151
{ } 
#endif
# 152 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_down() is deprecated in favor of __shfl_down_sync() and may be removed in a future release (Use -Wno-deprecated-declarati" "ons to suppress this warning)."))) __attribute__((unused)) static inline long long __shfl_down(long long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 152
{ } 
#endif
# 153 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_down() is deprecated in favor of __shfl_down_sync() and may be removed in a future release (Use -Wno-deprecated-declarati" "ons to suppress this warning)."))) __attribute__((unused)) static inline unsigned long long __shfl_down(unsigned long long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 153
{ } 
#endif
# 154 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_xor() is deprecated in favor of __shfl_xor_sync() and may be removed in a future release (Use -Wno-deprecated-declaration" "s to suppress this warning)."))) __attribute__((unused)) static inline long long __shfl_xor(long long var, int laneMask, int width = 32) {int volatile ___ = 1;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 154
{ } 
#endif
# 155 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_xor() is deprecated in favor of __shfl_xor_sync() and may be removed in a future release (Use -Wno-deprecated-declaration" "s to suppress this warning)."))) __attribute__((unused)) static inline unsigned long long __shfl_xor(unsigned long long var, int laneMask, int width = 32) {int volatile ___ = 1;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 155
{ } 
#endif
# 156 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl() is deprecated in favor of __shfl_sync() and may be removed in a future release (Use -Wno-deprecated-declarations to sup" "press this warning)."))) __attribute__((unused)) static inline double __shfl(double var, int srcLane, int width = 32) {int volatile ___ = 1;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 156
{ } 
#endif
# 157 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_up() is deprecated in favor of __shfl_up_sync() and may be removed in a future release (Use -Wno-deprecated-declarations " "to suppress this warning)."))) __attribute__((unused)) static inline double __shfl_up(double var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 157
{ } 
#endif
# 158 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_down() is deprecated in favor of __shfl_down_sync() and may be removed in a future release (Use -Wno-deprecated-declarati" "ons to suppress this warning)."))) __attribute__((unused)) static inline double __shfl_down(double var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 158
{ } 
#endif
# 159 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_xor() is deprecated in favor of __shfl_xor_sync() and may be removed in a future release (Use -Wno-deprecated-declaration" "s to suppress this warning)."))) __attribute__((unused)) static inline double __shfl_xor(double var, int laneMask, int width = 32) {int volatile ___ = 1;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 159
{ } 
#endif
# 162 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline long long __shfl_sync(unsigned mask, long long var, int srcLane, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 162
{ } 
#endif
# 163 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline unsigned long long __shfl_sync(unsigned mask, unsigned long long var, int srcLane, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 163
{ } 
#endif
# 164 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline long long __shfl_up_sync(unsigned mask, long long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 164
{ } 
#endif
# 165 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline unsigned long long __shfl_up_sync(unsigned mask, unsigned long long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 165
{ } 
#endif
# 166 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline long long __shfl_down_sync(unsigned mask, long long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 166
{ } 
#endif
# 167 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline unsigned long long __shfl_down_sync(unsigned mask, unsigned long long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 167
{ } 
#endif
# 168 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline long long __shfl_xor_sync(unsigned mask, long long var, int laneMask, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 168
{ } 
#endif
# 169 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline unsigned long long __shfl_xor_sync(unsigned mask, unsigned long long var, int laneMask, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 169
{ } 
#endif
# 170 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline double __shfl_sync(unsigned mask, double var, int srcLane, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 170
{ } 
#endif
# 171 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline double __shfl_up_sync(unsigned mask, double var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 171
{ } 
#endif
# 172 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline double __shfl_down_sync(unsigned mask, double var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 172
{ } 
#endif
# 173 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline double __shfl_xor_sync(unsigned mask, double var, int laneMask, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 173
{ } 
#endif
# 177 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl() is deprecated in favor of __shfl_sync() and may be removed in a future release (Use -Wno-deprecated-declarations to sup" "press this warning)."))) __attribute__((unused)) static inline long __shfl(long var, int srcLane, int width = 32) {int volatile ___ = 1;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 177
{ } 
#endif
# 178 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl() is deprecated in favor of __shfl_sync() and may be removed in a future release (Use -Wno-deprecated-declarations to sup" "press this warning)."))) __attribute__((unused)) static inline unsigned long __shfl(unsigned long var, int srcLane, int width = 32) {int volatile ___ = 1;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 178
{ } 
#endif
# 179 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_up() is deprecated in favor of __shfl_up_sync() and may be removed in a future release (Use -Wno-deprecated-declarations " "to suppress this warning)."))) __attribute__((unused)) static inline long __shfl_up(long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 179
{ } 
#endif
# 180 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_up() is deprecated in favor of __shfl_up_sync() and may be removed in a future release (Use -Wno-deprecated-declarations " "to suppress this warning)."))) __attribute__((unused)) static inline unsigned long __shfl_up(unsigned long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 180
{ } 
#endif
# 181 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_down() is deprecated in favor of __shfl_down_sync() and may be removed in a future release (Use -Wno-deprecated-declarati" "ons to suppress this warning)."))) __attribute__((unused)) static inline long __shfl_down(long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 181
{ } 
#endif
# 182 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_down() is deprecated in favor of __shfl_down_sync() and may be removed in a future release (Use -Wno-deprecated-declarati" "ons to suppress this warning)."))) __attribute__((unused)) static inline unsigned long __shfl_down(unsigned long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 182
{ } 
#endif
# 183 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_xor() is deprecated in favor of __shfl_xor_sync() and may be removed in a future release (Use -Wno-deprecated-declaration" "s to suppress this warning)."))) __attribute__((unused)) static inline long __shfl_xor(long var, int laneMask, int width = 32) {int volatile ___ = 1;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 183
{ } 
#endif
# 184 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute((deprecated("__shfl_xor() is deprecated in favor of __shfl_xor_sync() and may be removed in a future release (Use -Wno-deprecated-declaration" "s to suppress this warning)."))) __attribute__((unused)) static inline unsigned long __shfl_xor(unsigned long var, int laneMask, int width = 32) {int volatile ___ = 1;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 184
{ } 
#endif
# 187 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline long __shfl_sync(unsigned mask, long var, int srcLane, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 187
{ } 
#endif
# 188 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline unsigned long __shfl_sync(unsigned mask, unsigned long var, int srcLane, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)srcLane;(void)width;::exit(___);}
#if 0
# 188
{ } 
#endif
# 189 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline long __shfl_up_sync(unsigned mask, long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 189
{ } 
#endif
# 190 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline unsigned long __shfl_up_sync(unsigned mask, unsigned long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 190
{ } 
#endif
# 191 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline long __shfl_down_sync(unsigned mask, long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 191
{ } 
#endif
# 192 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline unsigned long __shfl_down_sync(unsigned mask, unsigned long var, unsigned delta, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)delta;(void)width;::exit(___);}
#if 0
# 192
{ } 
#endif
# 193 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline long __shfl_xor_sync(unsigned mask, long var, int laneMask, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 193
{ } 
#endif
# 194 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_30_intrinsics.h"
__attribute__((unused)) static inline unsigned long __shfl_xor_sync(unsigned mask, unsigned long var, int laneMask, int width = 32) {int volatile ___ = 1;(void)mask;(void)var;(void)laneMask;(void)width;::exit(___);}
#if 0
# 194
{ } 
#endif
# 87 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline long __ldg(const long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 87
{ } 
#endif
# 88 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned long __ldg(const unsigned long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 88
{ } 
#endif
# 90 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char __ldg(const char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 90
{ } 
#endif
# 91 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline signed char __ldg(const signed char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 91
{ } 
#endif
# 92 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short __ldg(const short *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 92
{ } 
#endif
# 93 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int __ldg(const int *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 93
{ } 
#endif
# 94 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline long long __ldg(const long long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 94
{ } 
#endif
# 95 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char2 __ldg(const char2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 95
{ } 
#endif
# 96 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char4 __ldg(const char4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 96
{ } 
#endif
# 97 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short2 __ldg(const short2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 97
{ } 
#endif
# 98 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short4 __ldg(const short4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 98
{ } 
#endif
# 99 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int2 __ldg(const int2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 99
{ } 
#endif
# 100 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int4 __ldg(const int4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 100
{ } 
#endif
# 101 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline longlong2 __ldg(const longlong2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 101
{ } 
#endif
# 103 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned char __ldg(const unsigned char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 103
{ } 
#endif
# 104 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned short __ldg(const unsigned short *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 104
{ } 
#endif
# 105 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned __ldg(const unsigned *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 105
{ } 
#endif
# 106 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned long long __ldg(const unsigned long long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 106
{ } 
#endif
# 107 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uchar2 __ldg(const uchar2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 107
{ } 
#endif
# 108 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uchar4 __ldg(const uchar4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 108
{ } 
#endif
# 109 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ushort2 __ldg(const ushort2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 109
{ } 
#endif
# 110 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ushort4 __ldg(const ushort4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 110
{ } 
#endif
# 111 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uint2 __ldg(const uint2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 111
{ } 
#endif
# 112 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uint4 __ldg(const uint4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 112
{ } 
#endif
# 113 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ulonglong2 __ldg(const ulonglong2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 113
{ } 
#endif
# 115 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float __ldg(const float *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 115
{ } 
#endif
# 116 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline double __ldg(const double *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 116
{ } 
#endif
# 117 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float2 __ldg(const float2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 117
{ } 
#endif
# 118 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float4 __ldg(const float4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 118
{ } 
#endif
# 119 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline double2 __ldg(const double2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 119
{ } 
#endif
# 123 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline long __ldcg(const long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 123
{ } 
#endif
# 124 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned long __ldcg(const unsigned long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 124
{ } 
#endif
# 126 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char __ldcg(const char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 126
{ } 
#endif
# 127 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline signed char __ldcg(const signed char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 127
{ } 
#endif
# 128 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short __ldcg(const short *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 128
{ } 
#endif
# 129 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int __ldcg(const int *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 129
{ } 
#endif
# 130 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline long long __ldcg(const long long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 130
{ } 
#endif
# 131 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char2 __ldcg(const char2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 131
{ } 
#endif
# 132 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char4 __ldcg(const char4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 132
{ } 
#endif
# 133 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short2 __ldcg(const short2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 133
{ } 
#endif
# 134 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short4 __ldcg(const short4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 134
{ } 
#endif
# 135 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int2 __ldcg(const int2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 135
{ } 
#endif
# 136 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int4 __ldcg(const int4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 136
{ } 
#endif
# 137 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline longlong2 __ldcg(const longlong2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 137
{ } 
#endif
# 139 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned char __ldcg(const unsigned char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 139
{ } 
#endif
# 140 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned short __ldcg(const unsigned short *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 140
{ } 
#endif
# 141 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned __ldcg(const unsigned *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 141
{ } 
#endif
# 142 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned long long __ldcg(const unsigned long long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 142
{ } 
#endif
# 143 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uchar2 __ldcg(const uchar2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 143
{ } 
#endif
# 144 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uchar4 __ldcg(const uchar4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 144
{ } 
#endif
# 145 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ushort2 __ldcg(const ushort2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 145
{ } 
#endif
# 146 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ushort4 __ldcg(const ushort4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 146
{ } 
#endif
# 147 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uint2 __ldcg(const uint2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 147
{ } 
#endif
# 148 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uint4 __ldcg(const uint4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 148
{ } 
#endif
# 149 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ulonglong2 __ldcg(const ulonglong2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 149
{ } 
#endif
# 151 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float __ldcg(const float *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 151
{ } 
#endif
# 152 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline double __ldcg(const double *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 152
{ } 
#endif
# 153 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float2 __ldcg(const float2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 153
{ } 
#endif
# 154 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float4 __ldcg(const float4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 154
{ } 
#endif
# 155 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline double2 __ldcg(const double2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 155
{ } 
#endif
# 159 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline long __ldca(const long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 159
{ } 
#endif
# 160 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned long __ldca(const unsigned long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 160
{ } 
#endif
# 162 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char __ldca(const char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 162
{ } 
#endif
# 163 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline signed char __ldca(const signed char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 163
{ } 
#endif
# 164 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short __ldca(const short *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 164
{ } 
#endif
# 165 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int __ldca(const int *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 165
{ } 
#endif
# 166 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline long long __ldca(const long long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 166
{ } 
#endif
# 167 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char2 __ldca(const char2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 167
{ } 
#endif
# 168 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char4 __ldca(const char4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 168
{ } 
#endif
# 169 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short2 __ldca(const short2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 169
{ } 
#endif
# 170 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short4 __ldca(const short4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 170
{ } 
#endif
# 171 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int2 __ldca(const int2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 171
{ } 
#endif
# 172 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int4 __ldca(const int4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 172
{ } 
#endif
# 173 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline longlong2 __ldca(const longlong2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 173
{ } 
#endif
# 175 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned char __ldca(const unsigned char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 175
{ } 
#endif
# 176 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned short __ldca(const unsigned short *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 176
{ } 
#endif
# 177 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned __ldca(const unsigned *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 177
{ } 
#endif
# 178 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned long long __ldca(const unsigned long long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 178
{ } 
#endif
# 179 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uchar2 __ldca(const uchar2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 179
{ } 
#endif
# 180 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uchar4 __ldca(const uchar4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 180
{ } 
#endif
# 181 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ushort2 __ldca(const ushort2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 181
{ } 
#endif
# 182 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ushort4 __ldca(const ushort4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 182
{ } 
#endif
# 183 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uint2 __ldca(const uint2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 183
{ } 
#endif
# 184 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uint4 __ldca(const uint4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 184
{ } 
#endif
# 185 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ulonglong2 __ldca(const ulonglong2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 185
{ } 
#endif
# 187 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float __ldca(const float *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 187
{ } 
#endif
# 188 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline double __ldca(const double *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 188
{ } 
#endif
# 189 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float2 __ldca(const float2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 189
{ } 
#endif
# 190 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float4 __ldca(const float4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 190
{ } 
#endif
# 191 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline double2 __ldca(const double2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 191
{ } 
#endif
# 195 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline long __ldcs(const long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 195
{ } 
#endif
# 196 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned long __ldcs(const unsigned long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 196
{ } 
#endif
# 198 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char __ldcs(const char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 198
{ } 
#endif
# 199 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline signed char __ldcs(const signed char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 199
{ } 
#endif
# 200 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short __ldcs(const short *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 200
{ } 
#endif
# 201 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int __ldcs(const int *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 201
{ } 
#endif
# 202 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline long long __ldcs(const long long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 202
{ } 
#endif
# 203 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char2 __ldcs(const char2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 203
{ } 
#endif
# 204 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char4 __ldcs(const char4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 204
{ } 
#endif
# 205 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short2 __ldcs(const short2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 205
{ } 
#endif
# 206 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short4 __ldcs(const short4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 206
{ } 
#endif
# 207 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int2 __ldcs(const int2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 207
{ } 
#endif
# 208 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int4 __ldcs(const int4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 208
{ } 
#endif
# 209 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline longlong2 __ldcs(const longlong2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 209
{ } 
#endif
# 211 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned char __ldcs(const unsigned char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 211
{ } 
#endif
# 212 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned short __ldcs(const unsigned short *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 212
{ } 
#endif
# 213 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned __ldcs(const unsigned *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 213
{ } 
#endif
# 214 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned long long __ldcs(const unsigned long long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 214
{ } 
#endif
# 215 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uchar2 __ldcs(const uchar2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 215
{ } 
#endif
# 216 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uchar4 __ldcs(const uchar4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 216
{ } 
#endif
# 217 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ushort2 __ldcs(const ushort2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 217
{ } 
#endif
# 218 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ushort4 __ldcs(const ushort4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 218
{ } 
#endif
# 219 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uint2 __ldcs(const uint2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 219
{ } 
#endif
# 220 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uint4 __ldcs(const uint4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 220
{ } 
#endif
# 221 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ulonglong2 __ldcs(const ulonglong2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 221
{ } 
#endif
# 223 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float __ldcs(const float *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 223
{ } 
#endif
# 224 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline double __ldcs(const double *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 224
{ } 
#endif
# 225 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float2 __ldcs(const float2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 225
{ } 
#endif
# 226 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float4 __ldcs(const float4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 226
{ } 
#endif
# 227 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline double2 __ldcs(const double2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 227
{ } 
#endif
# 231 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline long __ldlu(const long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 231
{ } 
#endif
# 232 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned long __ldlu(const unsigned long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 232
{ } 
#endif
# 234 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char __ldlu(const char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 234
{ } 
#endif
# 235 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline signed char __ldlu(const signed char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 235
{ } 
#endif
# 236 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short __ldlu(const short *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 236
{ } 
#endif
# 237 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int __ldlu(const int *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 237
{ } 
#endif
# 238 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline long long __ldlu(const long long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 238
{ } 
#endif
# 239 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char2 __ldlu(const char2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 239
{ } 
#endif
# 240 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char4 __ldlu(const char4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 240
{ } 
#endif
# 241 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short2 __ldlu(const short2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 241
{ } 
#endif
# 242 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short4 __ldlu(const short4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 242
{ } 
#endif
# 243 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int2 __ldlu(const int2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 243
{ } 
#endif
# 244 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int4 __ldlu(const int4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 244
{ } 
#endif
# 245 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline longlong2 __ldlu(const longlong2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 245
{ } 
#endif
# 247 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned char __ldlu(const unsigned char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 247
{ } 
#endif
# 248 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned short __ldlu(const unsigned short *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 248
{ } 
#endif
# 249 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned __ldlu(const unsigned *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 249
{ } 
#endif
# 250 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned long long __ldlu(const unsigned long long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 250
{ } 
#endif
# 251 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uchar2 __ldlu(const uchar2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 251
{ } 
#endif
# 252 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uchar4 __ldlu(const uchar4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 252
{ } 
#endif
# 253 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ushort2 __ldlu(const ushort2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 253
{ } 
#endif
# 254 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ushort4 __ldlu(const ushort4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 254
{ } 
#endif
# 255 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uint2 __ldlu(const uint2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 255
{ } 
#endif
# 256 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uint4 __ldlu(const uint4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 256
{ } 
#endif
# 257 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ulonglong2 __ldlu(const ulonglong2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 257
{ } 
#endif
# 259 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float __ldlu(const float *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 259
{ } 
#endif
# 260 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline double __ldlu(const double *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 260
{ } 
#endif
# 261 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float2 __ldlu(const float2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 261
{ } 
#endif
# 262 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float4 __ldlu(const float4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 262
{ } 
#endif
# 263 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline double2 __ldlu(const double2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 263
{ } 
#endif
# 267 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline long __ldcv(const long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 267
{ } 
#endif
# 268 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned long __ldcv(const unsigned long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 268
{ } 
#endif
# 270 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char __ldcv(const char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 270
{ } 
#endif
# 271 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline signed char __ldcv(const signed char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 271
{ } 
#endif
# 272 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short __ldcv(const short *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 272
{ } 
#endif
# 273 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int __ldcv(const int *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 273
{ } 
#endif
# 274 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline long long __ldcv(const long long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 274
{ } 
#endif
# 275 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char2 __ldcv(const char2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 275
{ } 
#endif
# 276 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline char4 __ldcv(const char4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 276
{ } 
#endif
# 277 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short2 __ldcv(const short2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 277
{ } 
#endif
# 278 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline short4 __ldcv(const short4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 278
{ } 
#endif
# 279 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int2 __ldcv(const int2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 279
{ } 
#endif
# 280 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline int4 __ldcv(const int4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 280
{ } 
#endif
# 281 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline longlong2 __ldcv(const longlong2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 281
{ } 
#endif
# 283 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned char __ldcv(const unsigned char *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 283
{ } 
#endif
# 284 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned short __ldcv(const unsigned short *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 284
{ } 
#endif
# 285 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned __ldcv(const unsigned *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 285
{ } 
#endif
# 286 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned long long __ldcv(const unsigned long long *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 286
{ } 
#endif
# 287 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uchar2 __ldcv(const uchar2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 287
{ } 
#endif
# 288 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uchar4 __ldcv(const uchar4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 288
{ } 
#endif
# 289 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ushort2 __ldcv(const ushort2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 289
{ } 
#endif
# 290 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ushort4 __ldcv(const ushort4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 290
{ } 
#endif
# 291 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uint2 __ldcv(const uint2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 291
{ } 
#endif
# 292 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline uint4 __ldcv(const uint4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 292
{ } 
#endif
# 293 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline ulonglong2 __ldcv(const ulonglong2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 293
{ } 
#endif
# 295 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float __ldcv(const float *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 295
{ } 
#endif
# 296 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline double __ldcv(const double *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 296
{ } 
#endif
# 297 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float2 __ldcv(const float2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 297
{ } 
#endif
# 298 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline float4 __ldcv(const float4 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 298
{ } 
#endif
# 299 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline double2 __ldcv(const double2 *ptr) {int volatile ___ = 1;(void)ptr;::exit(___);}
#if 0
# 299
{ } 
#endif
# 303 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(long *ptr, long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 303
{ } 
#endif
# 304 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(unsigned long *ptr, unsigned long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 304
{ } 
#endif
# 306 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(char *ptr, char value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 306
{ } 
#endif
# 307 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(signed char *ptr, signed char value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 307
{ } 
#endif
# 308 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(short *ptr, short value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 308
{ } 
#endif
# 309 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(int *ptr, int value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 309
{ } 
#endif
# 310 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(long long *ptr, long long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 310
{ } 
#endif
# 311 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(char2 *ptr, char2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 311
{ } 
#endif
# 312 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(char4 *ptr, char4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 312
{ } 
#endif
# 313 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(short2 *ptr, short2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 313
{ } 
#endif
# 314 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(short4 *ptr, short4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 314
{ } 
#endif
# 315 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(int2 *ptr, int2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 315
{ } 
#endif
# 316 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(int4 *ptr, int4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 316
{ } 
#endif
# 317 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(longlong2 *ptr, longlong2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 317
{ } 
#endif
# 319 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(unsigned char *ptr, unsigned char value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 319
{ } 
#endif
# 320 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(unsigned short *ptr, unsigned short value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 320
{ } 
#endif
# 321 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(unsigned *ptr, unsigned value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 321
{ } 
#endif
# 322 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(unsigned long long *ptr, unsigned long long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 322
{ } 
#endif
# 323 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(uchar2 *ptr, uchar2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 323
{ } 
#endif
# 324 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(uchar4 *ptr, uchar4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 324
{ } 
#endif
# 325 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(ushort2 *ptr, ushort2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 325
{ } 
#endif
# 326 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(ushort4 *ptr, ushort4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 326
{ } 
#endif
# 327 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(uint2 *ptr, uint2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 327
{ } 
#endif
# 328 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(uint4 *ptr, uint4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 328
{ } 
#endif
# 329 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(ulonglong2 *ptr, ulonglong2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 329
{ } 
#endif
# 331 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(float *ptr, float value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 331
{ } 
#endif
# 332 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(double *ptr, double value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 332
{ } 
#endif
# 333 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(float2 *ptr, float2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 333
{ } 
#endif
# 334 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(float4 *ptr, float4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 334
{ } 
#endif
# 335 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwb(double2 *ptr, double2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 335
{ } 
#endif
# 339 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(long *ptr, long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 339
{ } 
#endif
# 340 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(unsigned long *ptr, unsigned long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 340
{ } 
#endif
# 342 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(char *ptr, char value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 342
{ } 
#endif
# 343 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(signed char *ptr, signed char value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 343
{ } 
#endif
# 344 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(short *ptr, short value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 344
{ } 
#endif
# 345 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(int *ptr, int value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 345
{ } 
#endif
# 346 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(long long *ptr, long long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 346
{ } 
#endif
# 347 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(char2 *ptr, char2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 347
{ } 
#endif
# 348 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(char4 *ptr, char4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 348
{ } 
#endif
# 349 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(short2 *ptr, short2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 349
{ } 
#endif
# 350 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(short4 *ptr, short4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 350
{ } 
#endif
# 351 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(int2 *ptr, int2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 351
{ } 
#endif
# 352 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(int4 *ptr, int4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 352
{ } 
#endif
# 353 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(longlong2 *ptr, longlong2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 353
{ } 
#endif
# 355 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(unsigned char *ptr, unsigned char value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 355
{ } 
#endif
# 356 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(unsigned short *ptr, unsigned short value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 356
{ } 
#endif
# 357 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(unsigned *ptr, unsigned value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 357
{ } 
#endif
# 358 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(unsigned long long *ptr, unsigned long long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 358
{ } 
#endif
# 359 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(uchar2 *ptr, uchar2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 359
{ } 
#endif
# 360 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(uchar4 *ptr, uchar4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 360
{ } 
#endif
# 361 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(ushort2 *ptr, ushort2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 361
{ } 
#endif
# 362 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(ushort4 *ptr, ushort4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 362
{ } 
#endif
# 363 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(uint2 *ptr, uint2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 363
{ } 
#endif
# 364 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(uint4 *ptr, uint4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 364
{ } 
#endif
# 365 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(ulonglong2 *ptr, ulonglong2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 365
{ } 
#endif
# 367 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(float *ptr, float value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 367
{ } 
#endif
# 368 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(double *ptr, double value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 368
{ } 
#endif
# 369 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(float2 *ptr, float2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 369
{ } 
#endif
# 370 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(float4 *ptr, float4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 370
{ } 
#endif
# 371 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcg(double2 *ptr, double2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 371
{ } 
#endif
# 375 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(long *ptr, long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 375
{ } 
#endif
# 376 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(unsigned long *ptr, unsigned long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 376
{ } 
#endif
# 378 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(char *ptr, char value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 378
{ } 
#endif
# 379 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(signed char *ptr, signed char value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 379
{ } 
#endif
# 380 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(short *ptr, short value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 380
{ } 
#endif
# 381 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(int *ptr, int value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 381
{ } 
#endif
# 382 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(long long *ptr, long long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 382
{ } 
#endif
# 383 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(char2 *ptr, char2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 383
{ } 
#endif
# 384 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(char4 *ptr, char4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 384
{ } 
#endif
# 385 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(short2 *ptr, short2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 385
{ } 
#endif
# 386 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(short4 *ptr, short4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 386
{ } 
#endif
# 387 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(int2 *ptr, int2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 387
{ } 
#endif
# 388 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(int4 *ptr, int4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 388
{ } 
#endif
# 389 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(longlong2 *ptr, longlong2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 389
{ } 
#endif
# 391 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(unsigned char *ptr, unsigned char value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 391
{ } 
#endif
# 392 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(unsigned short *ptr, unsigned short value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 392
{ } 
#endif
# 393 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(unsigned *ptr, unsigned value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 393
{ } 
#endif
# 394 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(unsigned long long *ptr, unsigned long long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 394
{ } 
#endif
# 395 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(uchar2 *ptr, uchar2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 395
{ } 
#endif
# 396 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(uchar4 *ptr, uchar4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 396
{ } 
#endif
# 397 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(ushort2 *ptr, ushort2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 397
{ } 
#endif
# 398 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(ushort4 *ptr, ushort4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 398
{ } 
#endif
# 399 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(uint2 *ptr, uint2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 399
{ } 
#endif
# 400 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(uint4 *ptr, uint4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 400
{ } 
#endif
# 401 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(ulonglong2 *ptr, ulonglong2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 401
{ } 
#endif
# 403 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(float *ptr, float value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 403
{ } 
#endif
# 404 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(double *ptr, double value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 404
{ } 
#endif
# 405 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(float2 *ptr, float2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 405
{ } 
#endif
# 406 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(float4 *ptr, float4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 406
{ } 
#endif
# 407 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stcs(double2 *ptr, double2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 407
{ } 
#endif
# 411 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(long *ptr, long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 411
{ } 
#endif
# 412 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(unsigned long *ptr, unsigned long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 412
{ } 
#endif
# 414 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(char *ptr, char value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 414
{ } 
#endif
# 415 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(signed char *ptr, signed char value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 415
{ } 
#endif
# 416 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(short *ptr, short value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 416
{ } 
#endif
# 417 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(int *ptr, int value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 417
{ } 
#endif
# 418 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(long long *ptr, long long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 418
{ } 
#endif
# 419 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(char2 *ptr, char2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 419
{ } 
#endif
# 420 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(char4 *ptr, char4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 420
{ } 
#endif
# 421 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(short2 *ptr, short2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 421
{ } 
#endif
# 422 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(short4 *ptr, short4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 422
{ } 
#endif
# 423 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(int2 *ptr, int2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 423
{ } 
#endif
# 424 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(int4 *ptr, int4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 424
{ } 
#endif
# 425 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(longlong2 *ptr, longlong2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 425
{ } 
#endif
# 427 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(unsigned char *ptr, unsigned char value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 427
{ } 
#endif
# 428 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(unsigned short *ptr, unsigned short value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 428
{ } 
#endif
# 429 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(unsigned *ptr, unsigned value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 429
{ } 
#endif
# 430 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(unsigned long long *ptr, unsigned long long value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 430
{ } 
#endif
# 431 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(uchar2 *ptr, uchar2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 431
{ } 
#endif
# 432 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(uchar4 *ptr, uchar4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 432
{ } 
#endif
# 433 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(ushort2 *ptr, ushort2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 433
{ } 
#endif
# 434 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(ushort4 *ptr, ushort4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 434
{ } 
#endif
# 435 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(uint2 *ptr, uint2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 435
{ } 
#endif
# 436 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(uint4 *ptr, uint4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 436
{ } 
#endif
# 437 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(ulonglong2 *ptr, ulonglong2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 437
{ } 
#endif
# 439 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(float *ptr, float value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 439
{ } 
#endif
# 440 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(double *ptr, double value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 440
{ } 
#endif
# 441 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(float2 *ptr, float2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 441
{ } 
#endif
# 442 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(float4 *ptr, float4 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 442
{ } 
#endif
# 443 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline void __stwt(double2 *ptr, double2 value) {int volatile ___ = 1;(void)ptr;(void)value;::exit(___);}
#if 0
# 443
{ } 
#endif
# 460 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned __funnelshift_l(unsigned lo, unsigned hi, unsigned shift) {int volatile ___ = 1;(void)lo;(void)hi;(void)shift;::exit(___);}
#if 0
# 460
{ } 
#endif
# 472 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned __funnelshift_lc(unsigned lo, unsigned hi, unsigned shift) {int volatile ___ = 1;(void)lo;(void)hi;(void)shift;::exit(___);}
#if 0
# 472
{ } 
#endif
# 485 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned __funnelshift_r(unsigned lo, unsigned hi, unsigned shift) {int volatile ___ = 1;(void)lo;(void)hi;(void)shift;::exit(___);}
#if 0
# 485
{ } 
#endif
# 497 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_32_intrinsics.h"
__attribute__((unused)) static inline unsigned __funnelshift_rc(unsigned lo, unsigned hi, unsigned shift) {int volatile ___ = 1;(void)lo;(void)hi;(void)shift;::exit(___);}
#if 0
# 497
{ } 
#endif
# 89 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_61_intrinsics.h"
__attribute__((unused)) static inline int __dp2a_lo(int srcA, int srcB, int c) {int volatile ___ = 1;(void)srcA;(void)srcB;(void)c;::exit(___);}
#if 0
# 89
{ } 
#endif
# 90 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_61_intrinsics.h"
__attribute__((unused)) static inline unsigned __dp2a_lo(unsigned srcA, unsigned srcB, unsigned c) {int volatile ___ = 1;(void)srcA;(void)srcB;(void)c;::exit(___);}
#if 0
# 90
{ } 
#endif
# 92 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_61_intrinsics.h"
__attribute__((unused)) static inline int __dp2a_lo(short2 srcA, char4 srcB, int c) {int volatile ___ = 1;(void)srcA;(void)srcB;(void)c;::exit(___);}
#if 0
# 92
{ } 
#endif
# 93 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_61_intrinsics.h"
__attribute__((unused)) static inline unsigned __dp2a_lo(ushort2 srcA, uchar4 srcB, unsigned c) {int volatile ___ = 1;(void)srcA;(void)srcB;(void)c;::exit(___);}
#if 0
# 93
{ } 
#endif
# 95 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_61_intrinsics.h"
__attribute__((unused)) static inline int __dp2a_hi(int srcA, int srcB, int c) {int volatile ___ = 1;(void)srcA;(void)srcB;(void)c;::exit(___);}
#if 0
# 95
{ } 
#endif
# 96 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_61_intrinsics.h"
__attribute__((unused)) static inline unsigned __dp2a_hi(unsigned srcA, unsigned srcB, unsigned c) {int volatile ___ = 1;(void)srcA;(void)srcB;(void)c;::exit(___);}
#if 0
# 96
{ } 
#endif
# 98 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_61_intrinsics.h"
__attribute__((unused)) static inline int __dp2a_hi(short2 srcA, char4 srcB, int c) {int volatile ___ = 1;(void)srcA;(void)srcB;(void)c;::exit(___);}
#if 0
# 98
{ } 
#endif
# 99 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_61_intrinsics.h"
__attribute__((unused)) static inline unsigned __dp2a_hi(ushort2 srcA, uchar4 srcB, unsigned c) {int volatile ___ = 1;(void)srcA;(void)srcB;(void)c;::exit(___);}
#if 0
# 99
{ } 
#endif
# 106 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_61_intrinsics.h"
__attribute__((unused)) static inline int __dp4a(int srcA, int srcB, int c) {int volatile ___ = 1;(void)srcA;(void)srcB;(void)c;::exit(___);}
#if 0
# 106
{ } 
#endif
# 107 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_61_intrinsics.h"
__attribute__((unused)) static inline unsigned __dp4a(unsigned srcA, unsigned srcB, unsigned c) {int volatile ___ = 1;(void)srcA;(void)srcB;(void)c;::exit(___);}
#if 0
# 107
{ } 
#endif
# 109 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_61_intrinsics.h"
__attribute__((unused)) static inline int __dp4a(char4 srcA, char4 srcB, int c) {int volatile ___ = 1;(void)srcA;(void)srcB;(void)c;::exit(___);}
#if 0
# 109
{ } 
#endif
# 110 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/sm_61_intrinsics.h"
__attribute__((unused)) static inline unsigned __dp4a(uchar4 srcA, uchar4 srcB, unsigned c) {int volatile ___ = 1;(void)srcA;(void)srcB;(void)c;::exit(___);}
#if 0
# 110
{ } 
#endif
# 93 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_any_sync(unsigned mask, unsigned value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 93
{ } 
#endif
# 94 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_any_sync(unsigned mask, int value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 94
{ } 
#endif
# 95 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_any_sync(unsigned mask, unsigned long value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 95
{ } 
#endif
# 96 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_any_sync(unsigned mask, long value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 96
{ } 
#endif
# 97 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_any_sync(unsigned mask, unsigned long long value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 97
{ } 
#endif
# 98 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_any_sync(unsigned mask, long long value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 98
{ } 
#endif
# 99 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_any_sync(unsigned mask, float value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 99
{ } 
#endif
# 100 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_any_sync(unsigned mask, double value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 100
{ } 
#endif
# 102 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_all_sync(unsigned mask, unsigned value, int *pred) {int volatile ___ = 1;(void)mask;(void)value;(void)pred;::exit(___);}
#if 0
# 102
{ } 
#endif
# 103 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_all_sync(unsigned mask, int value, int *pred) {int volatile ___ = 1;(void)mask;(void)value;(void)pred;::exit(___);}
#if 0
# 103
{ } 
#endif
# 104 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_all_sync(unsigned mask, unsigned long value, int *pred) {int volatile ___ = 1;(void)mask;(void)value;(void)pred;::exit(___);}
#if 0
# 104
{ } 
#endif
# 105 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_all_sync(unsigned mask, long value, int *pred) {int volatile ___ = 1;(void)mask;(void)value;(void)pred;::exit(___);}
#if 0
# 105
{ } 
#endif
# 106 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_all_sync(unsigned mask, unsigned long long value, int *pred) {int volatile ___ = 1;(void)mask;(void)value;(void)pred;::exit(___);}
#if 0
# 106
{ } 
#endif
# 107 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_all_sync(unsigned mask, long long value, int *pred) {int volatile ___ = 1;(void)mask;(void)value;(void)pred;::exit(___);}
#if 0
# 107
{ } 
#endif
# 108 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_all_sync(unsigned mask, float value, int *pred) {int volatile ___ = 1;(void)mask;(void)value;(void)pred;::exit(___);}
#if 0
# 108
{ } 
#endif
# 109 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned __match_all_sync(unsigned mask, double value, int *pred) {int volatile ___ = 1;(void)mask;(void)value;(void)pred;::exit(___);}
#if 0
# 109
{ } 
#endif
# 111 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline void __nanosleep(unsigned ns) {int volatile ___ = 1;(void)ns;::exit(___);}
#if 0
# 111
{ } 
#endif
# 113 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_70_rt.h"
__attribute__((unused)) static inline unsigned short atomicCAS(unsigned short *address, unsigned short compare, unsigned short val) {int volatile ___ = 1;(void)address;(void)compare;(void)val;::exit(___);}
#if 0
# 113
{ } 
#endif
# 93 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_80_rt.h"
__attribute__((unused)) static inline unsigned __reduce_add_sync(unsigned mask, unsigned value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 93
{ } 
#endif
# 94 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_80_rt.h"
__attribute__((unused)) static inline unsigned __reduce_min_sync(unsigned mask, unsigned value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 94
{ } 
#endif
# 95 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_80_rt.h"
__attribute__((unused)) static inline unsigned __reduce_max_sync(unsigned mask, unsigned value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 95
{ } 
#endif
# 97 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_80_rt.h"
__attribute__((unused)) static inline int __reduce_add_sync(unsigned mask, int value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 97
{ } 
#endif
# 98 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_80_rt.h"
__attribute__((unused)) static inline int __reduce_min_sync(unsigned mask, int value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 98
{ } 
#endif
# 99 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_80_rt.h"
__attribute__((unused)) static inline int __reduce_max_sync(unsigned mask, int value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 99
{ } 
#endif
# 101 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_80_rt.h"
__attribute__((unused)) static inline unsigned __reduce_and_sync(unsigned mask, unsigned value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 101
{ } 
#endif
# 102 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_80_rt.h"
__attribute__((unused)) static inline unsigned __reduce_or_sync(unsigned mask, unsigned value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 102
{ } 
#endif
# 103 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/sm_80_rt.h"
__attribute__((unused)) static inline unsigned __reduce_xor_sync(unsigned mask, unsigned value) {int volatile ___ = 1;(void)mask;(void)value;::exit(___);}
#if 0
# 103
{ } 
#endif
# 114 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 115
__attribute((always_inline)) __attribute__((unused)) static inline void surf1Dread(T *res, surface< void, 1>  surf, int x, int s, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 116
{int volatile ___ = 1;(void)res;(void)surf;(void)x;(void)s;(void)mode;
# 120
::exit(___);}
#if 0
# 116
{ 
# 120
} 
#endif
# 122 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 123
__attribute((always_inline)) __attribute__((unused)) static inline T surf1Dread(surface< void, 1>  surf, int x, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 124
{int volatile ___ = 1;(void)surf;(void)x;(void)mode;
# 130
::exit(___);}
#if 0
# 124
{ 
# 130
} 
#endif
# 132 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 133
__attribute((always_inline)) __attribute__((unused)) static inline void surf1Dread(T *res, surface< void, 1>  surf, int x, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 134
{int volatile ___ = 1;(void)res;(void)surf;(void)x;(void)mode;
# 138
::exit(___);}
#if 0
# 134
{ 
# 138
} 
#endif
# 141 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 142
__attribute((always_inline)) __attribute__((unused)) static inline void surf2Dread(T *res, surface< void, 2>  surf, int x, int y, int s, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 143
{int volatile ___ = 1;(void)res;(void)surf;(void)x;(void)y;(void)s;(void)mode;
# 147
::exit(___);}
#if 0
# 143
{ 
# 147
} 
#endif
# 149 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 150
__attribute((always_inline)) __attribute__((unused)) static inline T surf2Dread(surface< void, 2>  surf, int x, int y, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 151
{int volatile ___ = 1;(void)surf;(void)x;(void)y;(void)mode;
# 157
::exit(___);}
#if 0
# 151
{ 
# 157
} 
#endif
# 159 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 160
__attribute((always_inline)) __attribute__((unused)) static inline void surf2Dread(T *res, surface< void, 2>  surf, int x, int y, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 161
{int volatile ___ = 1;(void)res;(void)surf;(void)x;(void)y;(void)mode;
# 165
::exit(___);}
#if 0
# 161
{ 
# 165
} 
#endif
# 168 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 169
__attribute((always_inline)) __attribute__((unused)) static inline void surf3Dread(T *res, surface< void, 3>  surf, int x, int y, int z, int s, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 170
{int volatile ___ = 1;(void)res;(void)surf;(void)x;(void)y;(void)z;(void)s;(void)mode;
# 174
::exit(___);}
#if 0
# 170
{ 
# 174
} 
#endif
# 176 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 177
__attribute((always_inline)) __attribute__((unused)) static inline T surf3Dread(surface< void, 3>  surf, int x, int y, int z, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 178
{int volatile ___ = 1;(void)surf;(void)x;(void)y;(void)z;(void)mode;
# 184
::exit(___);}
#if 0
# 178
{ 
# 184
} 
#endif
# 186 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 187
__attribute((always_inline)) __attribute__((unused)) static inline void surf3Dread(T *res, surface< void, 3>  surf, int x, int y, int z, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 188
{int volatile ___ = 1;(void)res;(void)surf;(void)x;(void)y;(void)z;(void)mode;
# 192
::exit(___);}
#if 0
# 188
{ 
# 192
} 
#endif
# 196 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 197
__attribute((always_inline)) __attribute__((unused)) static inline void surf1DLayeredread(T *res, surface< void, 241>  surf, int x, int layer, int s, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 198
{int volatile ___ = 1;(void)res;(void)surf;(void)x;(void)layer;(void)s;(void)mode;
# 202
::exit(___);}
#if 0
# 198
{ 
# 202
} 
#endif
# 204 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 205
__attribute((always_inline)) __attribute__((unused)) static inline T surf1DLayeredread(surface< void, 241>  surf, int x, int layer, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 206
{int volatile ___ = 1;(void)surf;(void)x;(void)layer;(void)mode;
# 212
::exit(___);}
#if 0
# 206
{ 
# 212
} 
#endif
# 215 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 216
__attribute((always_inline)) __attribute__((unused)) static inline void surf1DLayeredread(T *res, surface< void, 241>  surf, int x, int layer, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 217
{int volatile ___ = 1;(void)res;(void)surf;(void)x;(void)layer;(void)mode;
# 221
::exit(___);}
#if 0
# 217
{ 
# 221
} 
#endif
# 224 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 225
__attribute((always_inline)) __attribute__((unused)) static inline void surf2DLayeredread(T *res, surface< void, 242>  surf, int x, int y, int layer, int s, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 226
{int volatile ___ = 1;(void)res;(void)surf;(void)x;(void)y;(void)layer;(void)s;(void)mode;
# 230
::exit(___);}
#if 0
# 226
{ 
# 230
} 
#endif
# 232 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 233
__attribute((always_inline)) __attribute__((unused)) static inline T surf2DLayeredread(surface< void, 242>  surf, int x, int y, int layer, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 234
{int volatile ___ = 1;(void)surf;(void)x;(void)y;(void)layer;(void)mode;
# 240
::exit(___);}
#if 0
# 234
{ 
# 240
} 
#endif
# 243 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 244
__attribute((always_inline)) __attribute__((unused)) static inline void surf2DLayeredread(T *res, surface< void, 242>  surf, int x, int y, int layer, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 245
{int volatile ___ = 1;(void)res;(void)surf;(void)x;(void)y;(void)layer;(void)mode;
# 249
::exit(___);}
#if 0
# 245
{ 
# 249
} 
#endif
# 252 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 253
__attribute((always_inline)) __attribute__((unused)) static inline void surfCubemapread(T *res, surface< void, 12>  surf, int x, int y, int face, int s, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 254
{int volatile ___ = 1;(void)res;(void)surf;(void)x;(void)y;(void)face;(void)s;(void)mode;
# 258
::exit(___);}
#if 0
# 254
{ 
# 258
} 
#endif
# 260 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 261
__attribute((always_inline)) __attribute__((unused)) static inline T surfCubemapread(surface< void, 12>  surf, int x, int y, int face, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 262
{int volatile ___ = 1;(void)surf;(void)x;(void)y;(void)face;(void)mode;
# 269
::exit(___);}
#if 0
# 262
{ 
# 269
} 
#endif
# 271 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 272
__attribute((always_inline)) __attribute__((unused)) static inline void surfCubemapread(T *res, surface< void, 12>  surf, int x, int y, int face, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 273
{int volatile ___ = 1;(void)res;(void)surf;(void)x;(void)y;(void)face;(void)mode;
# 277
::exit(___);}
#if 0
# 273
{ 
# 277
} 
#endif
# 280 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 281
__attribute((always_inline)) __attribute__((unused)) static inline void surfCubemapLayeredread(T *res, surface< void, 252>  surf, int x, int y, int layerFace, int s, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 282
{int volatile ___ = 1;(void)res;(void)surf;(void)x;(void)y;(void)layerFace;(void)s;(void)mode;
# 286
::exit(___);}
#if 0
# 282
{ 
# 286
} 
#endif
# 288 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 289
__attribute((always_inline)) __attribute__((unused)) static inline T surfCubemapLayeredread(surface< void, 252>  surf, int x, int y, int layerFace, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 290
{int volatile ___ = 1;(void)surf;(void)x;(void)y;(void)layerFace;(void)mode;
# 296
::exit(___);}
#if 0
# 290
{ 
# 296
} 
#endif
# 298 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 299
__attribute((always_inline)) __attribute__((unused)) static inline void surfCubemapLayeredread(T *res, surface< void, 252>  surf, int x, int y, int layerFace, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 300
{int volatile ___ = 1;(void)res;(void)surf;(void)x;(void)y;(void)layerFace;(void)mode;
# 304
::exit(___);}
#if 0
# 300
{ 
# 304
} 
#endif
# 307 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 308
__attribute((always_inline)) __attribute__((unused)) static inline void surf1Dwrite(T val, surface< void, 1>  surf, int x, int s, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 309
{int volatile ___ = 1;(void)val;(void)surf;(void)x;(void)s;(void)mode;
# 313
::exit(___);}
#if 0
# 309
{ 
# 313
} 
#endif
# 315 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 316
__attribute((always_inline)) __attribute__((unused)) static inline void surf1Dwrite(T val, surface< void, 1>  surf, int x, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 317
{int volatile ___ = 1;(void)val;(void)surf;(void)x;(void)mode;
# 321
::exit(___);}
#if 0
# 317
{ 
# 321
} 
#endif
# 325 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 326
__attribute((always_inline)) __attribute__((unused)) static inline void surf2Dwrite(T val, surface< void, 2>  surf, int x, int y, int s, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 327
{int volatile ___ = 1;(void)val;(void)surf;(void)x;(void)y;(void)s;(void)mode;
# 331
::exit(___);}
#if 0
# 327
{ 
# 331
} 
#endif
# 333 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 334
__attribute((always_inline)) __attribute__((unused)) static inline void surf2Dwrite(T val, surface< void, 2>  surf, int x, int y, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 335
{int volatile ___ = 1;(void)val;(void)surf;(void)x;(void)y;(void)mode;
# 339
::exit(___);}
#if 0
# 335
{ 
# 339
} 
#endif
# 342 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 343
__attribute((always_inline)) __attribute__((unused)) static inline void surf3Dwrite(T val, surface< void, 3>  surf, int x, int y, int z, int s, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 344
{int volatile ___ = 1;(void)val;(void)surf;(void)x;(void)y;(void)z;(void)s;(void)mode;
# 348
::exit(___);}
#if 0
# 344
{ 
# 348
} 
#endif
# 350 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 351
__attribute((always_inline)) __attribute__((unused)) static inline void surf3Dwrite(T val, surface< void, 3>  surf, int x, int y, int z, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 352
{int volatile ___ = 1;(void)val;(void)surf;(void)x;(void)y;(void)z;(void)mode;
# 356
::exit(___);}
#if 0
# 352
{ 
# 356
} 
#endif
# 359 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 360
__attribute((always_inline)) __attribute__((unused)) static inline void surf1DLayeredwrite(T val, surface< void, 241>  surf, int x, int layer, int s, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 361
{int volatile ___ = 1;(void)val;(void)surf;(void)x;(void)layer;(void)s;(void)mode;
# 365
::exit(___);}
#if 0
# 361
{ 
# 365
} 
#endif
# 367 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 368
__attribute((always_inline)) __attribute__((unused)) static inline void surf1DLayeredwrite(T val, surface< void, 241>  surf, int x, int layer, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 369
{int volatile ___ = 1;(void)val;(void)surf;(void)x;(void)layer;(void)mode;
# 373
::exit(___);}
#if 0
# 369
{ 
# 373
} 
#endif
# 376 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 377
__attribute((always_inline)) __attribute__((unused)) static inline void surf2DLayeredwrite(T val, surface< void, 242>  surf, int x, int y, int layer, int s, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 378
{int volatile ___ = 1;(void)val;(void)surf;(void)x;(void)y;(void)layer;(void)s;(void)mode;
# 382
::exit(___);}
#if 0
# 378
{ 
# 382
} 
#endif
# 384 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 385
__attribute((always_inline)) __attribute__((unused)) static inline void surf2DLayeredwrite(T val, surface< void, 242>  surf, int x, int y, int layer, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 386
{int volatile ___ = 1;(void)val;(void)surf;(void)x;(void)y;(void)layer;(void)mode;
# 390
::exit(___);}
#if 0
# 386
{ 
# 390
} 
#endif
# 393 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 394
__attribute((always_inline)) __attribute__((unused)) static inline void surfCubemapwrite(T val, surface< void, 12>  surf, int x, int y, int face, int s, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 395
{int volatile ___ = 1;(void)val;(void)surf;(void)x;(void)y;(void)face;(void)s;(void)mode;
# 399
::exit(___);}
#if 0
# 395
{ 
# 399
} 
#endif
# 401 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 402
__attribute((always_inline)) __attribute__((unused)) static inline void surfCubemapwrite(T val, surface< void, 12>  surf, int x, int y, int face, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 403
{int volatile ___ = 1;(void)val;(void)surf;(void)x;(void)y;(void)face;(void)mode;
# 407
::exit(___);}
#if 0
# 403
{ 
# 407
} 
#endif
# 411 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 412
__attribute((always_inline)) __attribute__((unused)) static inline void surfCubemapLayeredwrite(T val, surface< void, 252>  surf, int x, int y, int layerFace, int s, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 413
{int volatile ___ = 1;(void)val;(void)surf;(void)x;(void)y;(void)layerFace;(void)s;(void)mode;
# 417
::exit(___);}
#if 0
# 413
{ 
# 417
} 
#endif
# 419 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_functions.h"
template< class T> 
# 420
__attribute((always_inline)) __attribute__((unused)) static inline void surfCubemapLayeredwrite(T val, surface< void, 252>  surf, int x, int y, int layerFace, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 421
{int volatile ___ = 1;(void)val;(void)surf;(void)x;(void)y;(void)layerFace;(void)mode;
# 425
::exit(___);}
#if 0
# 421
{ 
# 425
} 
#endif
# 66 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 67
struct __nv_tex_rmet_ret { }; 
# 69
template<> struct __nv_tex_rmet_ret< char>  { typedef char type; }; 
# 70
template<> struct __nv_tex_rmet_ret< signed char>  { typedef signed char type; }; 
# 71
template<> struct __nv_tex_rmet_ret< unsigned char>  { typedef unsigned char type; }; 
# 72
template<> struct __nv_tex_rmet_ret< char1>  { typedef char1 type; }; 
# 73
template<> struct __nv_tex_rmet_ret< uchar1>  { typedef uchar1 type; }; 
# 74
template<> struct __nv_tex_rmet_ret< char2>  { typedef char2 type; }; 
# 75
template<> struct __nv_tex_rmet_ret< uchar2>  { typedef uchar2 type; }; 
# 76
template<> struct __nv_tex_rmet_ret< char4>  { typedef char4 type; }; 
# 77
template<> struct __nv_tex_rmet_ret< uchar4>  { typedef uchar4 type; }; 
# 79
template<> struct __nv_tex_rmet_ret< short>  { typedef short type; }; 
# 80
template<> struct __nv_tex_rmet_ret< unsigned short>  { typedef unsigned short type; }; 
# 81
template<> struct __nv_tex_rmet_ret< short1>  { typedef short1 type; }; 
# 82
template<> struct __nv_tex_rmet_ret< ushort1>  { typedef ushort1 type; }; 
# 83
template<> struct __nv_tex_rmet_ret< short2>  { typedef short2 type; }; 
# 84
template<> struct __nv_tex_rmet_ret< ushort2>  { typedef ushort2 type; }; 
# 85
template<> struct __nv_tex_rmet_ret< short4>  { typedef short4 type; }; 
# 86
template<> struct __nv_tex_rmet_ret< ushort4>  { typedef ushort4 type; }; 
# 88
template<> struct __nv_tex_rmet_ret< int>  { typedef int type; }; 
# 89
template<> struct __nv_tex_rmet_ret< unsigned>  { typedef unsigned type; }; 
# 90
template<> struct __nv_tex_rmet_ret< int1>  { typedef int1 type; }; 
# 91
template<> struct __nv_tex_rmet_ret< uint1>  { typedef uint1 type; }; 
# 92
template<> struct __nv_tex_rmet_ret< int2>  { typedef int2 type; }; 
# 93
template<> struct __nv_tex_rmet_ret< uint2>  { typedef uint2 type; }; 
# 94
template<> struct __nv_tex_rmet_ret< int4>  { typedef int4 type; }; 
# 95
template<> struct __nv_tex_rmet_ret< uint4>  { typedef uint4 type; }; 
# 107 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template<> struct __nv_tex_rmet_ret< float>  { typedef float type; }; 
# 108
template<> struct __nv_tex_rmet_ret< float1>  { typedef float1 type; }; 
# 109
template<> struct __nv_tex_rmet_ret< float2>  { typedef float2 type; }; 
# 110
template<> struct __nv_tex_rmet_ret< float4>  { typedef float4 type; }; 
# 113
template< class T> struct __nv_tex_rmet_cast { typedef T *type; }; 
# 125 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 126
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex1Dfetch(texture< T, 1, cudaReadModeElementType>  t, int x) 
# 127
{int volatile ___ = 1;(void)t;(void)x;
# 133
::exit(___);}
#if 0
# 127
{ 
# 133
} 
#endif
# 135 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 136
struct __nv_tex_rmnf_ret { }; 
# 138
template<> struct __nv_tex_rmnf_ret< char>  { typedef float type; }; 
# 139
template<> struct __nv_tex_rmnf_ret< signed char>  { typedef float type; }; 
# 140
template<> struct __nv_tex_rmnf_ret< unsigned char>  { typedef float type; }; 
# 141
template<> struct __nv_tex_rmnf_ret< short>  { typedef float type; }; 
# 142
template<> struct __nv_tex_rmnf_ret< unsigned short>  { typedef float type; }; 
# 143
template<> struct __nv_tex_rmnf_ret< char1>  { typedef float1 type; }; 
# 144
template<> struct __nv_tex_rmnf_ret< uchar1>  { typedef float1 type; }; 
# 145
template<> struct __nv_tex_rmnf_ret< short1>  { typedef float1 type; }; 
# 146
template<> struct __nv_tex_rmnf_ret< ushort1>  { typedef float1 type; }; 
# 147
template<> struct __nv_tex_rmnf_ret< char2>  { typedef float2 type; }; 
# 148
template<> struct __nv_tex_rmnf_ret< uchar2>  { typedef float2 type; }; 
# 149
template<> struct __nv_tex_rmnf_ret< short2>  { typedef float2 type; }; 
# 150
template<> struct __nv_tex_rmnf_ret< ushort2>  { typedef float2 type; }; 
# 151
template<> struct __nv_tex_rmnf_ret< char4>  { typedef float4 type; }; 
# 152
template<> struct __nv_tex_rmnf_ret< uchar4>  { typedef float4 type; }; 
# 153
template<> struct __nv_tex_rmnf_ret< short4>  { typedef float4 type; }; 
# 154
template<> struct __nv_tex_rmnf_ret< ushort4>  { typedef float4 type; }; 
# 156
template< class T> 
# 157
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex1Dfetch(texture< T, 1, cudaReadModeNormalizedFloat>  t, int x) 
# 158
{int volatile ___ = 1;(void)t;(void)x;
# 165
::exit(___);}
#if 0
# 158
{ 
# 165
} 
#endif
# 168 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 169
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex1D(texture< T, 1, cudaReadModeElementType>  t, float x) 
# 170
{int volatile ___ = 1;(void)t;(void)x;
# 176
::exit(___);}
#if 0
# 170
{ 
# 176
} 
#endif
# 178 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 179
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex1D(texture< T, 1, cudaReadModeNormalizedFloat>  t, float x) 
# 180
{int volatile ___ = 1;(void)t;(void)x;
# 187
::exit(___);}
#if 0
# 180
{ 
# 187
} 
#endif
# 191 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 192
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex2D(texture< T, 2, cudaReadModeElementType>  t, float x, float y) 
# 193
{int volatile ___ = 1;(void)t;(void)x;(void)y;
# 200
::exit(___);}
#if 0
# 193
{ 
# 200
} 
#endif
# 202 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 203
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex2D(texture< T, 2, cudaReadModeNormalizedFloat>  t, float x, float y) 
# 204
{int volatile ___ = 1;(void)t;(void)x;(void)y;
# 211
::exit(___);}
#if 0
# 204
{ 
# 211
} 
#endif
# 215 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 216
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex1DLayered(texture< T, 241, cudaReadModeElementType>  t, float x, int layer) 
# 217
{int volatile ___ = 1;(void)t;(void)x;(void)layer;
# 223
::exit(___);}
#if 0
# 217
{ 
# 223
} 
#endif
# 225 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 226
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex1DLayered(texture< T, 241, cudaReadModeNormalizedFloat>  t, float x, int layer) 
# 227
{int volatile ___ = 1;(void)t;(void)x;(void)layer;
# 234
::exit(___);}
#if 0
# 227
{ 
# 234
} 
#endif
# 238 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 239
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex2DLayered(texture< T, 242, cudaReadModeElementType>  t, float x, float y, int layer) 
# 240
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)layer;
# 246
::exit(___);}
#if 0
# 240
{ 
# 246
} 
#endif
# 248 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 249
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex2DLayered(texture< T, 242, cudaReadModeNormalizedFloat>  t, float x, float y, int layer) 
# 250
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)layer;
# 257
::exit(___);}
#if 0
# 250
{ 
# 257
} 
#endif
# 260 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 261
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex3D(texture< T, 3, cudaReadModeElementType>  t, float x, float y, float z) 
# 262
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;
# 268
::exit(___);}
#if 0
# 262
{ 
# 268
} 
#endif
# 270 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 271
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex3D(texture< T, 3, cudaReadModeNormalizedFloat>  t, float x, float y, float z) 
# 272
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;
# 279
::exit(___);}
#if 0
# 272
{ 
# 279
} 
#endif
# 282 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 283
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type texCubemap(texture< T, 12, cudaReadModeElementType>  t, float x, float y, float z) 
# 284
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;
# 290
::exit(___);}
#if 0
# 284
{ 
# 290
} 
#endif
# 292 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 293
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type texCubemap(texture< T, 12, cudaReadModeNormalizedFloat>  t, float x, float y, float z) 
# 294
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;
# 301
::exit(___);}
#if 0
# 294
{ 
# 301
} 
#endif
# 304 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 305
struct __nv_tex2dgather_ret { }; 
# 306
template<> struct __nv_tex2dgather_ret< char>  { typedef char4 type; }; 
# 307
template<> struct __nv_tex2dgather_ret< signed char>  { typedef char4 type; }; 
# 308
template<> struct __nv_tex2dgather_ret< char1>  { typedef char4 type; }; 
# 309
template<> struct __nv_tex2dgather_ret< char2>  { typedef char4 type; }; 
# 310
template<> struct __nv_tex2dgather_ret< char3>  { typedef char4 type; }; 
# 311
template<> struct __nv_tex2dgather_ret< char4>  { typedef char4 type; }; 
# 312
template<> struct __nv_tex2dgather_ret< unsigned char>  { typedef uchar4 type; }; 
# 313
template<> struct __nv_tex2dgather_ret< uchar1>  { typedef uchar4 type; }; 
# 314
template<> struct __nv_tex2dgather_ret< uchar2>  { typedef uchar4 type; }; 
# 315
template<> struct __nv_tex2dgather_ret< uchar3>  { typedef uchar4 type; }; 
# 316
template<> struct __nv_tex2dgather_ret< uchar4>  { typedef uchar4 type; }; 
# 318
template<> struct __nv_tex2dgather_ret< short>  { typedef short4 type; }; 
# 319
template<> struct __nv_tex2dgather_ret< short1>  { typedef short4 type; }; 
# 320
template<> struct __nv_tex2dgather_ret< short2>  { typedef short4 type; }; 
# 321
template<> struct __nv_tex2dgather_ret< short3>  { typedef short4 type; }; 
# 322
template<> struct __nv_tex2dgather_ret< short4>  { typedef short4 type; }; 
# 323
template<> struct __nv_tex2dgather_ret< unsigned short>  { typedef ushort4 type; }; 
# 324
template<> struct __nv_tex2dgather_ret< ushort1>  { typedef ushort4 type; }; 
# 325
template<> struct __nv_tex2dgather_ret< ushort2>  { typedef ushort4 type; }; 
# 326
template<> struct __nv_tex2dgather_ret< ushort3>  { typedef ushort4 type; }; 
# 327
template<> struct __nv_tex2dgather_ret< ushort4>  { typedef ushort4 type; }; 
# 329
template<> struct __nv_tex2dgather_ret< int>  { typedef int4 type; }; 
# 330
template<> struct __nv_tex2dgather_ret< int1>  { typedef int4 type; }; 
# 331
template<> struct __nv_tex2dgather_ret< int2>  { typedef int4 type; }; 
# 332
template<> struct __nv_tex2dgather_ret< int3>  { typedef int4 type; }; 
# 333
template<> struct __nv_tex2dgather_ret< int4>  { typedef int4 type; }; 
# 334
template<> struct __nv_tex2dgather_ret< unsigned>  { typedef uint4 type; }; 
# 335
template<> struct __nv_tex2dgather_ret< uint1>  { typedef uint4 type; }; 
# 336
template<> struct __nv_tex2dgather_ret< uint2>  { typedef uint4 type; }; 
# 337
template<> struct __nv_tex2dgather_ret< uint3>  { typedef uint4 type; }; 
# 338
template<> struct __nv_tex2dgather_ret< uint4>  { typedef uint4 type; }; 
# 340
template<> struct __nv_tex2dgather_ret< float>  { typedef float4 type; }; 
# 341
template<> struct __nv_tex2dgather_ret< float1>  { typedef float4 type; }; 
# 342
template<> struct __nv_tex2dgather_ret< float2>  { typedef float4 type; }; 
# 343
template<> struct __nv_tex2dgather_ret< float3>  { typedef float4 type; }; 
# 344
template<> struct __nv_tex2dgather_ret< float4>  { typedef float4 type; }; 
# 346
template< class T> 
# 347
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex2dgather_ret< T> ::type tex2Dgather(texture< T, 2, cudaReadModeElementType>  t, float x, float y, int comp = 0) 
# 348
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)comp;
# 355
::exit(___);}
#if 0
# 348
{ 
# 355
} 
#endif
# 358 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> struct __nv_tex2dgather_rmnf_ret { }; 
# 359
template<> struct __nv_tex2dgather_rmnf_ret< char>  { typedef float4 type; }; 
# 360
template<> struct __nv_tex2dgather_rmnf_ret< signed char>  { typedef float4 type; }; 
# 361
template<> struct __nv_tex2dgather_rmnf_ret< unsigned char>  { typedef float4 type; }; 
# 362
template<> struct __nv_tex2dgather_rmnf_ret< char1>  { typedef float4 type; }; 
# 363
template<> struct __nv_tex2dgather_rmnf_ret< uchar1>  { typedef float4 type; }; 
# 364
template<> struct __nv_tex2dgather_rmnf_ret< char2>  { typedef float4 type; }; 
# 365
template<> struct __nv_tex2dgather_rmnf_ret< uchar2>  { typedef float4 type; }; 
# 366
template<> struct __nv_tex2dgather_rmnf_ret< char3>  { typedef float4 type; }; 
# 367
template<> struct __nv_tex2dgather_rmnf_ret< uchar3>  { typedef float4 type; }; 
# 368
template<> struct __nv_tex2dgather_rmnf_ret< char4>  { typedef float4 type; }; 
# 369
template<> struct __nv_tex2dgather_rmnf_ret< uchar4>  { typedef float4 type; }; 
# 370
template<> struct __nv_tex2dgather_rmnf_ret< signed short>  { typedef float4 type; }; 
# 371
template<> struct __nv_tex2dgather_rmnf_ret< unsigned short>  { typedef float4 type; }; 
# 372
template<> struct __nv_tex2dgather_rmnf_ret< short1>  { typedef float4 type; }; 
# 373
template<> struct __nv_tex2dgather_rmnf_ret< ushort1>  { typedef float4 type; }; 
# 374
template<> struct __nv_tex2dgather_rmnf_ret< short2>  { typedef float4 type; }; 
# 375
template<> struct __nv_tex2dgather_rmnf_ret< ushort2>  { typedef float4 type; }; 
# 376
template<> struct __nv_tex2dgather_rmnf_ret< short3>  { typedef float4 type; }; 
# 377
template<> struct __nv_tex2dgather_rmnf_ret< ushort3>  { typedef float4 type; }; 
# 378
template<> struct __nv_tex2dgather_rmnf_ret< short4>  { typedef float4 type; }; 
# 379
template<> struct __nv_tex2dgather_rmnf_ret< ushort4>  { typedef float4 type; }; 
# 381
template< class T> 
# 382
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex2dgather_rmnf_ret< T> ::type tex2Dgather(texture< T, 2, cudaReadModeNormalizedFloat>  t, float x, float y, int comp = 0) 
# 383
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)comp;
# 390
::exit(___);}
#if 0
# 383
{ 
# 390
} 
#endif
# 394 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 395
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex1DLod(texture< T, 1, cudaReadModeElementType>  t, float x, float level) 
# 396
{int volatile ___ = 1;(void)t;(void)x;(void)level;
# 402
::exit(___);}
#if 0
# 396
{ 
# 402
} 
#endif
# 404 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 405
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex1DLod(texture< T, 1, cudaReadModeNormalizedFloat>  t, float x, float level) 
# 406
{int volatile ___ = 1;(void)t;(void)x;(void)level;
# 413
::exit(___);}
#if 0
# 406
{ 
# 413
} 
#endif
# 416 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 417
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex2DLod(texture< T, 2, cudaReadModeElementType>  t, float x, float y, float level) 
# 418
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)level;
# 424
::exit(___);}
#if 0
# 418
{ 
# 424
} 
#endif
# 426 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 427
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex2DLod(texture< T, 2, cudaReadModeNormalizedFloat>  t, float x, float y, float level) 
# 428
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)level;
# 435
::exit(___);}
#if 0
# 428
{ 
# 435
} 
#endif
# 438 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 439
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex1DLayeredLod(texture< T, 241, cudaReadModeElementType>  t, float x, int layer, float level) 
# 440
{int volatile ___ = 1;(void)t;(void)x;(void)layer;(void)level;
# 446
::exit(___);}
#if 0
# 440
{ 
# 446
} 
#endif
# 448 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 449
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex1DLayeredLod(texture< T, 241, cudaReadModeNormalizedFloat>  t, float x, int layer, float level) 
# 450
{int volatile ___ = 1;(void)t;(void)x;(void)layer;(void)level;
# 457
::exit(___);}
#if 0
# 450
{ 
# 457
} 
#endif
# 460 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 461
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex2DLayeredLod(texture< T, 242, cudaReadModeElementType>  t, float x, float y, int layer, float level) 
# 462
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)layer;(void)level;
# 468
::exit(___);}
#if 0
# 462
{ 
# 468
} 
#endif
# 470 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 471
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex2DLayeredLod(texture< T, 242, cudaReadModeNormalizedFloat>  t, float x, float y, int layer, float level) 
# 472
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)layer;(void)level;
# 479
::exit(___);}
#if 0
# 472
{ 
# 479
} 
#endif
# 482 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 483
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex3DLod(texture< T, 3, cudaReadModeElementType>  t, float x, float y, float z, float level) 
# 484
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;(void)level;
# 490
::exit(___);}
#if 0
# 484
{ 
# 490
} 
#endif
# 492 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 493
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex3DLod(texture< T, 3, cudaReadModeNormalizedFloat>  t, float x, float y, float z, float level) 
# 494
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;(void)level;
# 501
::exit(___);}
#if 0
# 494
{ 
# 501
} 
#endif
# 504 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 505
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type texCubemapLod(texture< T, 12, cudaReadModeElementType>  t, float x, float y, float z, float level) 
# 506
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;(void)level;
# 512
::exit(___);}
#if 0
# 506
{ 
# 512
} 
#endif
# 514 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 515
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type texCubemapLod(texture< T, 12, cudaReadModeNormalizedFloat>  t, float x, float y, float z, float level) 
# 516
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;(void)level;
# 523
::exit(___);}
#if 0
# 516
{ 
# 523
} 
#endif
# 527 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 528
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type texCubemapLayered(texture< T, 252, cudaReadModeElementType>  t, float x, float y, float z, int layer) 
# 529
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;(void)layer;
# 535
::exit(___);}
#if 0
# 529
{ 
# 535
} 
#endif
# 537 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 538
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type texCubemapLayered(texture< T, 252, cudaReadModeNormalizedFloat>  t, float x, float y, float z, int layer) 
# 539
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;(void)layer;
# 546
::exit(___);}
#if 0
# 539
{ 
# 546
} 
#endif
# 550 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 551
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type texCubemapLayeredLod(texture< T, 252, cudaReadModeElementType>  t, float x, float y, float z, int layer, float level) 
# 552
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;(void)layer;(void)level;
# 558
::exit(___);}
#if 0
# 552
{ 
# 558
} 
#endif
# 560 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 561
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type texCubemapLayeredLod(texture< T, 252, cudaReadModeNormalizedFloat>  t, float x, float y, float z, int layer, float level) 
# 562
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;(void)layer;(void)level;
# 569
::exit(___);}
#if 0
# 562
{ 
# 569
} 
#endif
# 573 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 574
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type texCubemapGrad(texture< T, 12, cudaReadModeElementType>  t, float x, float y, float z, float4 dPdx, float4 dPdy) 
# 575
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;(void)dPdx;(void)dPdy;
# 581
::exit(___);}
#if 0
# 575
{ 
# 581
} 
#endif
# 583 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 584
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type texCubemapGrad(texture< T, 12, cudaReadModeNormalizedFloat>  t, float x, float y, float z, float4 dPdx, float4 dPdy) 
# 585
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;(void)dPdx;(void)dPdy;
# 592
::exit(___);}
#if 0
# 585
{ 
# 592
} 
#endif
# 596 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 597
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type texCubemapLayeredGrad(texture< T, 252, cudaReadModeElementType>  t, float x, float y, float z, int layer, float4 dPdx, float4 dPdy) 
# 598
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;(void)layer;(void)dPdx;(void)dPdy;
# 604
::exit(___);}
#if 0
# 598
{ 
# 604
} 
#endif
# 606 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 607
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type texCubemapLayeredGrad(texture< T, 252, cudaReadModeNormalizedFloat>  t, float x, float y, float z, int layer, float4 dPdx, float4 dPdy) 
# 608
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;(void)layer;(void)dPdx;(void)dPdy;
# 615
::exit(___);}
#if 0
# 608
{ 
# 615
} 
#endif
# 619 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 620
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex1DGrad(texture< T, 1, cudaReadModeElementType>  t, float x, float dPdx, float dPdy) 
# 621
{int volatile ___ = 1;(void)t;(void)x;(void)dPdx;(void)dPdy;
# 627
::exit(___);}
#if 0
# 621
{ 
# 627
} 
#endif
# 629 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 630
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex1DGrad(texture< T, 1, cudaReadModeNormalizedFloat>  t, float x, float dPdx, float dPdy) 
# 631
{int volatile ___ = 1;(void)t;(void)x;(void)dPdx;(void)dPdy;
# 638
::exit(___);}
#if 0
# 631
{ 
# 638
} 
#endif
# 642 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 643
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex2DGrad(texture< T, 2, cudaReadModeElementType>  t, float x, float y, float2 dPdx, float2 dPdy) 
# 644
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)dPdx;(void)dPdy;
# 650
::exit(___);}
#if 0
# 644
{ 
# 650
} 
#endif
# 652 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 653
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex2DGrad(texture< T, 2, cudaReadModeNormalizedFloat>  t, float x, float y, float2 dPdx, float2 dPdy) 
# 654
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)dPdx;(void)dPdy;
# 661
::exit(___);}
#if 0
# 654
{ 
# 661
} 
#endif
# 664 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 665
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex1DLayeredGrad(texture< T, 241, cudaReadModeElementType>  t, float x, int layer, float dPdx, float dPdy) 
# 666
{int volatile ___ = 1;(void)t;(void)x;(void)layer;(void)dPdx;(void)dPdy;
# 672
::exit(___);}
#if 0
# 666
{ 
# 672
} 
#endif
# 674 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 675
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex1DLayeredGrad(texture< T, 241, cudaReadModeNormalizedFloat>  t, float x, int layer, float dPdx, float dPdy) 
# 676
{int volatile ___ = 1;(void)t;(void)x;(void)layer;(void)dPdx;(void)dPdy;
# 683
::exit(___);}
#if 0
# 676
{ 
# 683
} 
#endif
# 686 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 687
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex2DLayeredGrad(texture< T, 242, cudaReadModeElementType>  t, float x, float y, int layer, float2 dPdx, float2 dPdy) 
# 688
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)layer;(void)dPdx;(void)dPdy;
# 694
::exit(___);}
#if 0
# 688
{ 
# 694
} 
#endif
# 696 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 697
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex2DLayeredGrad(texture< T, 242, cudaReadModeNormalizedFloat>  t, float x, float y, int layer, float2 dPdx, float2 dPdy) 
# 698
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)layer;(void)dPdx;(void)dPdy;
# 705
::exit(___);}
#if 0
# 698
{ 
# 705
} 
#endif
# 708 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 709
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmet_ret< T> ::type tex3DGrad(texture< T, 3, cudaReadModeElementType>  t, float x, float y, float z, float4 dPdx, float4 dPdy) 
# 710
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;(void)dPdx;(void)dPdy;
# 716
::exit(___);}
#if 0
# 710
{ 
# 716
} 
#endif
# 718 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_fetch_functions.h"
template< class T> 
# 719
__attribute((always_inline)) __attribute__((unused)) static inline typename __nv_tex_rmnf_ret< T> ::type tex3DGrad(texture< T, 3, cudaReadModeNormalizedFloat>  t, float x, float y, float z, float4 dPdx, float4 dPdy) 
# 720
{int volatile ___ = 1;(void)t;(void)x;(void)y;(void)z;(void)dPdx;(void)dPdy;
# 727
::exit(___);}
#if 0
# 720
{ 
# 727
} 
#endif
# 60 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> struct __nv_itex_trait { }; 
# 61
template<> struct __nv_itex_trait< char>  { typedef void type; }; 
# 62
template<> struct __nv_itex_trait< signed char>  { typedef void type; }; 
# 63
template<> struct __nv_itex_trait< char1>  { typedef void type; }; 
# 64
template<> struct __nv_itex_trait< char2>  { typedef void type; }; 
# 65
template<> struct __nv_itex_trait< char4>  { typedef void type; }; 
# 66
template<> struct __nv_itex_trait< unsigned char>  { typedef void type; }; 
# 67
template<> struct __nv_itex_trait< uchar1>  { typedef void type; }; 
# 68
template<> struct __nv_itex_trait< uchar2>  { typedef void type; }; 
# 69
template<> struct __nv_itex_trait< uchar4>  { typedef void type; }; 
# 70
template<> struct __nv_itex_trait< short>  { typedef void type; }; 
# 71
template<> struct __nv_itex_trait< short1>  { typedef void type; }; 
# 72
template<> struct __nv_itex_trait< short2>  { typedef void type; }; 
# 73
template<> struct __nv_itex_trait< short4>  { typedef void type; }; 
# 74
template<> struct __nv_itex_trait< unsigned short>  { typedef void type; }; 
# 75
template<> struct __nv_itex_trait< ushort1>  { typedef void type; }; 
# 76
template<> struct __nv_itex_trait< ushort2>  { typedef void type; }; 
# 77
template<> struct __nv_itex_trait< ushort4>  { typedef void type; }; 
# 78
template<> struct __nv_itex_trait< int>  { typedef void type; }; 
# 79
template<> struct __nv_itex_trait< int1>  { typedef void type; }; 
# 80
template<> struct __nv_itex_trait< int2>  { typedef void type; }; 
# 81
template<> struct __nv_itex_trait< int4>  { typedef void type; }; 
# 82
template<> struct __nv_itex_trait< unsigned>  { typedef void type; }; 
# 83
template<> struct __nv_itex_trait< uint1>  { typedef void type; }; 
# 84
template<> struct __nv_itex_trait< uint2>  { typedef void type; }; 
# 85
template<> struct __nv_itex_trait< uint4>  { typedef void type; }; 
# 96 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template<> struct __nv_itex_trait< float>  { typedef void type; }; 
# 97
template<> struct __nv_itex_trait< float1>  { typedef void type; }; 
# 98
template<> struct __nv_itex_trait< float2>  { typedef void type; }; 
# 99
template<> struct __nv_itex_trait< float4>  { typedef void type; }; 
# 103
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 104
tex1Dfetch(T *ptr, cudaTextureObject_t obj, int x) 
# 105
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;
# 109
::exit(___);}
#if 0
# 105
{ 
# 109
} 
#endif
# 111 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 112
tex1Dfetch(cudaTextureObject_t texObject, int x) 
# 113
{int volatile ___ = 1;(void)texObject;(void)x;
# 119
::exit(___);}
#if 0
# 113
{ 
# 119
} 
#endif
# 121 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 122
tex1D(T *ptr, cudaTextureObject_t obj, float x) 
# 123
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;
# 127
::exit(___);}
#if 0
# 123
{ 
# 127
} 
#endif
# 130 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 131
tex1D(cudaTextureObject_t texObject, float x) 
# 132
{int volatile ___ = 1;(void)texObject;(void)x;
# 138
::exit(___);}
#if 0
# 132
{ 
# 138
} 
#endif
# 141 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 142
tex2D(T *ptr, cudaTextureObject_t obj, float x, float y) 
# 143
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;
# 147
::exit(___);}
#if 0
# 143
{ 
# 147
} 
#endif
# 149 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 150
tex2D(cudaTextureObject_t texObject, float x, float y) 
# 151
{int volatile ___ = 1;(void)texObject;(void)x;(void)y;
# 157
::exit(___);}
#if 0
# 151
{ 
# 157
} 
#endif
# 159 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 160
tex3D(T *ptr, cudaTextureObject_t obj, float x, float y, float z) 
# 161
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)z;
# 165
::exit(___);}
#if 0
# 161
{ 
# 165
} 
#endif
# 167 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 168
tex3D(cudaTextureObject_t texObject, float x, float y, float z) 
# 169
{int volatile ___ = 1;(void)texObject;(void)x;(void)y;(void)z;
# 175
::exit(___);}
#if 0
# 169
{ 
# 175
} 
#endif
# 177 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 178
tex1DLayered(T *ptr, cudaTextureObject_t obj, float x, int layer) 
# 179
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)layer;
# 183
::exit(___);}
#if 0
# 179
{ 
# 183
} 
#endif
# 185 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 186
tex1DLayered(cudaTextureObject_t texObject, float x, int layer) 
# 187
{int volatile ___ = 1;(void)texObject;(void)x;(void)layer;
# 193
::exit(___);}
#if 0
# 187
{ 
# 193
} 
#endif
# 195 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 196
tex2DLayered(T *ptr, cudaTextureObject_t obj, float x, float y, int layer) 
# 197
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)layer;
# 201
::exit(___);}
#if 0
# 197
{ 
# 201
} 
#endif
# 203 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 204
tex2DLayered(cudaTextureObject_t texObject, float x, float y, int layer) 
# 205
{int volatile ___ = 1;(void)texObject;(void)x;(void)y;(void)layer;
# 211
::exit(___);}
#if 0
# 205
{ 
# 211
} 
#endif
# 214 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 215
texCubemap(T *ptr, cudaTextureObject_t obj, float x, float y, float z) 
# 216
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)z;
# 220
::exit(___);}
#if 0
# 216
{ 
# 220
} 
#endif
# 223 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 224
texCubemap(cudaTextureObject_t texObject, float x, float y, float z) 
# 225
{int volatile ___ = 1;(void)texObject;(void)x;(void)y;(void)z;
# 231
::exit(___);}
#if 0
# 225
{ 
# 231
} 
#endif
# 234 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 235
texCubemapLayered(T *ptr, cudaTextureObject_t obj, float x, float y, float z, int layer) 
# 236
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)z;(void)layer;
# 240
::exit(___);}
#if 0
# 236
{ 
# 240
} 
#endif
# 242 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 243
texCubemapLayered(cudaTextureObject_t texObject, float x, float y, float z, int layer) 
# 244
{int volatile ___ = 1;(void)texObject;(void)x;(void)y;(void)z;(void)layer;
# 250
::exit(___);}
#if 0
# 244
{ 
# 250
} 
#endif
# 252 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 253
tex2Dgather(T *ptr, cudaTextureObject_t obj, float x, float y, int comp = 0) 
# 254
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)comp;
# 258
::exit(___);}
#if 0
# 254
{ 
# 258
} 
#endif
# 260 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 261
tex2Dgather(cudaTextureObject_t to, float x, float y, int comp = 0) 
# 262
{int volatile ___ = 1;(void)to;(void)x;(void)y;(void)comp;
# 268
::exit(___);}
#if 0
# 262
{ 
# 268
} 
#endif
# 272 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 273
tex1DLod(T *ptr, cudaTextureObject_t obj, float x, float level) 
# 274
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)level;
# 278
::exit(___);}
#if 0
# 274
{ 
# 278
} 
#endif
# 280 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 281
tex1DLod(cudaTextureObject_t texObject, float x, float level) 
# 282
{int volatile ___ = 1;(void)texObject;(void)x;(void)level;
# 288
::exit(___);}
#if 0
# 282
{ 
# 288
} 
#endif
# 291 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 292
tex2DLod(T *ptr, cudaTextureObject_t obj, float x, float y, float level) 
# 293
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)level;
# 297
::exit(___);}
#if 0
# 293
{ 
# 297
} 
#endif
# 299 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 300
tex2DLod(cudaTextureObject_t texObject, float x, float y, float level) 
# 301
{int volatile ___ = 1;(void)texObject;(void)x;(void)y;(void)level;
# 307
::exit(___);}
#if 0
# 301
{ 
# 307
} 
#endif
# 310 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 311
tex3DLod(T *ptr, cudaTextureObject_t obj, float x, float y, float z, float level) 
# 312
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)z;(void)level;
# 316
::exit(___);}
#if 0
# 312
{ 
# 316
} 
#endif
# 318 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 319
tex3DLod(cudaTextureObject_t texObject, float x, float y, float z, float level) 
# 320
{int volatile ___ = 1;(void)texObject;(void)x;(void)y;(void)z;(void)level;
# 326
::exit(___);}
#if 0
# 320
{ 
# 326
} 
#endif
# 329 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 330
tex1DLayeredLod(T *ptr, cudaTextureObject_t obj, float x, int layer, float level) 
# 331
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)layer;(void)level;
# 335
::exit(___);}
#if 0
# 331
{ 
# 335
} 
#endif
# 337 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 338
tex1DLayeredLod(cudaTextureObject_t texObject, float x, int layer, float level) 
# 339
{int volatile ___ = 1;(void)texObject;(void)x;(void)layer;(void)level;
# 345
::exit(___);}
#if 0
# 339
{ 
# 345
} 
#endif
# 348 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 349
tex2DLayeredLod(T *ptr, cudaTextureObject_t obj, float x, float y, int layer, float level) 
# 350
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)layer;(void)level;
# 354
::exit(___);}
#if 0
# 350
{ 
# 354
} 
#endif
# 356 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 357
tex2DLayeredLod(cudaTextureObject_t texObject, float x, float y, int layer, float level) 
# 358
{int volatile ___ = 1;(void)texObject;(void)x;(void)y;(void)layer;(void)level;
# 364
::exit(___);}
#if 0
# 358
{ 
# 364
} 
#endif
# 367 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 368
texCubemapLod(T *ptr, cudaTextureObject_t obj, float x, float y, float z, float level) 
# 369
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)z;(void)level;
# 373
::exit(___);}
#if 0
# 369
{ 
# 373
} 
#endif
# 375 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 376
texCubemapLod(cudaTextureObject_t texObject, float x, float y, float z, float level) 
# 377
{int volatile ___ = 1;(void)texObject;(void)x;(void)y;(void)z;(void)level;
# 383
::exit(___);}
#if 0
# 377
{ 
# 383
} 
#endif
# 386 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 387
texCubemapGrad(T *ptr, cudaTextureObject_t obj, float x, float y, float z, float4 dPdx, float4 dPdy) 
# 388
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)z;(void)dPdx;(void)dPdy;
# 392
::exit(___);}
#if 0
# 388
{ 
# 392
} 
#endif
# 394 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 395
texCubemapGrad(cudaTextureObject_t texObject, float x, float y, float z, float4 dPdx, float4 dPdy) 
# 396
{int volatile ___ = 1;(void)texObject;(void)x;(void)y;(void)z;(void)dPdx;(void)dPdy;
# 402
::exit(___);}
#if 0
# 396
{ 
# 402
} 
#endif
# 404 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 405
texCubemapLayeredLod(T *ptr, cudaTextureObject_t obj, float x, float y, float z, int layer, float level) 
# 406
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)z;(void)layer;(void)level;
# 410
::exit(___);}
#if 0
# 406
{ 
# 410
} 
#endif
# 412 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 413
texCubemapLayeredLod(cudaTextureObject_t texObject, float x, float y, float z, int layer, float level) 
# 414
{int volatile ___ = 1;(void)texObject;(void)x;(void)y;(void)z;(void)layer;(void)level;
# 420
::exit(___);}
#if 0
# 414
{ 
# 420
} 
#endif
# 422 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 423
tex1DGrad(T *ptr, cudaTextureObject_t obj, float x, float dPdx, float dPdy) 
# 424
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)dPdx;(void)dPdy;
# 428
::exit(___);}
#if 0
# 424
{ 
# 428
} 
#endif
# 430 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 431
tex1DGrad(cudaTextureObject_t texObject, float x, float dPdx, float dPdy) 
# 432
{int volatile ___ = 1;(void)texObject;(void)x;(void)dPdx;(void)dPdy;
# 438
::exit(___);}
#if 0
# 432
{ 
# 438
} 
#endif
# 441 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 442
tex2DGrad(T *ptr, cudaTextureObject_t obj, float x, float y, float2 dPdx, float2 dPdy) 
# 443
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)dPdx;(void)dPdy;
# 448
::exit(___);}
#if 0
# 443
{ 
# 448
} 
#endif
# 450 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 451
tex2DGrad(cudaTextureObject_t texObject, float x, float y, float2 dPdx, float2 dPdy) 
# 452
{int volatile ___ = 1;(void)texObject;(void)x;(void)y;(void)dPdx;(void)dPdy;
# 458
::exit(___);}
#if 0
# 452
{ 
# 458
} 
#endif
# 461 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 462
tex3DGrad(T *ptr, cudaTextureObject_t obj, float x, float y, float z, float4 dPdx, float4 dPdy) 
# 463
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)z;(void)dPdx;(void)dPdy;
# 467
::exit(___);}
#if 0
# 463
{ 
# 467
} 
#endif
# 469 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 470
tex3DGrad(cudaTextureObject_t texObject, float x, float y, float z, float4 dPdx, float4 dPdy) 
# 471
{int volatile ___ = 1;(void)texObject;(void)x;(void)y;(void)z;(void)dPdx;(void)dPdy;
# 477
::exit(___);}
#if 0
# 471
{ 
# 477
} 
#endif
# 480 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 481
tex1DLayeredGrad(T *ptr, cudaTextureObject_t obj, float x, int layer, float dPdx, float dPdy) 
# 482
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)layer;(void)dPdx;(void)dPdy;
# 486
::exit(___);}
#if 0
# 482
{ 
# 486
} 
#endif
# 488 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 489
tex1DLayeredGrad(cudaTextureObject_t texObject, float x, int layer, float dPdx, float dPdy) 
# 490
{int volatile ___ = 1;(void)texObject;(void)x;(void)layer;(void)dPdx;(void)dPdy;
# 496
::exit(___);}
#if 0
# 490
{ 
# 496
} 
#endif
# 499 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 500
tex2DLayeredGrad(T *ptr, cudaTextureObject_t obj, float x, float y, int layer, float2 dPdx, float2 dPdy) 
# 501
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)layer;(void)dPdx;(void)dPdy;
# 505
::exit(___);}
#if 0
# 501
{ 
# 505
} 
#endif
# 507 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 508
tex2DLayeredGrad(cudaTextureObject_t texObject, float x, float y, int layer, float2 dPdx, float2 dPdy) 
# 509
{int volatile ___ = 1;(void)texObject;(void)x;(void)y;(void)layer;(void)dPdx;(void)dPdy;
# 515
::exit(___);}
#if 0
# 509
{ 
# 515
} 
#endif
# 518 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_itex_trait< T> ::type 
# 519
texCubemapLayeredGrad(T *ptr, cudaTextureObject_t obj, float x, float y, float z, int layer, float4 dPdx, float4 dPdy) 
# 520
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)z;(void)layer;(void)dPdx;(void)dPdy;
# 524
::exit(___);}
#if 0
# 520
{ 
# 524
} 
#endif
# 526 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/texture_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 527
texCubemapLayeredGrad(cudaTextureObject_t texObject, float x, float y, float z, int layer, float4 dPdx, float4 dPdy) 
# 528
{int volatile ___ = 1;(void)texObject;(void)x;(void)y;(void)z;(void)layer;(void)dPdx;(void)dPdy;
# 534
::exit(___);}
#if 0
# 528
{ 
# 534
} 
#endif
# 59 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> struct __nv_isurf_trait { }; 
# 60
template<> struct __nv_isurf_trait< char>  { typedef void type; }; 
# 61
template<> struct __nv_isurf_trait< signed char>  { typedef void type; }; 
# 62
template<> struct __nv_isurf_trait< char1>  { typedef void type; }; 
# 63
template<> struct __nv_isurf_trait< unsigned char>  { typedef void type; }; 
# 64
template<> struct __nv_isurf_trait< uchar1>  { typedef void type; }; 
# 65
template<> struct __nv_isurf_trait< short>  { typedef void type; }; 
# 66
template<> struct __nv_isurf_trait< short1>  { typedef void type; }; 
# 67
template<> struct __nv_isurf_trait< unsigned short>  { typedef void type; }; 
# 68
template<> struct __nv_isurf_trait< ushort1>  { typedef void type; }; 
# 69
template<> struct __nv_isurf_trait< int>  { typedef void type; }; 
# 70
template<> struct __nv_isurf_trait< int1>  { typedef void type; }; 
# 71
template<> struct __nv_isurf_trait< unsigned>  { typedef void type; }; 
# 72
template<> struct __nv_isurf_trait< uint1>  { typedef void type; }; 
# 73
template<> struct __nv_isurf_trait< long long>  { typedef void type; }; 
# 74
template<> struct __nv_isurf_trait< longlong1>  { typedef void type; }; 
# 75
template<> struct __nv_isurf_trait< unsigned long long>  { typedef void type; }; 
# 76
template<> struct __nv_isurf_trait< ulonglong1>  { typedef void type; }; 
# 77
template<> struct __nv_isurf_trait< float>  { typedef void type; }; 
# 78
template<> struct __nv_isurf_trait< float1>  { typedef void type; }; 
# 80
template<> struct __nv_isurf_trait< char2>  { typedef void type; }; 
# 81
template<> struct __nv_isurf_trait< uchar2>  { typedef void type; }; 
# 82
template<> struct __nv_isurf_trait< short2>  { typedef void type; }; 
# 83
template<> struct __nv_isurf_trait< ushort2>  { typedef void type; }; 
# 84
template<> struct __nv_isurf_trait< int2>  { typedef void type; }; 
# 85
template<> struct __nv_isurf_trait< uint2>  { typedef void type; }; 
# 86
template<> struct __nv_isurf_trait< longlong2>  { typedef void type; }; 
# 87
template<> struct __nv_isurf_trait< ulonglong2>  { typedef void type; }; 
# 88
template<> struct __nv_isurf_trait< float2>  { typedef void type; }; 
# 90
template<> struct __nv_isurf_trait< char4>  { typedef void type; }; 
# 91
template<> struct __nv_isurf_trait< uchar4>  { typedef void type; }; 
# 92
template<> struct __nv_isurf_trait< short4>  { typedef void type; }; 
# 93
template<> struct __nv_isurf_trait< ushort4>  { typedef void type; }; 
# 94
template<> struct __nv_isurf_trait< int4>  { typedef void type; }; 
# 95
template<> struct __nv_isurf_trait< uint4>  { typedef void type; }; 
# 96
template<> struct __nv_isurf_trait< float4>  { typedef void type; }; 
# 99
template< class T> __attribute__((unused)) static typename __nv_isurf_trait< T> ::type 
# 100
surf1Dread(T *ptr, cudaSurfaceObject_t obj, int x, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 101
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)mode;
# 105
::exit(___);}
#if 0
# 101
{ 
# 105
} 
#endif
# 107 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 108
surf1Dread(cudaSurfaceObject_t surfObject, int x, cudaSurfaceBoundaryMode boundaryMode = cudaBoundaryModeTrap) 
# 109
{int volatile ___ = 1;(void)surfObject;(void)x;(void)boundaryMode;
# 115
::exit(___);}
#if 0
# 109
{ 
# 115
} 
#endif
# 117 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_isurf_trait< T> ::type 
# 118
surf2Dread(T *ptr, cudaSurfaceObject_t obj, int x, int y, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 119
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)mode;
# 123
::exit(___);}
#if 0
# 119
{ 
# 123
} 
#endif
# 125 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 126
surf2Dread(cudaSurfaceObject_t surfObject, int x, int y, cudaSurfaceBoundaryMode boundaryMode = cudaBoundaryModeTrap) 
# 127
{int volatile ___ = 1;(void)surfObject;(void)x;(void)y;(void)boundaryMode;
# 133
::exit(___);}
#if 0
# 127
{ 
# 133
} 
#endif
# 136 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_isurf_trait< T> ::type 
# 137
surf3Dread(T *ptr, cudaSurfaceObject_t obj, int x, int y, int z, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 138
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)z;(void)mode;
# 142
::exit(___);}
#if 0
# 138
{ 
# 142
} 
#endif
# 144 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 145
surf3Dread(cudaSurfaceObject_t surfObject, int x, int y, int z, cudaSurfaceBoundaryMode boundaryMode = cudaBoundaryModeTrap) 
# 146
{int volatile ___ = 1;(void)surfObject;(void)x;(void)y;(void)z;(void)boundaryMode;
# 152
::exit(___);}
#if 0
# 146
{ 
# 152
} 
#endif
# 154 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_isurf_trait< T> ::type 
# 155
surf1DLayeredread(T *ptr, cudaSurfaceObject_t obj, int x, int layer, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 156
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)layer;(void)mode;
# 160
::exit(___);}
#if 0
# 156
{ 
# 160
} 
#endif
# 162 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 163
surf1DLayeredread(cudaSurfaceObject_t surfObject, int x, int layer, cudaSurfaceBoundaryMode boundaryMode = cudaBoundaryModeTrap) 
# 164
{int volatile ___ = 1;(void)surfObject;(void)x;(void)layer;(void)boundaryMode;
# 170
::exit(___);}
#if 0
# 164
{ 
# 170
} 
#endif
# 172 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_isurf_trait< T> ::type 
# 173
surf2DLayeredread(T *ptr, cudaSurfaceObject_t obj, int x, int y, int layer, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 174
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)layer;(void)mode;
# 178
::exit(___);}
#if 0
# 174
{ 
# 178
} 
#endif
# 180 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 181
surf2DLayeredread(cudaSurfaceObject_t surfObject, int x, int y, int layer, cudaSurfaceBoundaryMode boundaryMode = cudaBoundaryModeTrap) 
# 182
{int volatile ___ = 1;(void)surfObject;(void)x;(void)y;(void)layer;(void)boundaryMode;
# 188
::exit(___);}
#if 0
# 182
{ 
# 188
} 
#endif
# 190 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_isurf_trait< T> ::type 
# 191
surfCubemapread(T *ptr, cudaSurfaceObject_t obj, int x, int y, int face, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 192
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)face;(void)mode;
# 196
::exit(___);}
#if 0
# 192
{ 
# 196
} 
#endif
# 198 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 199
surfCubemapread(cudaSurfaceObject_t surfObject, int x, int y, int face, cudaSurfaceBoundaryMode boundaryMode = cudaBoundaryModeTrap) 
# 200
{int volatile ___ = 1;(void)surfObject;(void)x;(void)y;(void)face;(void)boundaryMode;
# 206
::exit(___);}
#if 0
# 200
{ 
# 206
} 
#endif
# 208 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_isurf_trait< T> ::type 
# 209
surfCubemapLayeredread(T *ptr, cudaSurfaceObject_t obj, int x, int y, int layerface, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 210
{int volatile ___ = 1;(void)ptr;(void)obj;(void)x;(void)y;(void)layerface;(void)mode;
# 214
::exit(___);}
#if 0
# 210
{ 
# 214
} 
#endif
# 216 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static T 
# 217
surfCubemapLayeredread(cudaSurfaceObject_t surfObject, int x, int y, int layerface, cudaSurfaceBoundaryMode boundaryMode = cudaBoundaryModeTrap) 
# 218
{int volatile ___ = 1;(void)surfObject;(void)x;(void)y;(void)layerface;(void)boundaryMode;
# 224
::exit(___);}
#if 0
# 218
{ 
# 224
} 
#endif
# 226 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_isurf_trait< T> ::type 
# 227
surf1Dwrite(T val, cudaSurfaceObject_t obj, int x, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 228
{int volatile ___ = 1;(void)val;(void)obj;(void)x;(void)mode;
# 232
::exit(___);}
#if 0
# 228
{ 
# 232
} 
#endif
# 234 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_isurf_trait< T> ::type 
# 235
surf2Dwrite(T val, cudaSurfaceObject_t obj, int x, int y, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 236
{int volatile ___ = 1;(void)val;(void)obj;(void)x;(void)y;(void)mode;
# 240
::exit(___);}
#if 0
# 236
{ 
# 240
} 
#endif
# 242 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_isurf_trait< T> ::type 
# 243
surf3Dwrite(T val, cudaSurfaceObject_t obj, int x, int y, int z, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 244
{int volatile ___ = 1;(void)val;(void)obj;(void)x;(void)y;(void)z;(void)mode;
# 248
::exit(___);}
#if 0
# 244
{ 
# 248
} 
#endif
# 250 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_isurf_trait< T> ::type 
# 251
surf1DLayeredwrite(T val, cudaSurfaceObject_t obj, int x, int layer, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 252
{int volatile ___ = 1;(void)val;(void)obj;(void)x;(void)layer;(void)mode;
# 256
::exit(___);}
#if 0
# 252
{ 
# 256
} 
#endif
# 258 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_isurf_trait< T> ::type 
# 259
surf2DLayeredwrite(T val, cudaSurfaceObject_t obj, int x, int y, int layer, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 260
{int volatile ___ = 1;(void)val;(void)obj;(void)x;(void)y;(void)layer;(void)mode;
# 264
::exit(___);}
#if 0
# 260
{ 
# 264
} 
#endif
# 266 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_isurf_trait< T> ::type 
# 267
surfCubemapwrite(T val, cudaSurfaceObject_t obj, int x, int y, int face, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 268
{int volatile ___ = 1;(void)val;(void)obj;(void)x;(void)y;(void)face;(void)mode;
# 272
::exit(___);}
#if 0
# 268
{ 
# 272
} 
#endif
# 274 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/surface_indirect_functions.h"
template< class T> __attribute__((unused)) static typename __nv_isurf_trait< T> ::type 
# 275
surfCubemapLayeredwrite(T val, cudaSurfaceObject_t obj, int x, int y, int layerface, cudaSurfaceBoundaryMode mode = cudaBoundaryModeTrap) 
# 276
{int volatile ___ = 1;(void)val;(void)obj;(void)x;(void)y;(void)layerface;(void)mode;
# 280
::exit(___);}
#if 0
# 276
{ 
# 280
} 
#endif
# 3297 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/crt/device_functions.h"
extern "C" unsigned __cudaPushCallConfiguration(dim3 gridDim, dim3 blockDim, size_t sharedMem = 0, CUstream_st * stream = 0); 
# 68 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/device_launch_parameters.h"
extern "C" {
# 71
extern const uint3 __device_builtin_variable_threadIdx; 
# 72
extern const uint3 __device_builtin_variable_blockIdx; 
# 73
extern const dim3 __device_builtin_variable_blockDim; 
# 74
extern const dim3 __device_builtin_variable_gridDim; 
# 75
extern const int __device_builtin_variable_warpSize; 
# 80
}
# 199 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> static inline cudaError_t 
# 200
cudaLaunchKernel(const T *
# 201
func, dim3 
# 202
gridDim, dim3 
# 203
blockDim, void **
# 204
args, size_t 
# 205
sharedMem = 0, cudaStream_t 
# 206
stream = 0) 
# 208
{ 
# 209
return ::cudaLaunchKernel((const void *)func, gridDim, blockDim, args, sharedMem, stream); 
# 210
} 
# 261 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> static inline cudaError_t 
# 262
cudaLaunchCooperativeKernel(const T *
# 263
func, dim3 
# 264
gridDim, dim3 
# 265
blockDim, void **
# 266
args, size_t 
# 267
sharedMem = 0, cudaStream_t 
# 268
stream = 0) 
# 270
{ 
# 271
return ::cudaLaunchCooperativeKernel((const void *)func, gridDim, blockDim, args, sharedMem, stream); 
# 272
} 
# 305 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
static inline cudaError_t cudaEventCreate(cudaEvent_t *
# 306
event, unsigned 
# 307
flags) 
# 309
{ 
# 310
return ::cudaEventCreateWithFlags(event, flags); 
# 311
} 
# 370 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
static inline cudaError_t cudaMallocHost(void **
# 371
ptr, size_t 
# 372
size, unsigned 
# 373
flags) 
# 375
{ 
# 376
return ::cudaHostAlloc(ptr, size, flags); 
# 377
} 
# 379
template< class T> static inline cudaError_t 
# 380
cudaHostAlloc(T **
# 381
ptr, size_t 
# 382
size, unsigned 
# 383
flags) 
# 385
{ 
# 386
return ::cudaHostAlloc((void **)((void *)ptr), size, flags); 
# 387
} 
# 389
template< class T> static inline cudaError_t 
# 390
cudaHostGetDevicePointer(T **
# 391
pDevice, void *
# 392
pHost, unsigned 
# 393
flags) 
# 395
{ 
# 396
return ::cudaHostGetDevicePointer((void **)((void *)pDevice), pHost, flags); 
# 397
} 
# 499 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> static inline cudaError_t 
# 500
cudaMallocManaged(T **
# 501
devPtr, size_t 
# 502
size, unsigned 
# 503
flags = 1) 
# 505
{ 
# 506
return ::cudaMallocManaged((void **)((void *)devPtr), size, flags); 
# 507
} 
# 589 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> static inline cudaError_t 
# 590
cudaStreamAttachMemAsync(cudaStream_t 
# 591
stream, T *
# 592
devPtr, size_t 
# 593
length = 0, unsigned 
# 594
flags = 4) 
# 596
{ 
# 597
return ::cudaStreamAttachMemAsync(stream, (void *)devPtr, length, flags); 
# 598
} 
# 600
template< class T> inline cudaError_t 
# 601
cudaMalloc(T **
# 602
devPtr, size_t 
# 603
size) 
# 605
{ 
# 606
return ::cudaMalloc((void **)((void *)devPtr), size); 
# 607
} 
# 609
template< class T> static inline cudaError_t 
# 610
cudaMallocHost(T **
# 611
ptr, size_t 
# 612
size, unsigned 
# 613
flags = 0) 
# 615
{ 
# 616
return cudaMallocHost((void **)((void *)ptr), size, flags); 
# 617
} 
# 619
template< class T> static inline cudaError_t 
# 620
cudaMallocPitch(T **
# 621
devPtr, size_t *
# 622
pitch, size_t 
# 623
width, size_t 
# 624
height) 
# 626
{ 
# 627
return ::cudaMallocPitch((void **)((void *)devPtr), pitch, width, height); 
# 628
} 
# 667 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> static inline cudaError_t 
# 668
cudaMemcpyToSymbol(const T &
# 669
symbol, const void *
# 670
src, size_t 
# 671
count, size_t 
# 672
offset = 0, cudaMemcpyKind 
# 673
kind = cudaMemcpyHostToDevice) 
# 675
{ 
# 676
return ::cudaMemcpyToSymbol((const void *)(&symbol), src, count, offset, kind); 
# 677
} 
# 721 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> static inline cudaError_t 
# 722
cudaMemcpyToSymbolAsync(const T &
# 723
symbol, const void *
# 724
src, size_t 
# 725
count, size_t 
# 726
offset = 0, cudaMemcpyKind 
# 727
kind = cudaMemcpyHostToDevice, cudaStream_t 
# 728
stream = 0) 
# 730
{ 
# 731
return ::cudaMemcpyToSymbolAsync((const void *)(&symbol), src, count, offset, kind, stream); 
# 732
} 
# 769 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> static inline cudaError_t 
# 770
cudaMemcpyFromSymbol(void *
# 771
dst, const T &
# 772
symbol, size_t 
# 773
count, size_t 
# 774
offset = 0, cudaMemcpyKind 
# 775
kind = cudaMemcpyDeviceToHost) 
# 777
{ 
# 778
return ::cudaMemcpyFromSymbol(dst, (const void *)(&symbol), count, offset, kind); 
# 779
} 
# 823 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> static inline cudaError_t 
# 824
cudaMemcpyFromSymbolAsync(void *
# 825
dst, const T &
# 826
symbol, size_t 
# 827
count, size_t 
# 828
offset = 0, cudaMemcpyKind 
# 829
kind = cudaMemcpyDeviceToHost, cudaStream_t 
# 830
stream = 0) 
# 832
{ 
# 833
return ::cudaMemcpyFromSymbolAsync(dst, (const void *)(&symbol), count, offset, kind, stream); 
# 834
} 
# 859 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> static inline cudaError_t 
# 860
cudaGetSymbolAddress(void **
# 861
devPtr, const T &
# 862
symbol) 
# 864
{ 
# 865
return ::cudaGetSymbolAddress(devPtr, (const void *)(&symbol)); 
# 866
} 
# 891 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> static inline cudaError_t 
# 892
cudaGetSymbolSize(size_t *
# 893
size, const T &
# 894
symbol) 
# 896
{ 
# 897
return ::cudaGetSymbolSize(size, (const void *)(&symbol)); 
# 898
} 
# 935 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T, int dim, cudaTextureReadMode readMode> 
# 936
__attribute((deprecated)) static inline cudaError_t cudaBindTexture(size_t *
# 937
offset, const texture< T, dim, readMode>  &
# 938
tex, const void *
# 939
devPtr, const cudaChannelFormatDesc &
# 940
desc, size_t 
# 941
size = ((2147483647) * 2U) + 1U) 
# 943 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
{ 
# 944
return ::cudaBindTexture(offset, &tex, devPtr, &desc, size); 
# 945
} 
# 981 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T, int dim, cudaTextureReadMode readMode> 
# 982
__attribute((deprecated)) static inline cudaError_t cudaBindTexture(size_t *
# 983
offset, const texture< T, dim, readMode>  &
# 984
tex, const void *
# 985
devPtr, size_t 
# 986
size = ((2147483647) * 2U) + 1U) 
# 988 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
{ 
# 989
return cudaBindTexture(offset, tex, devPtr, (tex.channelDesc), size); 
# 990
} 
# 1038 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T, int dim, cudaTextureReadMode readMode> 
# 1039
__attribute((deprecated)) static inline cudaError_t cudaBindTexture2D(size_t *
# 1040
offset, const texture< T, dim, readMode>  &
# 1041
tex, const void *
# 1042
devPtr, const cudaChannelFormatDesc &
# 1043
desc, size_t 
# 1044
width, size_t 
# 1045
height, size_t 
# 1046
pitch) 
# 1048
{ 
# 1049
return ::cudaBindTexture2D(offset, &tex, devPtr, &desc, width, height, pitch); 
# 1050
} 
# 1097 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T, int dim, cudaTextureReadMode readMode> 
# 1098
__attribute((deprecated)) static inline cudaError_t cudaBindTexture2D(size_t *
# 1099
offset, const texture< T, dim, readMode>  &
# 1100
tex, const void *
# 1101
devPtr, size_t 
# 1102
width, size_t 
# 1103
height, size_t 
# 1104
pitch) 
# 1106
{ 
# 1107
return ::cudaBindTexture2D(offset, &tex, devPtr, &(tex.channelDesc), width, height, pitch); 
# 1108
} 
# 1140 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T, int dim, cudaTextureReadMode readMode> 
# 1141
__attribute((deprecated)) static inline cudaError_t cudaBindTextureToArray(const texture< T, dim, readMode>  &
# 1142
tex, cudaArray_const_t 
# 1143
array, const cudaChannelFormatDesc &
# 1144
desc) 
# 1146
{ 
# 1147
return ::cudaBindTextureToArray(&tex, array, &desc); 
# 1148
} 
# 1179 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T, int dim, cudaTextureReadMode readMode> 
# 1180
__attribute((deprecated)) static inline cudaError_t cudaBindTextureToArray(const texture< T, dim, readMode>  &
# 1181
tex, cudaArray_const_t 
# 1182
array) 
# 1184
{ 
# 1185
cudaChannelFormatDesc desc; 
# 1186
cudaError_t err = ::cudaGetChannelDesc(&desc, array); 
# 1188
return (err == (cudaSuccess)) ? cudaBindTextureToArray(tex, array, desc) : err; 
# 1189
} 
# 1221 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T, int dim, cudaTextureReadMode readMode> 
# 1222
__attribute((deprecated)) static inline cudaError_t cudaBindTextureToMipmappedArray(const texture< T, dim, readMode>  &
# 1223
tex, cudaMipmappedArray_const_t 
# 1224
mipmappedArray, const cudaChannelFormatDesc &
# 1225
desc) 
# 1227
{ 
# 1228
return ::cudaBindTextureToMipmappedArray(&tex, mipmappedArray, &desc); 
# 1229
} 
# 1260 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T, int dim, cudaTextureReadMode readMode> 
# 1261
__attribute((deprecated)) static inline cudaError_t cudaBindTextureToMipmappedArray(const texture< T, dim, readMode>  &
# 1262
tex, cudaMipmappedArray_const_t 
# 1263
mipmappedArray) 
# 1265
{ 
# 1266
cudaChannelFormatDesc desc; 
# 1267
cudaArray_t levelArray; 
# 1268
cudaError_t err = ::cudaGetMipmappedArrayLevel(&levelArray, mipmappedArray, 0); 
# 1270
if (err != (cudaSuccess)) { 
# 1271
return err; 
# 1272
}  
# 1273
err = ::cudaGetChannelDesc(&desc, levelArray); 
# 1275
return (err == (cudaSuccess)) ? cudaBindTextureToMipmappedArray(tex, mipmappedArray, desc) : err; 
# 1276
} 
# 1303 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T, int dim, cudaTextureReadMode readMode> 
# 1304
__attribute((deprecated)) static inline cudaError_t cudaUnbindTexture(const texture< T, dim, readMode>  &
# 1305
tex) 
# 1307
{ 
# 1308
return ::cudaUnbindTexture(&tex); 
# 1309
} 
# 1339 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T, int dim, cudaTextureReadMode readMode> 
# 1340
__attribute((deprecated)) static inline cudaError_t cudaGetTextureAlignmentOffset(size_t *
# 1341
offset, const texture< T, dim, readMode>  &
# 1342
tex) 
# 1344
{ 
# 1345
return ::cudaGetTextureAlignmentOffset(offset, &tex); 
# 1346
} 
# 1391 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> static inline cudaError_t 
# 1392
cudaFuncSetCacheConfig(T *
# 1393
func, cudaFuncCache 
# 1394
cacheConfig) 
# 1396
{ 
# 1397
return ::cudaFuncSetCacheConfig((const void *)func, cacheConfig); 
# 1398
} 
# 1400
template< class T> static inline cudaError_t 
# 1401
cudaFuncSetSharedMemConfig(T *
# 1402
func, cudaSharedMemConfig 
# 1403
config) 
# 1405
{ 
# 1406
return ::cudaFuncSetSharedMemConfig((const void *)func, config); 
# 1407
} 
# 1437 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> inline cudaError_t 
# 1438
cudaOccupancyMaxActiveBlocksPerMultiprocessor(int *
# 1439
numBlocks, T 
# 1440
func, int 
# 1441
blockSize, size_t 
# 1442
dynamicSMemSize) 
# 1443
{ 
# 1444
return ::cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(numBlocks, (const void *)func, blockSize, dynamicSMemSize, 0); 
# 1445
} 
# 1489 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> inline cudaError_t 
# 1490
cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(int *
# 1491
numBlocks, T 
# 1492
func, int 
# 1493
blockSize, size_t 
# 1494
dynamicSMemSize, unsigned 
# 1495
flags) 
# 1496
{ 
# 1497
return ::cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(numBlocks, (const void *)func, blockSize, dynamicSMemSize, flags); 
# 1498
} 
# 1503
class __cudaOccupancyB2DHelper { 
# 1504
size_t n; 
# 1506
public: __cudaOccupancyB2DHelper(size_t n_) : n(n_) { } 
# 1507
size_t operator()(int) 
# 1508
{ 
# 1509
return n; 
# 1510
} 
# 1511
}; 
# 1559 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class UnaryFunction, class T> static inline cudaError_t 
# 1560
cudaOccupancyMaxPotentialBlockSizeVariableSMemWithFlags(int *
# 1561
minGridSize, int *
# 1562
blockSize, T 
# 1563
func, UnaryFunction 
# 1564
blockSizeToDynamicSMemSize, int 
# 1565
blockSizeLimit = 0, unsigned 
# 1566
flags = 0) 
# 1567
{ 
# 1568
cudaError_t status; 
# 1571
int device; 
# 1572
cudaFuncAttributes attr; 
# 1575
int maxThreadsPerMultiProcessor; 
# 1576
int warpSize; 
# 1577
int devMaxThreadsPerBlock; 
# 1578
int multiProcessorCount; 
# 1579
int funcMaxThreadsPerBlock; 
# 1580
int occupancyLimit; 
# 1581
int granularity; 
# 1584
int maxBlockSize = 0; 
# 1585
int numBlocks = 0; 
# 1586
int maxOccupancy = 0; 
# 1589
int blockSizeToTryAligned; 
# 1590
int blockSizeToTry; 
# 1591
int blockSizeLimitAligned; 
# 1592
int occupancyInBlocks; 
# 1593
int occupancyInThreads; 
# 1594
size_t dynamicSMemSize; 
# 1600
if (((!minGridSize) || (!blockSize)) || (!func)) { 
# 1601
return cudaErrorInvalidValue; 
# 1602
}  
# 1608
status = ::cudaGetDevice(&device); 
# 1609
if (status != (cudaSuccess)) { 
# 1610
return status; 
# 1611
}  
# 1613
status = cudaDeviceGetAttribute(&maxThreadsPerMultiProcessor, cudaDevAttrMaxThreadsPerMultiProcessor, device); 
# 1617
if (status != (cudaSuccess)) { 
# 1618
return status; 
# 1619
}  
# 1621
status = cudaDeviceGetAttribute(&warpSize, cudaDevAttrWarpSize, device); 
# 1625
if (status != (cudaSuccess)) { 
# 1626
return status; 
# 1627
}  
# 1629
status = cudaDeviceGetAttribute(&devMaxThreadsPerBlock, cudaDevAttrMaxThreadsPerBlock, device); 
# 1633
if (status != (cudaSuccess)) { 
# 1634
return status; 
# 1635
}  
# 1637
status = cudaDeviceGetAttribute(&multiProcessorCount, cudaDevAttrMultiProcessorCount, device); 
# 1641
if (status != (cudaSuccess)) { 
# 1642
return status; 
# 1643
}  
# 1645
status = cudaFuncGetAttributes(&attr, func); 
# 1646
if (status != (cudaSuccess)) { 
# 1647
return status; 
# 1648
}  
# 1650
funcMaxThreadsPerBlock = (attr.maxThreadsPerBlock); 
# 1656
occupancyLimit = maxThreadsPerMultiProcessor; 
# 1657
granularity = warpSize; 
# 1659
if (blockSizeLimit == 0) { 
# 1660
blockSizeLimit = devMaxThreadsPerBlock; 
# 1661
}  
# 1663
if (devMaxThreadsPerBlock < blockSizeLimit) { 
# 1664
blockSizeLimit = devMaxThreadsPerBlock; 
# 1665
}  
# 1667
if (funcMaxThreadsPerBlock < blockSizeLimit) { 
# 1668
blockSizeLimit = funcMaxThreadsPerBlock; 
# 1669
}  
# 1671
blockSizeLimitAligned = (((blockSizeLimit + (granularity - 1)) / granularity) * granularity); 
# 1673
for (blockSizeToTryAligned = blockSizeLimitAligned; blockSizeToTryAligned > 0; blockSizeToTryAligned -= granularity) { 
# 1677
if (blockSizeLimit < blockSizeToTryAligned) { 
# 1678
blockSizeToTry = blockSizeLimit; 
# 1679
} else { 
# 1680
blockSizeToTry = blockSizeToTryAligned; 
# 1681
}  
# 1683
dynamicSMemSize = blockSizeToDynamicSMemSize(blockSizeToTry); 
# 1685
status = cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(&occupancyInBlocks, func, blockSizeToTry, dynamicSMemSize, flags); 
# 1692
if (status != (cudaSuccess)) { 
# 1693
return status; 
# 1694
}  
# 1696
occupancyInThreads = (blockSizeToTry * occupancyInBlocks); 
# 1698
if (occupancyInThreads > maxOccupancy) { 
# 1699
maxBlockSize = blockSizeToTry; 
# 1700
numBlocks = occupancyInBlocks; 
# 1701
maxOccupancy = occupancyInThreads; 
# 1702
}  
# 1706
if (occupancyLimit == maxOccupancy) { 
# 1707
break; 
# 1708
}  
# 1709
}  
# 1717
(*minGridSize) = (numBlocks * multiProcessorCount); 
# 1718
(*blockSize) = maxBlockSize; 
# 1720
return status; 
# 1721
} 
# 1755 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class UnaryFunction, class T> static inline cudaError_t 
# 1756
cudaOccupancyMaxPotentialBlockSizeVariableSMem(int *
# 1757
minGridSize, int *
# 1758
blockSize, T 
# 1759
func, UnaryFunction 
# 1760
blockSizeToDynamicSMemSize, int 
# 1761
blockSizeLimit = 0) 
# 1762
{ 
# 1763
return cudaOccupancyMaxPotentialBlockSizeVariableSMemWithFlags(minGridSize, blockSize, func, blockSizeToDynamicSMemSize, blockSizeLimit, 0); 
# 1764
} 
# 1801 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> static inline cudaError_t 
# 1802
cudaOccupancyMaxPotentialBlockSize(int *
# 1803
minGridSize, int *
# 1804
blockSize, T 
# 1805
func, size_t 
# 1806
dynamicSMemSize = 0, int 
# 1807
blockSizeLimit = 0) 
# 1808
{ 
# 1809
return cudaOccupancyMaxPotentialBlockSizeVariableSMemWithFlags(minGridSize, blockSize, func, ((__cudaOccupancyB2DHelper)(dynamicSMemSize)), blockSizeLimit, 0); 
# 1810
} 
# 1839 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> static inline cudaError_t 
# 1840
cudaOccupancyAvailableDynamicSMemPerBlock(size_t *
# 1841
dynamicSmemSize, T 
# 1842
func, int 
# 1843
numBlocks, int 
# 1844
blockSize) 
# 1845
{ 
# 1846
return ::cudaOccupancyAvailableDynamicSMemPerBlock(dynamicSmemSize, (const void *)func, numBlocks, blockSize); 
# 1847
} 
# 1898 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> static inline cudaError_t 
# 1899
cudaOccupancyMaxPotentialBlockSizeWithFlags(int *
# 1900
minGridSize, int *
# 1901
blockSize, T 
# 1902
func, size_t 
# 1903
dynamicSMemSize = 0, int 
# 1904
blockSizeLimit = 0, unsigned 
# 1905
flags = 0) 
# 1906
{ 
# 1907
return cudaOccupancyMaxPotentialBlockSizeVariableSMemWithFlags(minGridSize, blockSize, func, ((__cudaOccupancyB2DHelper)(dynamicSMemSize)), blockSizeLimit, flags); 
# 1908
} 
# 1939 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> inline cudaError_t 
# 1940
cudaFuncGetAttributes(cudaFuncAttributes *
# 1941
attr, T *
# 1942
entry) 
# 1944
{ 
# 1945
return ::cudaFuncGetAttributes(attr, (const void *)entry); 
# 1946
} 
# 1984 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T> static inline cudaError_t 
# 1985
cudaFuncSetAttribute(T *
# 1986
entry, cudaFuncAttribute 
# 1987
attr, int 
# 1988
value) 
# 1990
{ 
# 1991
return ::cudaFuncSetAttribute((const void *)entry, attr, value); 
# 1992
} 
# 2016 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T, int dim> 
# 2017
__attribute((deprecated)) static inline cudaError_t cudaBindSurfaceToArray(const surface< T, dim>  &
# 2018
surf, cudaArray_const_t 
# 2019
array, const cudaChannelFormatDesc &
# 2020
desc) 
# 2022
{ 
# 2023
return ::cudaBindSurfaceToArray(&surf, array, &desc); 
# 2024
} 
# 2047 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
template< class T, int dim> 
# 2048
__attribute((deprecated)) static inline cudaError_t cudaBindSurfaceToArray(const surface< T, dim>  &
# 2049
surf, cudaArray_const_t 
# 2050
array) 
# 2052
{ 
# 2053
cudaChannelFormatDesc desc; 
# 2054
cudaError_t err = ::cudaGetChannelDesc(&desc, array); 
# 2056
return (err == (cudaSuccess)) ? cudaBindSurfaceToArray(surf, array, desc) : err; 
# 2057
} 
# 2068 "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/../targets/x86_64-linux/include/cuda_runtime.h"
#pragma GCC diagnostic pop
# 40 "CMakeCUDACompilerId.cu"
const char *info_compiler = ("INFO:compiler[NVIDIA]"); 
# 278 "CMakeCUDACompilerId.cu"
const char info_version[] = {'I', 'N', 'F', 'O', ':', 'c', 'o', 'm', 'p', 'i', 'l', 'e', 'r', '_', 'v', 'e', 'r', 's', 'i', 'o', 'n', '[', (('0') + ((11 / 10000000) % 10)), (('0') + ((11 / 1000000) % 10)), (('0') + ((11 / 100000) % 10)), (('0') + ((11 / 10000) % 10)), (('0') + ((11 / 1000) % 10)), (('0') + ((11 / 100) % 10)), (('0') + ((11 / 10) % 10)), (('0') + (11 % 10)), '.', (('0') + ((0 / 10000000) % 10)), (('0') + ((0 / 1000000) % 10)), (('0') + ((0 / 100000) % 10)), (('0') + ((0 / 10000) % 10)), (('0') + ((0 / 1000) % 10)), (('0') + ((0 / 100) % 10)), (('0') + ((0 / 10) % 10)), (('0') + (0 % 10)), '.', (('0') + ((221 / 10000000) % 10)), (('0') + ((221 / 1000000) % 10)), (('0') + ((221 / 100000) % 10)), (('0') + ((221 / 10000) % 10)), (('0') + ((221 / 1000) % 10)), (('0') + ((221 / 100) % 10)), (('0') + ((221 / 10) % 10)), (('0') + (221 % 10)), ']', '\000'}; 
# 325 "CMakeCUDACompilerId.cu"
const char *info_platform = ("INFO:platform[Linux]"); 
# 326
const char *info_arch = ("INFO:arch[]"); 
# 331
const char *info_language_dialect_default = ("INFO:dialect_default[14]"); 
# 347
int main(int argc, char *argv[]) 
# 348
{ 
# 349
int require = 0; 
# 350
require += (info_compiler[argc]); 
# 351
require += (info_platform[argc]); 
# 353
require += (info_version[argc]); 
# 361
require += (info_language_dialect_default[argc]); 
# 362
(void)argv; 
# 363
return require; 
# 364
} 

# 1 "CMakeCUDACompilerId.cudafe1.stub.c"
#define _NV_ANON_NAMESPACE _GLOBAL__N__27_CMakeCUDACompilerId_cpp1_ii_bd57c623
# 1 "CMakeCUDACompilerId.cudafe1.stub.c"
#include "CMakeCUDACompilerId.cudafe1.stub.c"
# 1 "CMakeCUDACompilerId.cudafe1.stub.c"
#undef _NV_ANON_NAMESPACE
