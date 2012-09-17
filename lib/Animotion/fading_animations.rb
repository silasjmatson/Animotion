module Animotion
  def fadeout(view, time=1, opts={})
    animate time do
      view.alpha = 0
    end
    if opts[:remove] && opts[:remove] == true
      run_after time do
        view.removeFromSuperview  
      end 
    end
  end

  def fadein(view, time=1)
    animate time do
      view.alpha = 1
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
end