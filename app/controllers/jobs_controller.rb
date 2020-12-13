class JobsController < ApplicationController
  def index
    JobsJob.set(wait_until: 30.seconds).perform_later
    UserJob.perform_later
    ExceptionJob.perform_later
  end
end