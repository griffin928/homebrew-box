class Box < Formula
  desc "加密文件夹为单个二进制文件的命令行工具"
  homepage "https://github.com/griffin928/kangaroo-bin"
  url "https://github.com/griffin928/kangaroo-bin/raw/main/releases/kangaroo-1.0.37.tar.gz"
  sha256 "63792ac5bb41ffe50c5b0c3fb8084770d40471169d40282b92560dc1ca6b9b4d"
  license "专有"
  
  def install
    bin.install "box"
  end
  
  test do
    system "#{bin}/box", "--version"
  end
end
