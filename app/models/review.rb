# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  headline   :string           not null
#  body       :string           default(""), not null
#  rating     :integer          not null
#  product_id :integer          not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Review < ApplicationRecord
    validates :rating, inclusion: { in: (1..5) }

    belongs_to :product
    belongs_to :author,
        class_name: :User
end
