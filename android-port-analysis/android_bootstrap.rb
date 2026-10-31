begin
  require 'zlib'
  puts '[Android bootstrap] zlib loaded'
rescue LoadError => error
  puts "[Android bootstrap] ZLIB UNAVAILABLE: #{error.message}"
  raise
end

# Desktop Essentials requests a small native window when applying its screen-size
# preference. Android already supplies a display-sized SDL surface; retain it.
module XenoverseAndroidDisplay
  def scale=(_factor)
    # Android's surface size is controlled by the Activity.
  end

  def center
    # Desktop window positioning has no mobile equivalent.
  end

  def fullscreen=(_enabled)
    super(true)
  end
end
Graphics.singleton_class.prepend(XenoverseAndroidDisplay)
Graphics.fullscreen = true
