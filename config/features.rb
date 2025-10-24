# frozen_string_literal: true

Flipflop.configure do
  feature :deterministic_jobs,
          default: false,
          description: "Run jobs inline when called within a background process"
end
