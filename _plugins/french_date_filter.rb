module FrenchDateFilter
  MONTHS = %w(Janvier Février Mars Avril Mai Juin Juillet Août Septembre Octobre Novembre Décembre)
  DAYS = %w(Dimanche Lundi Mardi Mercredi Jeudi Vendredi Samedi)

  def french_date(input)
    day = DAYS[input.strftime("%w").to_i]
    month = MONTHS[input.strftime("%-m").to_i - 1]
    date = input.strftime("%e")
    year = input.strftime("%Y")
    "#{day}, #{date} #{month} #{year}"
  end
end

Liquid::Template.register_filter(FrenchDateFilter)
