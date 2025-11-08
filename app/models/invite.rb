class Invite < ApplicationRecord
  belongs_to :from_user, class_name: "User"
  belongs_to :to_user, class_name: "User"
  enum :status, { pending: 0, accepted: 1, declined: 2 }
end
