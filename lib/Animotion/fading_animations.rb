module Animotion
  def fade_out(time=1, opts={})
    animate time do
      self.alpha = 0
    end
    if opts[:remove] && opts[:remove] == true
      run_after time do
        self.removeFromSuperview  
      end 
    end
  end

  def fade_in(time=1)
    animate time do
      self.alpha = 1
    end
  end

  # Taken from bubblewrap
  # https://github.com/rubymotion/BubbleWrap
  # https://github.com/rubymotion/BubbleWrap/blob/master/motion/core/app.rb lines 60-66 as of 9-17-12
  def run_after(delay, &block)
    NSTimer.scheduledTimerWithTimeInterval( delay,
                                            target: block,
                                            selector: "call:",
                                            userInfo: nil,
                                            repeats: false)
  end

  def fade_to(opacity, time=1)
    animate time do
      self.alpha = opacity
    end
  end

  def fade_toggle(time=1)
    opacity ||= 0
    opacity = 1 if self.opacity == 0
    animate time do
      self.alpha = opacity
    end
  end
end