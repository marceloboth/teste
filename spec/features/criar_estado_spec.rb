require 'spec_helper'

feature 'Criando Estados' do
  before do
    visit estados_path
    click_link 'Novo'
  end

  scenario "pode criar estados" do
    fill_in 'Nome', with: 'Santa Catarina'
    fill_in 'Sigla', with: 'SC'

    click_button 'Salvar'
    expect(page).to have_content('Estado foi criado com sucesso.')

    estado = Estado.where(nome: "Santa Catarina").first
    expect(page.current_url).to eql(estado_url(estado))

    expect(page).to have_title(estado.nome)
  end
end
