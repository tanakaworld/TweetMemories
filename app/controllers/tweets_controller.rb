class TweetsController < ApplicationController
  def gettimeline
    if @current_user
      @timelinebuff = @current_user.client.user_timeline
      @result = :success
    else
      @result = :not_signed_in
    end
  end
end
