# インストールするPythonのバージョン
$PYTHON_VERSION = "3.8.10"

# pyenv インストール
Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/pyenv-win/pyenv-win/master/pyenv-win/install-pyenv-win.ps1" -OutFile "./install-pyenv-win.ps1"; &"./install-pyenv-win.ps1"

# # pyenvのバージョン確認
pyenv --version

# 指定のPythonインストール
pyenv install $PYTHON_VERSION

# 指定のPythonを適用
pyenv global $PYTHON_VERSION

# Pythonのバージョン確認
python --version

# Pythonモジュールインストール
pip install `
        fastapi `
        uvicorn `
        aiofiles `
        clickhouse_driver `
        plotly `
        pycryptodome

# インストールされたモジュールを確認
pip list
