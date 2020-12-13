class ExceptionJob < ApplicationJob
  pubsueque_options retries: 3, queue_name: :greatest
  def perform
    raise "Exception on purpose"
  end
end