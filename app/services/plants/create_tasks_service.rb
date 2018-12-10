module Plants
  class CreateTasksService
    def initialize(plant)
      @plant = plant
    end

    def call
      # TODO: create les tasks
      Task.create!(plant: @plant, action: @plant.specie.actions[0], max_date: '2018-12-11', done: false)
      Task.create!(plant: @plant, action: @plant.specie.actions[1], max_date: '2018-12-11', done: false)
      Task.create!(plant: @plant, action: @plant.specie.actions[2], max_date: '2018-12-11', done: false)
      Task.create!(plant: @plant, action: @plant.specie.actions[3], max_date: '2018-12-11', done: false)
      Task.create!(plant: @plant, action: @plant.specie.actions[4], max_date: '2018-12-11', done: false)

    end
  end
end
