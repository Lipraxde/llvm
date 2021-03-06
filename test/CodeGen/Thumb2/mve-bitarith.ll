; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=thumbv8.1m.main-arm-none-eabi -mattr=+mve -verify-machineinstrs %s -o - | FileCheck %s

define arm_aapcs_vfpcc <16 x i8> @and_int8_t(<16 x i8> %src1, <16 x i8> %src2) {
; CHECK-LABEL: and_int8_t:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vand q0, q0, q1
; CHECK-NEXT:    bx lr
entry:
  %0 = and <16 x i8> %src1, %src2
  ret <16 x i8> %0
}

define arm_aapcs_vfpcc <8 x i16> @and_int16_t(<8 x i16> %src1, <8 x i16> %src2) {
; CHECK-LABEL: and_int16_t:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vand q0, q0, q1
; CHECK-NEXT:    bx lr
entry:
  %0 = and <8 x i16> %src1, %src2
  ret <8 x i16> %0
}

define arm_aapcs_vfpcc <4 x i32> @and_int32_t(<4 x i32> %src1, <4 x i32> %src2) {
; CHECK-LABEL: and_int32_t:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vand q0, q0, q1
; CHECK-NEXT:    bx lr
entry:
  %0 = and <4 x i32> %src1, %src2
  ret <4 x i32> %0
}


define arm_aapcs_vfpcc <16 x i8> @or_int8_t(<16 x i8> %src1, <16 x i8> %src2) {
; CHECK-LABEL: or_int8_t:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vorr q0, q0, q1
; CHECK-NEXT:    bx lr
entry:
  %0 = or <16 x i8> %src1, %src2
  ret <16 x i8> %0
}

define arm_aapcs_vfpcc <8 x i16> @or_int16_t(<8 x i16> %src1, <8 x i16> %src2) {
; CHECK-LABEL: or_int16_t:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vorr q0, q0, q1
; CHECK-NEXT:    bx lr
entry:
  %0 = or <8 x i16> %src1, %src2
  ret <8 x i16> %0
}

define arm_aapcs_vfpcc <4 x i32> @or_int32_t(<4 x i32> %src1, <4 x i32> %src2) {
; CHECK-LABEL: or_int32_t:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vorr q0, q0, q1
; CHECK-NEXT:    bx lr
entry:
  %0 = or <4 x i32> %src1, %src2
  ret <4 x i32> %0
}


define arm_aapcs_vfpcc <16 x i8> @xor_int8_t(<16 x i8> %src1, <16 x i8> %src2) {
; CHECK-LABEL: xor_int8_t:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    veor q0, q0, q1
; CHECK-NEXT:    bx lr
entry:
  %0 = xor <16 x i8> %src1, %src2
  ret <16 x i8> %0
}

define arm_aapcs_vfpcc <8 x i16> @xor_int16_t(<8 x i16> %src1, <8 x i16> %src2) {
; CHECK-LABEL: xor_int16_t:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    veor q0, q0, q1
; CHECK-NEXT:    bx lr
entry:
  %0 = xor <8 x i16> %src1, %src2
  ret <8 x i16> %0
}

define arm_aapcs_vfpcc <4 x i32> @xor_int32_t(<4 x i32> %src1, <4 x i32> %src2) {
; CHECK-LABEL: xor_int32_t:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    veor q0, q0, q1
; CHECK-NEXT:    bx lr
entry:
  %0 = xor <4 x i32> %src1, %src2
  ret <4 x i32> %0
}

define arm_aapcs_vfpcc <16 x i8> @v_mvn_i8(<16 x i8> %src) {
; CHECK-LABEL: v_mvn_i8:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmvn q0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = xor <16 x i8> %src, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  ret <16 x i8> %0
}

define arm_aapcs_vfpcc <8 x i16> @v_mvn_i16(<8 x i16> %src) {
; CHECK-LABEL: v_mvn_i16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmvn q0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = xor <8 x i16> %src, <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
  ret <8 x i16> %0
}

define arm_aapcs_vfpcc <4 x i32> @v_mvn_i32(<4 x i32> %src) {
; CHECK-LABEL: v_mvn_i32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmvn q0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = xor <4 x i32> %src, <i32 -1, i32 -1, i32 -1, i32 -1>
  ret <4 x i32> %0
}

define arm_aapcs_vfpcc <16 x i8> @v_bic_i8(<16 x i8> %src1, <16 x i8> %src2) {
; CHECK-LABEL: v_bic_i8:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vbic q0, q1, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = xor <16 x i8> %src1, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %1 = and <16 x i8> %src2, %0
  ret <16 x i8> %1
}

define arm_aapcs_vfpcc <8 x i16> @v_bic_i16(<8 x i16> %src1, <8 x i16> %src2) {
; CHECK-LABEL: v_bic_i16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vbic q0, q1, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = xor <8 x i16> %src1, <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
  %1 = and <8 x i16> %src2, %0
  ret <8 x i16> %1
}

define arm_aapcs_vfpcc <4 x i32> @v_bic_i32(<4 x i32> %src1, <4 x i32> %src2) {
; CHECK-LABEL: v_bic_i32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vbic q0, q1, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = xor <4 x i32> %src1, <i32 -1, i32 -1, i32 -1, i32 -1>
  %1 = and <4 x i32> %src2, %0
  ret <4 x i32> %1
}

define arm_aapcs_vfpcc <16 x i8> @v_or_i8(<16 x i8> %src1, <16 x i8> %src2) {
; CHECK-LABEL: v_or_i8:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vorn q0, q1, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = xor <16 x i8> %src1, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %1 = or <16 x i8> %src2, %0
  ret <16 x i8> %1
}

define arm_aapcs_vfpcc <8 x i16> @v_or_i16(<8 x i16> %src1, <8 x i16> %src2) {
; CHECK-LABEL: v_or_i16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vorn q0, q1, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = xor <8 x i16> %src1, <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
  %1 = or <8 x i16> %src2, %0
  ret <8 x i16> %1
}

define arm_aapcs_vfpcc <4 x i32> @v_or_i32(<4 x i32> %src1, <4 x i32> %src2) {
; CHECK-LABEL: v_or_i32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vorn q0, q1, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = xor <4 x i32> %src1, <i32 -1, i32 -1, i32 -1, i32 -1>
  %1 = or <4 x i32> %src2, %0
  ret <4 x i32> %1
}
