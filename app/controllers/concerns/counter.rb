module Counter

  private 
  def increaseCounter 
    if session[:counter].nil?
      session[:counter] = 1
    else 
      @counter = session[:counter] = session[:counter] + 1
    end
  end

  def resetCounter
    session[:counter] = 0
  end

end