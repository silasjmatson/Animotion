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

  def fade_to(opacity, time=1)
    animate time do
      self.alpha = opacity
    end
  end

  def fade_toggle(time=1)
    opacity = 1 - self.alpha

    animate time do
      self.alpha = opacity
    end
  end
end