module Plants
  class CreateTasksService
    def initialize(plant)
      @plant = plant
    end

    def call
      # TODO: create les tasks
      Task.create!(plant: @plant, action: @plant.specie.actions[0], max_date: Date.today, status: "pending")
      Task.create!(plant: @plant, action: @plant.specie.actions[1], max_date: Date.today + @plant.specie.actions[1].frequency_in_days, status: "pending")
      Task.create!(plant: @plant, action: @plant.specie.actions[2], max_date: Date.today + @plant.specie.actions[2].frequency_in_days, status: "pending")
      Task.create!(plant: @plant, action: @plant.specie.actions[3], max_date: Date.today + @plant.specie.actions[3].frequency_in_days, status: "pending")
      Task.create!(plant: @plant, action: @plant.specie.actions[4], max_date: Date.today + @plant.specie.actions[4].frequency_in_days, status: "pending")
    end
  end
end
