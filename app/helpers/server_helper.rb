# frozen_string_literal: true

# serv helper
module ServerHelper

  def self.result_array(user_input)
    arr = (1..user_input).select {
      |i| i.to_s.reverse == i.to_s && i.to_s(2).reverse == i.to_s(2)
    }
    [arr, arr.map { |elem| elem.to_s(2).reverse.to_i }]
  end
end
