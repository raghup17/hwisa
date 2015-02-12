package hwisa

trait Interface {
  def en: Wire
  def rdy: Wire
  def sendData: Wire
  def din: Wire
  def dvld: Wire
  def dout: Wire
  def dovld: Wire
}

class SimpleInterface(in: Int, out: Int) extends Interface {
  def en = Wire(1)
  def rdy = Wire(1)
  def sendData = Wire(1)
  def dvld = Wire(1)
  def dovld = Wire(1)

  def din = Wire(in)
  def dout = Wire(out)
}

