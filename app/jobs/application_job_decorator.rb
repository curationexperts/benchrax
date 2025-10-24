# frozen_string_literal: true
#
# OVERRIDE Hyrax 5.0-flexible  – preform jobs called on a bckground worker inline instead of queueing
#                                for benchmarking purposes
# Remove when: Testing is complete

module ApplicationJobDecorator
  def perform_later(...)
    if already_in_background?
      perform_now(...)
    else
      super
    end
  end

  def already_in_background?
    GoodJob::CLI.within_exe?
  end

  # def enqueue(...)
  #   debugger
  #   if already_in_background? && consolidated_job?
  #     perform_now(...)
  #   else
  #     super
  #   end
  # end
  #
  # def already_in_background?
  #   GoodJob::CLI.within_exe?
  # end
  #
  # def consolidated_job?
  #   self.class.in?([Bulkrax::ImportWorkJob, ValkyrieCharacterizationJob, ValkyrieCreateDerivativesJob,
  #                  ContentUpdateEventJob, ContentDepositEventJob, FileSetAttachedEventJob]) #ValkyrieIngestJob,
  # end
end

ApplicationJob.singleton_class.prepend(ApplicationJobDecorator)
