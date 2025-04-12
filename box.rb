class Box < Formula
  desc "加密文件夹为单个二进制文件的命令行工具"
  homepage "https://github.com/griffin928/kangaroo-bin"
  url "https://github.com/griffin928/kangaroo-bin/raw/main/releases/kangaroo-1.0.25.tar.gz"
  sha256 "880dbbdce59936bf46b456b13d8f9c9464bf78a7747f077e66c151f22945e190"
  license "专有"
  
  def install
    bin.install "bin/box"
  end
  
  test do
    system "#{bin}/box", "--version"
  end
end
