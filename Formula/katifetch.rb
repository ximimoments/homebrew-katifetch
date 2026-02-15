class Katifetch < Formula
  desc "Minimal and customizable neofetch-like system info tool"
  homepage "https://github.com/ximimoments/katifetch"
  url "https://github.com/ximimoments/katifetch/releases/download/13.1/katifetch-13.1.tar.gz"
  sha256 "9e0f8d6e20cd7dc874c748732e500121b4c6de0f1ea8438ec7d52d461936410c"
  license "MIT"

  def install
    cd "katifetch-main" do
      bin.install "katifetch.sh" => "katifetch"

      pkgshare.install "logos"
      pkgshare.install "themes"
      pkgshare.install "assets"
    end
  end

  test do
    system "#{bin}/katifetch", "--help"
  end
end
