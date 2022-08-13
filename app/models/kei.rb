class Kei < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '#12' },
    { id: 3, name: '#14' },
  ]

  include ActiveHash::Associations
  has_many :wires
  
  end