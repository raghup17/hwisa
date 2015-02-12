package hwisa

trait Interface {
  var en: Wire
  var rdy: Wire
  var sendData: Wire
  var din: Wire
  var dvld: Wire
  var dout: Wire
  var dovld: Wire
}

class SimpleInterface(in: Int, out: Int) extends Interface {
  var en = Wire(1)
  var rdy = Wire(1)
  var sendData = Wire(1)
  var dvld = Wire(1)
  var dovld = Wire(1)

  var din = Wire(in)
  var dout = Wire(out)
}

