package com.example.projecteuler

import org.specs2.mutable._

class P1Spec extends Specification {

  "P1 'solve'" should {
    "return 233168" in {
      val p1 = new P1()
      p1.solve() must_== 233168
    }
  }
}
