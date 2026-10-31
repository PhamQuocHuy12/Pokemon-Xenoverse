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

# Emulator-only diagnostics; this file is not included in the APK.
$android_exit_trace = TracePoint.new(:raise) do |point|
  exception = point.raised_exception
  if exception.is_a?(SystemExit) || exception.is_a?(SystemStackError)
    File.open('android-exit.txt','a') { |f| f.puts(exception.inspect, exception.backtrace) }
  end
end
$android_exit_trace.enable
at_exit do
  File.open('android-exit.txt','a') { |f| f.puts("Ruby exit: #{$!.inspect}") }
end

$android_last_lines = []
$android_line_trace = TracePoint.new(:line) do |point|
  next if point.path.include?('android155')
  $android_last_lines << [point.path, point.lineno]
  $android_last_lines.shift if $android_last_lines.length > 180
end
$android_line_trace.enable
at_exit do
  $android_line_trace.disable
  File.open('android-lines.txt','w') do |f|
    f.puts("scene=#{$scene.inspect} map=#{$game_map && $game_map.map_id}")
    $android_last_lines.each { |row| f.puts(row.join(':')) }
  end
end
