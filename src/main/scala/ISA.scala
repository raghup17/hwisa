package hwisa

case class simd(m: Module, N: Int) extends Module {
  def io = new SimpleInterface(N*m.inw, N*m.outw)
}

case class clb_add(N: Int) extends Module {
  def io = new SimpleInterface(N, N)
}

case class clb_sub(N: Int) extends Module {
  def io = new SimpleInterface(N, N)
}

case class clb_mul(N: Int) extends Module {
  def io = new SimpleInterface(N, N)
}

case class clb_div(N: Int) extends Module {
  def io = new SimpleInterface(N, N)
}


