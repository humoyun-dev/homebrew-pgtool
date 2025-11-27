class Pgtool < Formula
  desc "CLI to install and manage PostgreSQL users & databases"
  homepage "https://github.com/humoyun-dev/pgtool"
  url "https://github.com/humoyun-dev/pgtool/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "ca6d8035f9e03c60feae2ac3e23f0eac93da9e4d49c3f718c902b1791b6bca19"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "."
  end

  test do
    system "#{bin}/pgtool", "--help"
  end
end
