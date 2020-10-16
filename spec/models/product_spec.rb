require 'rails_helper'

describe Product do
  it("titleizes the name of an product") do
    product = Product.create({name: "alex"})
    expect(product.name).to(eq("Alex"))
  end

  
  it { should have_many(:reviews) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country_of_origin }

  end
