module Animotion
  def slide_to(time, frame)
    animate time do
      UIView.setAnimationTransition(UIViewAnimationTransitionNone, forView:self, cache: true)
      self.setFrame frame
    end
  end
end