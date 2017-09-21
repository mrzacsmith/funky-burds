require 'gosu'
class GameWindow <Gosu::Window
  def initialize(*args)
    super
    self.caption = 'Funky Burds'

    @scroll_x = 0
    @background = Gosu::Image.new(self, 'images/background.png', false)
    @foreground = Gosu::Image.new(self, 'images/foreground.png', true)
  end
  def button_down(button)
    close if button == Gosu::KbEscape
  end
  def update
    @scroll_x += 3
    if @scroll_x > @foreground.width
      @scroll_x = 0
    end
  end
  def draw
    @background.draw(0,0,0)
    @foreground.draw(-@scroll_x,0,0)
    @foreground.draw(-@scroll_x + @foreground .width,0,0)
  end

end


# Screen size
width = 320
height = 480
window = GameWindow.new(width, height, false).show
