package hwisa

case class Wire(n: Int) {
  val id: Int = Globals.newWire()
}
