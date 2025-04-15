class Box < Formula
  desc "加密文件夹为单个二进制文件的命令行工具"
  homepage "https://github.com/griffin928/kangaroo-bin"
  url "https://github.com/griffin928/kangaroo-bin/raw/main/releases/kangaroo-1.0.71.tar.gz"
  sha256 "de0e4c79f9f2fc67161714dc8176ad5ce45aa7c2ee169b534c8992f91f6e3fa9"
  license "专有"
  
  def install
    bin.install "box"
  end
  
  test do
    system "#{bin}/box", "--version"
  end
end
