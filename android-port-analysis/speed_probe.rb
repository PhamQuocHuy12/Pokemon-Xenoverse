# Finite test using a real shipped music file; never changes audio pitch.
raw_clock = Process.clock_gettime(Process::CLOCK_MONOTONIC)
game_clock = System.uptime
track = Dir.glob('Audio/BGM/*').find { |p| File.extname(p).downcase == '.ogg' }
Audio.bgm_play(track, 80, 100)
start_pos = Audio.bgm_pos
while Process.clock_gettime(Process::CLOCK_MONOTONIC) - raw_clock < 3.0
  Graphics.update
end
real_elapsed = Process.clock_gettime(Process::CLOCK_MONOTONIC) - raw_clock
result = { real_seconds: real_elapsed, game_seconds: System.uptime - game_clock,
           audio_position_seconds: Audio.bgm_pos - start_pos, track: track }
File.write('speed-probe.txt', result.inspect)
Audio.bgm_stop
