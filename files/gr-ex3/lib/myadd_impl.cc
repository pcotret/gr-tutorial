/* -*- c++ -*- */
/* 
 * Copyright 2017 <+YOU OR YOUR COMPANY+>.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <gnuradio/io_signature.h>
#include "myadd_impl.h"

namespace gr {
  namespace ex3 {

    myadd::sptr
    myadd::make()
    {
      return gnuradio::get_initial_sptr
        (new myadd_impl());
    }

    /*
     * The private constructor
     */
    myadd_impl::myadd_impl()
      : gr::block("myadd",
              gr::io_signature::make(3,3,sizeof(float)),
              gr::io_signature::make(1,1,sizeof(float)))
    {}

    /*
     * Our virtual destructor.
     */
    myadd_impl::~myadd_impl()
    {
    }

    void myadd_impl::forecast (int noutput_items, gr_vector_int &ninput_items_required)
    {
      ninput_items_required[0] = noutput_items;
    }

    int
    myadd_impl::general_work (int noutput_items,
                       gr_vector_int &ninput_items,
                       gr_vector_const_void_star &input_items,
                       gr_vector_void_star &output_items)
    {
      const float *in1 = (const float *) input_items[0];
      const float *in2 = (const float *) input_items[1];
      const float *in3 = (const float *) input_items[2];
      float *out = (float *) output_items[0];

      // Do <+signal processing+>
      for(int i = 0; i < noutput_items; i++) {
        out[i] = in1[i]+in2[i]+in3[i];
      }
      // Tell runtime system how many input items we consumed on
      // each input stream.
      consume_each (noutput_items);

      // Tell runtime system how many output items we produced.
      return noutput_items;
    }

  } /* namespace ex3 */
} /* namespace gr */

