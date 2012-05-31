class RootController < ApplicationController
  before_filter :set_content

  def set_content
    @length = params[:length] ? params[:length].to_i : 10_000
    @content = "A" * @length
  end

  def index
    if params[:content]
      if @content == params[:content]
        @message = "Request body is correct"
      else
        @message = "Request body is incorrect. Length = #{params[:content].size}"
      end
    end
  end
end
