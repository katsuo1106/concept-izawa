class Wire < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :kei
  belongs_to :iro

  validates :hinban, presence: true
  validates :chumon, presence: true
  validates :chumonlog, presence: true
  validates :zaiko, presence: true
  validates :zaikolog, presence: true
  validates :kei_id, presence: true, numericality: { other_than: 1 }
  validates :iro_id, presence: true, numericality: { other_than: 1 }
  validates :nagasa, presence: true
  validates :tanka, presence: true
end
