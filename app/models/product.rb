# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  description :text             not null
#  price       :float            not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  picture_url :string           not null
#  department  :string           not null
#
class Product < ApplicationRecord
    # validates :name, :description, :price, presence: true
    has_many :reviews

    def self.search_query_match(query)
        self.where("LOWER(name) LIKE ?", "%" + query.downcase + "%")
    end

    def average_rating
        reviews.average(:rating)
    end

    def total_reviews
        reviews.count(:rating)
    end
end
