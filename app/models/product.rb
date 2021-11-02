# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  description :text             not null
#  price       :float            not null
#  picture_url :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Product < ApplicationRecord
    # validates :name, :description, :price, presence: true
    def self.search_query_match(query)
        self.where("name LIKE ?", "%" + query + "%")
    end
end
