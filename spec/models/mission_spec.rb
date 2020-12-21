require 'rails_helper'

describe Mission, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :time_in_space }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :astronauts}
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

    it '::sort_alphabetically' do
      expect(Mission.sort_alphabetically).to eq([@mission1, @mission2, @mission3])
    end
  end
end
