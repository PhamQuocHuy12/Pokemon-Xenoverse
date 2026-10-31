require 'zlib'
$MKXP = true
ENV['TEMP'] = File.expand_path('Temp')
Dir.mkdir(ENV['TEMP']) unless File.directory?(ENV['TEMP'])
module XenoverseAndroidDisplay155
  def scale=(_factor); end
  def center; end
  def fullscreen=(_enabled); super(true); end
end
Graphics.singleton_class.prepend(XenoverseAndroidDisplay155)
Graphics.fullscreen = true
Graphics.resize_screen(512,384)

# Classic Essentials uses frame-counted simulation. Keep its reported base rate
# while changing the native scheduler; audio playback stays on its own clock.
module XenoverseSpeed155
  FACTOR = File.exist?('speed_config.rb') && File.read('speed_config.rb').to_f == 2.0 ? 2 : 1
end
module XenoverseFrameRate155
  def frame_rate
    super / XenoverseSpeed155::FACTOR
  end
  def frame_rate=(base)
    super((base * XenoverseSpeed155::FACTOR).round)
  end
end
base_rate = Graphics.frame_rate
Graphics.singleton_class.prepend(XenoverseFrameRate155)
Graphics.frame_rate = base_rate
