require 'test_helper'

class AnteproyectosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anteproyecto = anteproyectos(:one)
  end

  test "should get index" do
    get anteproyectos_url
    assert_response :success
  end

  test "should get new" do
    get new_anteproyecto_url
    assert_response :success
  end

  test "should create anteproyecto" do
    assert_difference('Anteproyecto.count') do
      post anteproyectos_url, params: { anteproyecto: { cronograma: @anteproyecto.cronograma, descripcionactividad: @anteproyecto.descripcionactividad, direccionempresa: @anteproyecto.direccionempresa, estatus: @anteproyecto.estatus, justificacion: @anteproyecto.justificacion, nombre: @anteproyecto.nombre, nombreempresa: @anteproyecto.nombreempresa, objetivo: @anteproyecto.objetivo, telefonoempresa: @anteproyecto.telefonoempresa } }
    end

    assert_redirected_to anteproyecto_url(Anteproyecto.last)
  end

  test "should show anteproyecto" do
    get anteproyecto_url(@anteproyecto)
    assert_response :success
  end

  test "should get edit" do
    get edit_anteproyecto_url(@anteproyecto)
    assert_response :success
  end

  test "should update anteproyecto" do
    patch anteproyecto_url(@anteproyecto), params: { anteproyecto: { cronograma: @anteproyecto.cronograma, descripcionactividad: @anteproyecto.descripcionactividad, direccionempresa: @anteproyecto.direccionempresa, estatus: @anteproyecto.estatus, justificacion: @anteproyecto.justificacion, nombre: @anteproyecto.nombre, nombreempresa: @anteproyecto.nombreempresa, objetivo: @anteproyecto.objetivo, telefonoempresa: @anteproyecto.telefonoempresa } }
    assert_redirected_to anteproyecto_url(@anteproyecto)
  end

  test "should destroy anteproyecto" do
    assert_difference('Anteproyecto.count', -1) do
      delete anteproyecto_url(@anteproyecto)
    end

    assert_redirected_to anteproyectos_url
  end
end
