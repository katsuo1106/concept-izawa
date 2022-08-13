class Iro < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '黒' },
    { id: 3, name: '赤' },
    { id: 4, name: '白' },
  ]

  include ActiveHash::Associations
  has_many :wires
  
  end