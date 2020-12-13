class JobsJob < ApplicationJob
  pubsueque_options retries: 3, queue_name: :default
  def perform
    Net::HTTP.get(URI("https://litmus.com"))
  end
end