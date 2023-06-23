class Mackup < Formula
  include Language::Python::Virtualenv

  desc "Keep your Mac's application settings in sync"
  homepage "https://github.com/jamesrtnz/mackup"
  url "https://github.com/jamesrtnz/mackup/releases/download/0.8.37a/mackup-0.8.37a0.tar.gz"
  sha256 "d0f8ae49c754d5fff1b416a6f5fbd91d6b23e136cc63bb186af0197de0da1f60"
  version "0.8.37a"
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
