# Desktop window chrome and positioning do not apply to the Android Activity.
class Win32API
  def self.SetWindowText(text); System.set_window_title(text.to_s); end
  def self.pbFindRgssWindow; 0; end
  def self.focusWindow; end
  def self.changeBorders(type); end
  def self.setScreenCustom(width=512,height=384,borders=true)
    Graphics.resize_screen(width,height)
    [width,height]
  end
  def self.SetWindowPos(width,height); end
  def self.client_size; [Graphics.width,Graphics.height]; end
  def self.GetWindowRect; Rect.new(0,0,Graphics.width,Graphics.height); end
end
