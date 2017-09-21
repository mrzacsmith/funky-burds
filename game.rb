require 'gosu'
class GameWindow <Gosu::Window
  def initialize(*args)
    super
    self.caption = 'Funky Burds'

    @background = Gosu::Image.new(self, './images/background.png', false)
  end
  def button_down(button)
    close if button == Gosu::KbEscape
  end

end
window = GameWindow.new(800,600).show
