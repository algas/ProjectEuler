package com.example.projecteuler

class P1 {
  def solve() : Int = {
    val lst = for (i <- 1 to 999 if (i % 3 == 0 || i % 5 == 0)) yield i
    lst.sum
  }
}
