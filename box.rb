class Box < Formula
  desc "加密文件夹为单个二进制文件的命令行工具"
  homepage "https://github.com/griffin928/kangaroo-bin"
  url "https://github.com/griffin928/kangaroo-bin/raw/main/releases/kangaroo-1.0.100.tar.gz"
  sha256 "285e75911fa676e579b8d7841db79c1af727d59f6d924b457a8fcc075ca06e1d"
  license "专有"
  
  def install
    bin.install "box"
    # 确保安装后的二进制文件有正确的权限
    chmod 0755, "#{bin}/box"
  end
  
  def post_install
    # 确保安装目录有正确的权限
    system "chmod", "-R", "go+rx", "#{HOMEBREW_PREFIX}/Cellar/#{name}/#{version}"
    system "chmod", "755", "#{bin}/box"
  end
  
  test do
    system "#{bin}/box", "--version"
  end
end
