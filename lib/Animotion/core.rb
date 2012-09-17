module Animotion
  def animate(duration, &block)
    return false unless block_given?

    UIView.beginAnimations(nil, context:nil)
    UIView.setAnimationDuration duration
    
    yield
    
    UIView.commitAnimations
  end
end