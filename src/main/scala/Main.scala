package hwisa

object Main {
  def main(args: Array[String]) {
    val adder = clb_add(20)
    val s = simd(adder, 10)
  }
}
