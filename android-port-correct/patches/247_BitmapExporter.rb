# Portable replacement for the Windows memory/GDI implementation by Zeus81.
class Bitmap
  def export(filename); to_file(filename); end
  alias save export
end
module Graphics
  def self.export(filename = nil)
    filename ||= "Screenshot-#{Time.now.strftime('%Y%m%d-%H%M%S')}.png"
    bitmap = snap_to_bitmap
    begin
      bitmap.to_file(filename)
    ensure
      bitmap.dispose
    end
  end
end
