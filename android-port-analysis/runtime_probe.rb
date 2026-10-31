# Run as a preload script on the Android candidate runtime, before game scripts.
# Only inspects API presence and creates/deletes a temporary save-directory probe.
required = {
  :System => [:uptime, :data_directory, :user_language, :power_state, :set_window_title],
  :Graphics => [:delta, :resize_screen, :scale, :center, :play_movie, :snap_to_bitmap],
  :Input => [:trigger?, :repeat?, :press?, :triggerex?, :repeatex?, :time?, :text_input],
  :Bitmap => [:new, :max_size],
  :HTTPLite => [:get, :post_body]
}
puts '[Xenoverse probe] Ruby ' + RUBY_VERSION
required.each do |name, methods|
  object = Object.const_defined?(name) ? Object.const_get(name) : nil
  methods.each { |method| puts "[Xenoverse probe] #{name}.#{method}: #{object && object.respond_to?(method) ? 'present' : 'MISSING'}" }
end
if defined?(System) && System.respond_to?(:data_directory)
  directory = System.data_directory
  puts "[Xenoverse probe] save directory: #{directory}"
  begin
    require 'tempfile'
    Tempfile.create(['xenoverse-probe-', '.tmp'], directory) do |file|
      file.write('save probe'); file.flush
      puts '[Xenoverse probe] save directory writable'
    end
  rescue StandardError => error
    puts "[Xenoverse probe] save directory FAILED: #{error.class}: #{error.message}"
  end
end
puts '[Xenoverse probe] Presence checks do not validate API behavior.'
