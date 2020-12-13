class UserJob < ApplicationJob
  def perform
    10000000.times.to_a.reduce(:+)
  end
end