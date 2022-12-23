# frozen_string_literal: true

# Palindroms controller
class ServerController < ApplicationController
  before_action :convert_param, only: :result
  def index; end

  def result
    @res_arr, @binary_arr = ServerHelper.result_array(@user_input)
    i = -1
    @xml_arr = Array.new(@res_arr.size) do
      i += 1
      { num: @res_arr[i], bin: @binary_arr[i] }
    end
    respond_to do |format|
      format.html
      format.xml { render xml: @xml_arr }
    end
  end

  private

  def convert_param
    @user_input = params[:user_input].to_i
  end
end
