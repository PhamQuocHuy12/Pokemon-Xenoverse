# Scale the simulation clock, leaving native audio playback and pitch untouched.
module XenoverseSpeed
  FACTOR = File.exist?('speed_config.rb') ? (File.read('speed_config.rb').to_f == 1.0 ? 1.0 : 2.0) : 2.0
end
module XenoverseSimulationClock
  def uptime
    # This Android engine exposes microseconds; Essentials 21.1 expects seconds.
    super * XenoverseSpeed::FACTOR / 1_000_000.0
  end
end
module XenoverseSimulationDelta
  def delta
    super * XenoverseSpeed::FACTOR / 1_000_000.0
  end
end
System.singleton_class.prepend(XenoverseSimulationClock)
Graphics.singleton_class.prepend(XenoverseSimulationDelta)
