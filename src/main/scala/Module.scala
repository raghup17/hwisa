package hwisa

abstract class Module {
  def io: Interface

  def inw = io.din.n
  def outw = io.dout.n
}
