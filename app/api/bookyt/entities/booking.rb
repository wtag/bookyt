module Bookyt
  module Entities
    class Booking < Bookyt::Entities::Base
      expose :id
      expose :title
      expose :credit_account_id
      expose :debit_account_id
      expose :comments

      with_options(format_with: :iso_timestamp) do
        expose :value_date
      end

      with_options(format_with: :string) do
        expose :amount
      end
    end
  end
end