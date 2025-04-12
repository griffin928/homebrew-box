class Box < Formula
  desc "加密文件夹为单个二进制文件的命令行工具"
  homepage "https://github.com/griffin928/kangaroo-bin"
  url "https://github.com/griffin928/kangaroo-bin/raw/main/releases/kangaroo-1.0.28.tar.gz"
  sha256 "6771d44b92db15690144c94150d942b78913f373002da7279d42660a0b96692d"
  license "专有"
  
  def install
    bin.install "box"
  end
  
  test do
    system "#{bin}/box", "--version"
  end
end
