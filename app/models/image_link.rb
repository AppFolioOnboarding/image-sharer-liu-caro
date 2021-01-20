class ImageLink < ApplicationRecord
  validates :url, presence: true, format: {
    with: %r{/((https?):\/\/)?(www.)?[a-z0-9]+\.[a-z]+(\/[a-zA-Z0-9#]+\/?)*/} % r,
    message: 'Please enter a valid URL'
  }
end
