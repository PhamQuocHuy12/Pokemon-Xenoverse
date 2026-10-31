# Android window management replaces the legacy Windows handle lookup.
class Win32API
  def self.SetWindowText(text)
    System.set_window_title(text.to_s)
  end
  def self.pbFindRgssWindow
    0
  end
end
