require 'test_helper'

class MultadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @multado = multados(:one)
  end

  test "should get index" do
    get multados_url
    assert_response :success
  end

  test "should get new" do
    get new_multado_url
    assert_response :success
  end

  test "should create multado" do
    assert_difference('Multado.count') do
      post multados_url, params: { multado: { Prestamo_id: @multado.Prestamo_id, estado: @multado.estado, fecha: @multado.fecha, valor: @multado.valor } }
    end

    assert_redirected_to multado_url(Multado.last)
  end

  test "should show multado" do
    get multado_url(@multado)
    assert_response :success
  end

  test "should get edit" do
    get edit_multado_url(@multado)
    assert_response :success
  end

  test "should update multado" do
    patch multado_url(@multado), params: { multado: { Prestamo_id: @multado.Prestamo_id, estado: @multado.estado, fecha: @multado.fecha, valor: @multado.valor } }
    assert_redirected_to multado_url(@multado)
  end

  test "should destroy multado" do
    assert_difference('Multado.count', -1) do
      delete multado_url(@multado)
    end

    assert_redirected_to multados_url
  end
end
