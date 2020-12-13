Pubsueque.configure do |config|
  config.queues = ["default", "greatest", "morgue"]
  config.retry_interval = 300
end