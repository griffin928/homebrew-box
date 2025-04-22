class Box < Formula
  desc "加密文件夹为单个二进制文件的命令行工具"
  homepage "https://github.com/griffin928/kangaroo-bin"
  url "https://github.com/griffin928/kangaroo-bin/raw/main/releases/kangaroo-1.0.82.tar.gz"
  sha256 "3ad8084978a7502c5052c4c3dc4ac3e78395795b8c648c94cfddce8af7964194"
  license "专有"
  
  def install
    bin.install "box"
  end
  
  test do
    system "#{bin}/box", "--version"
  end
end
