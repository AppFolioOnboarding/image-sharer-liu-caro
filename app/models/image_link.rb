class ImageLink < ApplicationRecord
  validates :url, presence: true, format: {
    with: %r{/((https?):\/\/)?[a-z0-9]*/},
    message: 'Please enter a valid URL'
  }
end
