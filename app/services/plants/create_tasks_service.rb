module Plants
  class CreateTasksService
    def initialize(plant)
      @plant = plant
    end

    def call
      # TODO: create les tasks
      Task.create!(plant: @plant, action: water_cactus, max_date: '2018-12-08', done: false)
    end
  end
end
