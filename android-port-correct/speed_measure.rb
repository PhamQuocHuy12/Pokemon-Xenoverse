require './android155'
track = Dir.glob('Audio/BGM/*.mp3').first
Audio.bgm_play(track,80,100)
30.times { Graphics.update }
start_audio=Audio.bgm_pos
start_real=Process.clock_gettime(Process::CLOCK_MONOTONIC)
120.times { Graphics.update }
elapsed=Process.clock_gettime(Process::CLOCK_MONOTONIC)-start_real
File.write("speed-#{XenoverseSpeed155::FACTOR}.txt",
  {factor: XenoverseSpeed155::FACTOR,frames:120,seconds:elapsed,audio_seconds:Audio.bgm_pos-start_audio,reported_fps:Graphics.frame_rate,track:track}.inspect)
Audio.bgm_stop
loop { Graphics.update }
