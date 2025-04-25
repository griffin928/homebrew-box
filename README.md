# Homebrew Tap for Box
此仓库是Box工具的Homebrew Tap，用于通过Homebrew安装Box工具。

## 安装方法

```bash
brew tap griffin928/box
brew install box
```

## 权限问题解决方法

如果在安装或更新后遇到 "command not found: box" 错误，可能是由于权限问题导致的。请尝试以下解决方案：

1. 修复Homebrew权限：
```bash
sudo chown -R $(whoami) $(brew --prefix)/*
```

2. 重新安装box：
```bash
brew reinstall box
```

3. 如果上述方法不起作用，可以直接创建符号链接：
```bash
mkdir -p ~/bin
ln -sf $(brew --prefix)/bin/box ~/bin/box
echo 'export PATH=$HOME/bin:$PATH' >> ~/.zshrc
source ~/.zshrc
```
