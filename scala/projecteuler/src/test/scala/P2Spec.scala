package com.example.projecteuler

import org.specs2.mutable._

class P2Spec extends Specification {
  "P2 'fib' take 10" should {
    "return 1,2,3,5,8,13,21,34,55,89" in {
      val p2 = new P2()
      p2.fib.take(10).toList must_== List(1,2,3,5,8,13,21,34,55,89)
    }
  }

  "P2 'solve'" should {
    "return 4613732" in {
      val p2 = new P2()
      p2.solve() must_== 4613732
    }
  }
}
