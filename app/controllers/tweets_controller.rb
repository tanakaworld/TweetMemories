class TweetsController < ApplicationController
  def gettimeline
    # TODO ユーザ情報をグローバルにせず、引き渡す方法は？
    if $current_user && $client
      @timelinebuff = $client.user_timeline
      @result = :success
    else
      @result = :not_signed_in
    end
    render "tweets/index"
  end
end
