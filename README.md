# setup_pyenv_windows
Windows11にてPyenvをセットアップするためのスクリプト。

# 手動手順

[Windows11でPyenvをインストールする](https://qiita.com/v1tam1n/items/3d0d4237c87a85effefa)

# スクリプトによる手順

## Pyenvのパスを通す

Powershellを開き、以下を実行する。

```powershell
[System.Environment]::SetEnvironmentVariable('PYENV',$env:USERPROFILE + "\.pyenv\pyenv-win\","User")
[System.Environment]::SetEnvironmentVariable('path', $HOME + "\.pyenv\pyenv-win\bin;" + $HOME + "\.pyenv\pyenv-win\shims;" + $env:Path,"User")
```
実行後、Powershellを閉じて開きなおす。（こうしないと環境変数が読み込めない場合がある）


## スクリプトの実行

デスクトップに`setup_pyenv.ps1`を配置して、以下を実行する。

```
cd .\Desktop\
.\setup_pyenv.ps1
```

```powershell
PS C:\Users\XXXXXXX> cd .\Desktop\
PS C:\Users\XXXXXXX\Desktop> .\setup_pyenv.ps1
**********************
PS C:\Users\XXXXXXX\Desktop>
```
最後に、インストールしたPythonモジュールの一覧が表示されたらOK。
`setup_pyenv.ps1`はデスクトップから削除してOK。
