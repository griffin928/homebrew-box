class Box < Formula
  desc "加密文件夹为单个二进制文件的命令行工具"
  homepage "https://github.com/griffin928/kangaroo-bin"
  url "https://github.com/griffin928/kangaroo-bin/raw/main/releases/kangaroo-1.0.69.tar.gz"
  sha256 "af76c044a29117f11406f56780fcff27884afd59159ff08c9b2f19c34e59fbce"
  license "专有"
  
  def install
    bin.install "box"
  end
  
  test do
    system "#{bin}/box", "--version"
  end
end
