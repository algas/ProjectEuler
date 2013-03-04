package com.example.projecteuler

class P1 {
  def solve() : Int = {
    (1 to 999).toList.filter(p => (p % 3 == 0 || p % 5 == 0)).sum
  }
}
