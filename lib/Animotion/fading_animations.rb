module Animotion
  def fadeout(view, time=1)
    animate time do
      view.alpha = 0
    end
  end

  def fadein(view, time=1)
    animate time do
      view.alpha = 1
    end
  end
end