  # Load the Rails application.
  require_relative 'application'

  # Initialize the Rails application.
  Rails.application.initialize!
  # Speed up tests by lowering bcrypt's cost function.
  ActiveModel::SecurePassword.min_cost = true

