class Answer < ActiveRecord::Base
  validates_uniqueness_of :email
  validates_presence_of :name, :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  
  validates_inclusion_of :invite, :in => [true, false], :message => "Por favor, escolha Sim ou Não."
  attr_accessible :name, :email, :invite, :guests
end
