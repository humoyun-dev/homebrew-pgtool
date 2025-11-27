class Pgtool < Formula
  desc "CLI to install and manage PostgreSQL users & databases"
  homepage "https://github.com/humoyun-dev/pgtool"
  url "https://github.com/humoyun-dev/pgtool/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "dbd1ec45862633288e1c7f9353e3bba8971f4a498ff746af73d595d6a8645956"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "."
  end

  test do
    system "#{bin}/pgtool", "--help"
  end
end
