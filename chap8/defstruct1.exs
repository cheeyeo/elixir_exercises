defmodule Attendee do
  @derive Access
  defstruct name: "", paid: false, over_18: true

  def may_attend_after_party(attendee = %Attendee{}) do
    attendee.paid && attendee.over_18
  end

  def print_vip_badge(%Attendee{name: name}) when name != "" do
    IO.puts "Very cheap badge for #{name}"
  end

  def print_vip_badge(%Attendee{}) do
    raise "missing name for badge"
  end
end

# a1 = %Attendee{name: "Dave", over_18: true}
# Attendee.may_attend_after_party(a1)

# a2 = %Attendee{a1 | paid: true}
# Attendee.may_attend_after_party(a2)

# Attendee.print_vip_badge(a2)

# a3 = %Attendee{}

# Attendee.print_vip_badge(a3)
