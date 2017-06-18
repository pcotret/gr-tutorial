/* -*- c++ -*- */

#define EX2_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "ex2_swig_doc.i"

%{
#include "ex2/mymultiply.h"
%}


%include "ex2/mymultiply.h"
GR_SWIG_BLOCK_MAGIC2(ex2, mymultiply);
