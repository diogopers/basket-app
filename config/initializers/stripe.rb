Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_v6JlifjHulyvy9AWXHQ7FbEl'],
  secret_key:      ENV['sk_test_Lt6BxaTrtaLnKMjMmy1mQM6x']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
