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


#ifndef INCLUDED_EX2_MYMULTIPLY_H
#define INCLUDED_EX2_MYMULTIPLY_H

#include <ex2/api.h>
#include <gnuradio/block.h>

namespace gr {
  namespace ex2 {

    /*!
     * \brief <+description of block+>
     * \ingroup ex2
     *
     */
    class EX2_API mymultiply : virtual public gr::block
    {
     public:
      typedef boost::shared_ptr<mymultiply> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of ex2::mymultiply.
       *
       * To avoid accidental use of raw pointers, ex2::mymultiply's
       * constructor is in a private implementation
       * class. ex2::mymultiply::make is the public interface for
       * creating new instances.
       */
      static sptr make();
    };

  } // namespace ex2
} // namespace gr

#endif /* INCLUDED_EX2_MYMULTIPLY_H */

