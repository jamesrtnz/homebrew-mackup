class Mackup < Formula
  include Language::Python::Virtualenv

  desc "Keep your Mac's application settings in sync"
  homepage "https://github.com/jamesrtnz/mackup"
  url "https://github.com/jamesrtnz/mackup/releases/download/0.8.37b/mackup-0.8.37b0.tar.gz"
  sha256 "203d8e0684c9cfcb6affaee37a62bcc0760a056b0fa96bda4a026d77894cce70"
  version "0.8.37b"
  license "GPL-3.0-or-later"
  head "https://github.com/jamesrtnz/mackup.git", branch: "master"

  depends_on "python@3.11"
  depends_on "six"

  resource "docopt" do
    url "https://files.pythonhosted.org/packages/a2/55/8f8cab2afd404cf578136ef2cc5dfb50baa1761b68c9da1fb1e4eed343c9/docopt-0.6.2.tar.gz"
    sha256 "49b3a825280bd66b3aa83585ef59c4a8c82f2c8a522dbe754a8bc8d08c85c491"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/mackup", "--help"
  end
end
