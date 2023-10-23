class Group < ApplicationRecord
  before_create :generate_random_uuid

  private
  def generate_random_uuid
    begin
      self.id = SecureRandom.uuid
    end while Model.where(id: self.id).exists?
  end
end
