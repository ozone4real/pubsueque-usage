class ExceptionJob < ApplicationJob
  pubsueque_options queue_name: :greatest
  def perform
    raise "Exception on purpose"
  end
end