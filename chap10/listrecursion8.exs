defmodule TaxCalc do
  def orders_with_total(orders, tax_rates) do
    orders |> Enum.map(&(calc_total(&1,tax_rates))) |> Enum.sort
  end

  def calc_total(order = [id: _, ship_to: state, net_amount: net], tax_rates) do
    tax_rate = Keyword.get(tax_rates, state, 0)
    tax = net * tax_rate
    total_amount = net + tax
    Keyword.put_new(order, :total_amount, total_amount)
  end

end

tax_rates =  [ NC: 0.075, TX: 0.08 ]

# list of Keyword list
orders = [
  [ id: 123, ship_to: :NC, net_amount: 100.00 ],
  [ id: 124, ship_to: :OK, net_amount:  35.50 ],
  [ id: 125, ship_to: :TX, net_amount:  24.00 ],
  [ id: 126, ship_to: :TX, net_amount:  44.80 ],
  [ id: 127, ship_to: :NC, net_amount:  25.00 ],
  [ id: 128, ship_to: :MA, net_amount:  10.00 ],
  [ id: 129, ship_to: :CA, net_amount: 102.00 ],
  [ id: 120, ship_to: :NC, net_amount:  50.00 ]
]

IO.inspect TaxCalc.orders_with_total(orders, tax_rates)
