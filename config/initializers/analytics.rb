ActiveSupport::Notifications.subscribe "perform.active_job" do |_, started, ended, id, payload|
  job = payload[:job]
  if job.executions <= 1
    duration = ended - started
    puts "Took #{duration}s"
    # send/update jobs count/duration metrics with a payload like:
    # { name: "job_run", job: payload , duration: duration }
    if job.respond_to? :exception
      # send/update failure metrics
    end
  end
end
