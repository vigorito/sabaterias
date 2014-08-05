require 'test_helper'

class ProdutoVendasControllerTest < ActionController::TestCase
  setup do
    @produto_venda = produto_vendas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produto_vendas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produto_venda" do
    assert_difference('ProdutoVenda.count') do
      post :create, produto_venda: { produto_id: @produto_venda.produto_id, quantidade: @produto_venda.quantidade, valor_venda: @produto_venda.valor_venda, venda_id: @produto_venda.venda_id }
    end

    assert_redirected_to produto_venda_path(assigns(:produto_venda))
  end

  test "should show produto_venda" do
    get :show, id: @produto_venda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produto_venda
    assert_response :success
  end

  test "should update produto_venda" do
    patch :update, id: @produto_venda, produto_venda: { produto_id: @produto_venda.produto_id, quantidade: @produto_venda.quantidade, valor_venda: @produto_venda.valor_venda, venda_id: @produto_venda.venda_id }
    assert_redirected_to produto_venda_path(assigns(:produto_venda))
  end

  test "should destroy produto_venda" do
    assert_difference('ProdutoVenda.count', -1) do
      delete :destroy, id: @produto_venda
    end

    assert_redirected_to produto_vendas_path
  end
end
