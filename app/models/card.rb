class Card < ApplicationRecord
  ISSUERS = ['American Express', 'Bank of America', 'Barclays', 'Capital One', 'Chase', 'Citi', 'Discover',
             'Synchrony', 'U.S. Bank', 'Wells Fargo'].freeze
  NETWORKS = ['American Express', 'Discover', 'Mastercard', 'Visa'].freeze

  validates :card_name, :network, :issuer, presence: true
end
