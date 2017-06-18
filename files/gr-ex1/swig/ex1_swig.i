/* -*- c++ -*- */

#define EX1_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "ex1_swig_doc.i"

%{
#include "ex1/mysquare.h"
%}


%include "ex1/mysquare.h"
GR_SWIG_BLOCK_MAGIC2(ex1, mysquare);
