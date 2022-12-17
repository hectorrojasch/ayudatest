require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "no se debería guardar con nombre invalido" do
    articles(:article_invalido_uno, :article_invalido_dos, :article_invalido_tres,
      :article_invalido_cuatro).each do |d|
      res = d.valid?
      assert_equal false, res, "DPNombre no está validando el dato del nombre #{d.nombre}"
    end
  end
end
