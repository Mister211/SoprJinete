require "application_system_test_case"

class MultadosTest < ApplicationSystemTestCase
  setup do
    @multado = multados(:one)
  end

  test "visiting the index" do
    visit multados_url
    assert_selector "h1", text: "Multados"
  end

  test "creating a Multado" do
    visit multados_url
    click_on "New Multado"

    fill_in "Prestamo", with: @multado.Prestamo_id
    fill_in "Estado", with: @multado.estado
    fill_in "Fecha", with: @multado.fecha
    fill_in "Valor", with: @multado.valor
    click_on "Create Multado"

    assert_text "Multado was successfully created"
    click_on "Back"
  end

  test "updating a Multado" do
    visit multados_url
    click_on "Edit", match: :first

    fill_in "Prestamo", with: @multado.Prestamo_id
    fill_in "Estado", with: @multado.estado
    fill_in "Fecha", with: @multado.fecha
    fill_in "Valor", with: @multado.valor
    click_on "Update Multado"

    assert_text "Multado was successfully updated"
    click_on "Back"
  end

  test "destroying a Multado" do
    visit multados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Multado was successfully destroyed"
  end
end
