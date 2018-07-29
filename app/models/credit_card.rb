class CreditCard < ApplicationRecord
  validates :number, :card_name, :cvv, :exp_month, :exp_year, presence:  true
=begin
  validates :card_name, format: { with: /\A[a-zA-Z]+\z/,
                                 message: "only allows letters" }
=end

=begin
  validates :exp_month, format: { with: /\A[a-zA-Z]+\z/,
                                  message: "only allows letters" }
=end

=begin
  validates :number, format: { with: /\A[a-zA-Z]+\z/,
                                  message: "only allows letters" }
=end
end
