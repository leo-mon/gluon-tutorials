FROM mxnet/python  
# 公式イメージ(https://github.com/dmlc/mxnet/tree/master/docker)

RUN groupadd mxnet && useradd -m -g mxnet mxnet
RUN apt-get update && apt-get install -y \
    graphviz  # 昔のチュートリアルでは確か使ったはず
    
RUN pip3 install --upgrade pip
RUN pip3 install \
    jupyter \
    matplotlib \
    graphviz
    # Python3環境で学習予定

RUN mkdir /home/mxnet/mxnet-tutorials
RUN chown -R mxnet:mxnet /home/mxnet
WORKDIR /home/mxnet/mxnet-tutorials

EXPOSE 8888
USER mxnet

CMD ["/usr/local/bin/jupyter", "notebook",\
    "--notebook-dir=/home/mxnet/mxnet-tutorials",\ 
    "--ip='*'",\
    "--port=8888",\ 
    "--no-browser"]