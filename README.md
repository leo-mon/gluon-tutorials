# mxnet-tutorials
Learning [MXNet-Tutorials]( http://mxnet.io/tutorials/index.html)  # Comments on Japanese

MXNetのチュートリアル

## 環境構築手順
あらかじめdockerをインストールしておくこと。

1. `git clone https://github.com/leo-mon/mxnet-tutorials.git && cd mxnet-tutorial` 
1. コンテナのビルド: `docker build -t mxnet-tutorial .`
1. コンテナの走行
   ```
   docker run
     -v $(pwd):/home/mxnet/mxnet-tutorials
     -p 8888:8888
     --rm
     mxnet-tutorials 
   ```
1. 表示されたアドレスへアクセス（`http://localhost:8888/?token=XXX...`）

- 省力化のためホスト側カレントディレクトリ全マウント
- ビルド完了後は3,4だけでok
