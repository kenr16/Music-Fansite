require 'rails_helper'

describe Album do
  it { should validate_presence_of :name }
  it { should validate_presence_of :artist }
  it { should validate_presence_of :genre }
  it { should validate_presence_of :image }
end
