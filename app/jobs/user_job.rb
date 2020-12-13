class UserJob < ApplicationJob
  def perform
    100000000.times.to_a.reduce(:+)
  end
end