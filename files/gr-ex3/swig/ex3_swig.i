/* -*- c++ -*- */

#define EX3_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "ex3_swig_doc.i"

%{
#include "ex3/myadd.h"
%}


%include "ex3/myadd.h"
GR_SWIG_BLOCK_MAGIC2(ex3, myadd);
