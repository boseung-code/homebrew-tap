class Awspss < Formula
  include Language::Python::Virtualenv

  desc "AWS Identity Center Permission Sets Switcher"
  homepage "https://github.com/boseung-code/awspss"
  url "https://files.pythonhosted.org/packages/source/a/awspss/awspss-0.3.0.tar.gz"
  sha256 "c2dde64ef1b092e54d5b98695ceade652cacbc0dfffcec9d01e8609d84d6a1fa"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "AWS Identity Center", shell_output("#{bin}/awspss --help")
  end
end
