class Pgtool < Formula
  desc "CLI to install and manage PostgreSQL users & databases"
  homepage "https://github.com/humoyun-dev/pgtool"
  url "https://github.com/humoyun-dev/pgtool/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "a4bf0db878a9cc7a17816886148a99ec1595f3626da7f967aaa969eb063552f4"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "."
  end

  test do
    system "#{bin}/pgtool", "--help"
  end
end
