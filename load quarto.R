# 检查当前 PATH
Sys.getenv("PATH")

# 添加缺失的路径（如果未包含 /bin 和 /usr/bin）
Sys.setenv(PATH = paste("/bin:/usr/bin", Sys.getenv("PATH"), sep = ":"))

# 再次尝试安装
install.packages("quarto", type = "source", repos = "https://cloud.r-project.org")


options(quarto.path = "/usr/local/bin/quarto")


Sys.setenv(TAR = "/opt/homebrew/bin/gtar")
install.packages("rmarkdown")

install.packages("rmarkdown", repos = "https://cran.rstudio.com", type = "binary")


# 手动设置 Quarto 路径（替换为你的实际路径）
Sys.setenv(QUARTO_PATH = "/usr/local/bin/quarto") 

# 重启 RStudio 的 Quarto 检测
rstudioapi::restartSession()

install.packages("rstudioapi", type = "binary", repos = "https://cloud.r-project.org")

Sys.setenv(PATH = "/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin")
install.packages("rstudioapi")



# 设置 Quarto 路径（替换为你的实际路径）
Sys.setenv(QUARTO_PATH = "/usr/local/bin/quarto")  

# 强制 RStudio 重新加载配置
rstudioapi::executeCommand("reloadUi", quiet = TRUE)  # 刷新 UI
rstudioapi::restartSession()  # 重启 R 会话（需要 rstudioapi 包）
