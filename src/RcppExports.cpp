// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include "../inst/include/rray_types.h"
#include <Rcpp.h>

using namespace Rcpp;

// rray_binary_op_cpp
SEXP rray_binary_op_cpp(const std::string& op, SEXP x, SEXP y);
RcppExport SEXP _rray_rray_binary_op_cpp(SEXP opSEXP, SEXP xSEXP, SEXP ySEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const std::string& >::type op(opSEXP);
    Rcpp::traits::input_parameter< SEXP >::type x(xSEXP);
    Rcpp::traits::input_parameter< SEXP >::type y(ySEXP);
    rcpp_result_gen = Rcpp::wrap(rray_binary_op_cpp(op, x, y));
    return rcpp_result_gen;
END_RCPP
}
// rray_broadcast_cpp
SEXP rray_broadcast_cpp(SEXP x, const IntegerVector& dim);
RcppExport SEXP _rray_rray_broadcast_cpp(SEXP xSEXP, SEXP dimSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< SEXP >::type x(xSEXP);
    Rcpp::traits::input_parameter< const IntegerVector& >::type dim(dimSEXP);
    rcpp_result_gen = Rcpp::wrap(rray_broadcast_cpp(x, dim));
    return rcpp_result_gen;
END_RCPP
}
// rray_unary_op_cpp
SEXP rray_unary_op_cpp(std::string op, SEXP x);
RcppExport SEXP _rray_rray_unary_op_cpp(SEXP opSEXP, SEXP xSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< std::string >::type op(opSEXP);
    Rcpp::traits::input_parameter< SEXP >::type x(xSEXP);
    rcpp_result_gen = Rcpp::wrap(rray_unary_op_cpp(op, x));
    return rcpp_result_gen;
END_RCPP
}
// rray_reshape_cpp
xt::rarray<double> rray_reshape_cpp(xt::rarray<double> x, IntegerVector shape);
RcppExport SEXP _rray_rray_reshape_cpp(SEXP xSEXP, SEXP shapeSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< xt::rarray<double> >::type x(xSEXP);
    Rcpp::traits::input_parameter< IntegerVector >::type shape(shapeSEXP);
    rcpp_result_gen = Rcpp::wrap(rray_reshape_cpp(x, shape));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_rray_rray_binary_op_cpp", (DL_FUNC) &_rray_rray_binary_op_cpp, 3},
    {"_rray_rray_broadcast_cpp", (DL_FUNC) &_rray_rray_broadcast_cpp, 2},
    {"_rray_rray_unary_op_cpp", (DL_FUNC) &_rray_rray_unary_op_cpp, 2},
    {"_rray_rray_reshape_cpp", (DL_FUNC) &_rray_rray_reshape_cpp, 2},
    {NULL, NULL, 0}
};

RcppExport void R_init_rray(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
