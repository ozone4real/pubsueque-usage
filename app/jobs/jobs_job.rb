class JobsJob < ApplicationJob
  def perform
    Net::HTTP.get(URI("https://litmus.com"))
  end
end