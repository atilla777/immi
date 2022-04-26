class City < ApplicationRecord
  belongs_to :parent, class_name: 'City', optional: true
end
