# frozen_string_literal: true
#
# OVERRIDE Bulkrax v9.3.1  – send perform_now instead of perform_later
#                            always - for benchmarking purposes
# Remove when: Testing is complete

# module Bulkrax
#   module ApplicationParserDecorator
#     def perform_method
#       # Don't schedule for later if we're already running in the background
#       GoodJob::CLI.within_exe? ? 'perform_now' : 'perform_later'
#     end
#   end
# end
#
# Bulkrax::ApplicationParser.prepend(Bulkrax::ApplicationParserDecorator)
