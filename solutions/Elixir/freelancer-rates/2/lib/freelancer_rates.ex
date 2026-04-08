defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    (hourly_rate * 8.0)
  end

  def apply_discount(before_discount, discount) do
    percent = (discount / 100.0)
    disc_amt = (before_discount * percent)    
    before_discount - disc_amt
  end

  def monthly_rate(hourly_rate, discount) do
    trunc(Float.ceil(apply_discount(daily_rate(hourly_rate), discount) * 22))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    discounted_daily = apply_discount(daily_rate(hourly_rate), discount)
    Float.floor(budget / discounted_daily, 1)
  end
end
