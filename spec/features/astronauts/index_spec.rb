require "rails_helper"

describe "As a visitor" do
  describe "When I visit '/astronauts'" do
    before :each do
      @astro1 = Astronaut.create!(name: "Bob", age: 34, job: "Commander")
      @astro2 = Astronaut.create!(name: "Jill", age: 34, job: "Private")
      @astro3 = Astronaut.create!(name: "Joe", age: 34, job: "Colonel")
      @astro4 = Astronaut.create!(name: "Has", age: 34, job: "Lieutenant")

      @mission1 = Mission.create!(title: "Mission to Mars", time_in_space: 20)
      @mission2 = Mission.create!(title: "Mission to Moon", time_in_space: 1)
      @mission3 = Mission.create!(title: "Mission to Sun", time_in_space: 80)

      @w = AstronautMission.create!(astronaut: @astro1, mission: @mission1)
      @x = AstronautMission.create!(astronaut: @astro1, mission: @mission2)
      @y = AstronautMission.create!(astronaut: @astro2, mission: @mission3)
      @z = AstronautMission.create!(astronaut: @astro3, mission: @mission3)
    end

    it "I see a list of astronauts with the following info:" do
      visit astronauts_path
      
      expect(page).to have_content("Astronauts")

      within("#astronaut-#{@astro1.id}") do
        expect(page).to have_content(@astro1.name)
        expect(page).to have_content("Age: #{@astro1.age}")
        expect(page).to have_content("Job: #{@astro1.job}")
      end

      within("#astronaut-#{@astro2.id}") do
        expect(page).to have_content(@astro2.name)
        expect(page).to have_content("Age: #{@astro2.age}")
        expect(page).to have_content("Job: #{@astro2.job}")
      end

      within("#astronaut-#{@astro3.id}") do
        expect(page).to have_content(@astro3.name)
        expect(page).to have_content("Age: #{@astro3.age}")
        expect(page).to have_content("Job: #{@astro3.job}")
      end

      within("#astronaut-#{@astro4.id}") do
        expect(page).to have_content(@astro4.name)
        expect(page).to have_content("Age: #{@astro4.age}")
        expect(page).to have_content("Job: #{@astro4.job}")
      end
    end

    it 'I see the average age of all astronauts.' do
      visit astronauts_path
      
      expect(page).to have_content("Average age: #{Astronaut.average_age}")
    end
  end
end
