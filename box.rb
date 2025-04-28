class Box < Formula
  desc "加密文件夹为单个二进制文件的命令行工具"
  homepage "https://github.com/griffin928/kangaroo-bin"
  url "https://github.com/griffin928/kangaroo-bin/raw/main/releases/kangaroo-1.0.102.tar.gz"
  sha256 "00cc26aa6da159fdd02290ce38bcbacb8f80f83dc289fcf85ac3be202940a803"
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
