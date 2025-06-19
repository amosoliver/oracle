# config/initializers/inflections.rb

ActiveSupport::Inflector.inflections(:en) do |inflect|
  
    inflect.irregular 'g_pais', 'g_paises'
    inflect.irregular 'g_estado', 'g_estados'
    inflect.irregular 'g_municipio', 'g_municipios'
    inflect.irregular 'i_predio', 'i_predios'
    inflect.irregular 'i_ambiente_predial', 'i_ambientes_prediais'
    inflect.irregular 'r_contrato_servidor', 'r_contrato_servidores'
    inflect.irregular 'r_organizacional', 'r_organizacionais'
    inflect.irregular 'r_tipo_organizacional', 'r_tipos_organizacionais'
    inflect.irregular 'r_estrutura_organizacional', 'r_estruturas_organizacionais'
    inflect.irregular 'r_lotacao_organizacional', 'r_lotacoes_organizacionais'
  end
  
  