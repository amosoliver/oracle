# config/initializers/inflections.rb

ActiveSupport::Inflector.inflections(:en) do |inflect|
  
    inflect.irregular 'g_pais', 'g_paises'
    inflect.irregular 'g_estado', 'g_estados'
    inflect.irregular 'g_municipio', 'g_municipios'
    inflect.irregular 'i_predio', 'i_predios'
    inflect.irregular 'i_ambiente_predial', 'i_ambientes_prediais'
  
  end
  