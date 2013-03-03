package com.example.projecteuler

class P2 {
  lazy val fib: Stream[Int] = Stream.cons(1, Stream.cons(2, fib.zip(fib.tail).map(p => p._1 + p._2)))
  def solve() : Int = {
    fib.filter(_ % 2 == 0).takeWhile(_ < 4000000).sum
  }
}
