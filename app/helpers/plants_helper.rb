module PlantsHelper
  def svg(folder, specie_name, task_action_name)
    if task_action_name.nil?
      svg_filename = svg_name_for_action()
    else
      svg_filename = svg_name_for_action(task_action_name)
    end

    file_path = "#{Rails.root}/app/assets/images/#{folder}/#{specie_name}/#{svg_filename}.svg"
    return File.read(file_path).html_safe if File.exists?(file_path)
    '(not found)'
  end

  def svg_name_for_action(action_name = "neutral")
    case action_name
    when "water" then "thirsty"
    when "feed"  then "feed"
    when "pot"   then "repot"
    when "neutral" then "neutral"
    else
      "feelgood"
    end
  end
end
