module Plants
  class CreateTasksService
    def initialize(plant)
      @plant = plant
    end

    def call
      # TODO: create les tasks
      Task.create!(plant: @plant, action: @plant.specie.actions.first, max_date: '2018-12-08', done: false)
      # Task.create!(plant: @plant, action: @plant.specie.actions.where(name: 'cut'), max_date: '2018-12-08', done: false)

    end
  end
end
