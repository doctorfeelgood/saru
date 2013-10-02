module ApplicationHelper

def spanish_month(month)
  	mes = case month
  		when 1 then 'Ene'
  		when 2 then 'Feb'
  		when 3 then 'Mar'
  		when 4 then 'Abr'
  		when 5 then 'May'
  		when 6 then 'Jun'
  		when 7 then 'Jul'
  		when 8 then 'Ago'
  		when 9 then 'Sep'
  		when 10 then 'Oct'
  		when 11 then 'Nov'
  		when 12 then 'Dic'
  		else 'No es un mes'
  	end
  	mes
  end
end
