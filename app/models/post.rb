class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: ['Fiction', 'Non-Fiction']}
  validates :title, exclusion: {in: ["True Facts"]}









  # validates :category, {"Fiction" || "Non-Fiction"}


  #why didn't this work?
  # validates :title, exclusion: {"True Facts"}


end
