# gluon-tutorials
Learning [Gluon]( http://thestraightdope.mxnet.io/)  # Comments on Japanese

MXNetのチュートリアル

## 環境構築手順
### Docker(ソースコードビルド)
差し当たってこちらで学習

1. `git clone https://github.com/leo-mon/mxnet-tutorials.git && cd mxnet-tutorials` 
1. コンテナのビルド: `docker build -f ./DockerfileFromUbuntu -t mxnet-tutorials .`
1. コンテナの走行
   ```
   docker run\
     -v $(pwd):/home/mxnet/mxnet-tutorials\
     -p 8888:8888\
     --rm\
     mxnet-tutorials 
   ```
1. 表示されたアドレスへアクセス（`http://localhost:8888/?token=XXX...`）

- 省力化のためホスト側カレントディレクトリ全マウント
- ビルド完了後は3,4だけでok

```

### Docker(MXNet公式)
**0.10.0版ではgluonなど高レベルAPIが使えない**
のでPending
あらかじめdockerをインストールしておくこと。

1. `git clone https://github.com/leo-mon/mxnet-tutorials.git && cd mxnet-tutorials` 
1. コンテナのビルド: `docker build -f ./DockerfileFromMXNet -t mxnet-tutorials .`
1. コンテナの走行
   ```
   docker run\
     -v $(pwd):/home/mxnet/mxnet-tutorials\
     -p 8888:8888\
     --rm\
     mxnet-tutorials 
   ```
1. 表示されたアドレスへアクセス（`http://localhost:8888/?token=XXX...`）

- 省力化のためホスト側カレントディレクトリ全マウント
- ビルド完了後は3,4だけでok
