ActiveSupport::Notifications.subscribe "perform.active_job" do |_, started, ended, id, payload|
  job = payload[:job]
  if job.respond_to?(:exception)
    # send/update failure metrics
  else
    duration = ended - started
    # send/update jobs count/duration metrics with a payload like:
    # { name: "job_run", job: payload , duration: duration }
  end
end

