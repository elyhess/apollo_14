require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe 'Class Methods' do
    before :each do
      @astro1 = Astronaut.create!(name: "Bob", age: 30, job: "Commander")
      @astro2 = Astronaut.create!(name: "Jill", age: 40, job: "Private")
      @astro3 = Astronaut.create!(name: "Joe", age: 35, job: "Colonel")
      @astro4 = Astronaut.create!(name: "Has", age: 32, job: "Lieutenant")

      @mission1 = Mission.create!(title: "Mission to Mars", time_in_space: 20)
      @mission2 = Mission.create!(title: "Mission to Moon", time_in_space: 1)
      @mission3 = Mission.create!(title: "Mission to Sun", time_in_space: 80)

      @w = AstronautMission.create!(astronaut: @astro1, mission: @mission1)
      @x = AstronautMission.create!(astronaut: @astro1, mission: @mission2)
      @y = AstronautMission.create!(astronaut: @astro2, mission: @mission3)
      @z = AstronautMission.create!(astronaut: @astro3, mission: @mission3)
    end

    it '::average_age' do
      expect(Astronaut.average_age).to eq(34.25)
    end
  end
end