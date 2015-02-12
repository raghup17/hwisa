package hwisa

object Globals {
  var wireID = 0

  def newWire() = {
    wireID += 1
    wireID
  }
}
