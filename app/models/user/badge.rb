class User
  class Badge
    attr_reader :id, :explanation, :description
    def initialize(id, explanation, description, fullfilment_condition)
      @id                    = id
      @explanation           = explanation
      @description           = description
      @fullfilment_condition = fullfilment_condition
    end

    def self.all
      all_badges_objects = BADGES_DATA.map do |id, information|
        Badge.new(id, information[:explanation], information[:description], information[:fullfilment_condition])
      end
      return all_badges_objects
    end

    def user_elligible?(user)
      @fullfilment_condition.call(user)
    end
  end
end
