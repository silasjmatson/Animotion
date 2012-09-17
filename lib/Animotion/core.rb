module Animotion
  def animate(duration, &block)
    return false unless block_given?

    UIView.beginAnimations(nil, context:nil)
    UIView.setAnimationDuration duration
    
    yield
    
    UIView.commitAnimations
  end

  # Taken from bubblewrap
  #  -- trying to stay dependency free
  #
  # https://github.com/rubymotion/BubbleWrap
  # https://github.com/rubymotion/BubbleWrap/blob/master/motion/core/app.rb lines 60-66 as of 9-17-12
  # 
  def run_after(delay, &block)
    NSTimer.scheduledTimerWithTimeInterval( delay,
                                            target: block,
                                            selector: "call:",
                                            userInfo: nil,
                                            repeats: false)
  end

  def hide
    self.alpha = 0
  end

  def show
    self.alpha = 1
  end

end