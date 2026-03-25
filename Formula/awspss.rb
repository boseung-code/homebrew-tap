class Awspss < Formula
  include Language::Python::Virtualenv

  desc "AWS Identity Center Permission Sets Switcher"
  homepage "https://github.com/boseung-code/awsps"
  url "https://files.pythonhosted.org/packages/source/a/awspss/awspss-0.1.0.tar.gz"
  sha256 ""
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "AWS Identity Center", shell_output("#{bin}/awspss --help")
  end
end
