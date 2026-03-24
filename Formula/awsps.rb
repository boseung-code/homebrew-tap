class Awsps < Formula
  include Language::Python::Virtualenv

  desc "AWS Identity Center Permission Set CLI"
  homepage "https://github.com/boseung-code/awsps"
  url "https://files.pythonhosted.org/packages/source/a/awsps/awsps-0.1.0.tar.gz"
  sha256 ""
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "AWS Identity Center", shell_output("#{bin}/awsps --help")
  end
end
