class Box < Formula
  desc "加密文件夹为单个二进制文件的命令行工具"
  homepage "https://github.com/griffin928/kangaroo-bin"
  url "https://github.com/griffin928/kangaroo-bin/raw/main/releases/kangaroo-1.0.34.tar.gz"
  sha256 "8b3dc9bd1bf75e27824f4c0919f020114bf1c1578c4ea0a769460746a790217b"
  license "专有"
  
  def install
    bin.install "bin/box"
  end
  
  test do
    system "#{bin}/box", "--version"
  end
end
