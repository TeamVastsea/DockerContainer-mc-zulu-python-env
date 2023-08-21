FROM ubuntu:22.04
LABEL MAINTAINER = wwxiaoqi

# ZULU8版本（https://www.azul.com/downloads）
ENV ZULU8='zulu8.72.0.17-ca-jdk8.0.382-linux_x64'

# Ubuntu初始化
RUN \
  sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && \
  ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
  echo 'Asia/Shanghai' > /etc/timezone && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y curl tar git htop man unzip vim wget

# ZULU8安装
RUN \
  wget https://cdn.azul.com/zulu/bin/${ZULU8}.tar.gz && \
  tar zxf ${ZULU8}.tar.gz && \
  mkdir -p /opt/jdk/ && \
  mv ${ZULU8} /opt/jdk/${ZULU8} && \
  rm -rf ${ZULU8}.tar.gz && \
  echo 'export JAVA_HOME=/opt/jdk/${ZULU8}\n\
  export JRE_HOME=/opt/jdk/${ZULU8}/jre\n\
  export CLASSPATH=.:$JAVA_HOME/lib:/dt.jar:$JAVA_HOME/lib/tools.jar\n\
  PATH=$PATH:$JAVA_HOME/bin\n\
  ulimit -u 4096'\
>> ~/.bashrc

ENV JAVA_HOME /opt/jdk/${ZULU8}
ENV PATH $JAVA_HOME/bin:$PATH
ENV LANG "en_US.UTF-8"
ENV JAVA_VERSION ${ZULU8}

# Python安装
RUN \
  apt-get install -y libmysqlclient-dev tzdata python3 python3-dev python3-pip && \
  pip config set global.index-url "https://pypi.tuna.tsinghua.edu.cn/simple"

# MCDReforged安装
RUN \
  pip3 install mcdreforged -i https://pypi.tuna.tsinghua.edu.cn/simple

# 清除构建缓存
RUN \
  apt-get clean && \
  apt-get autoclean && \
  rm -rf /var/lib/apt/lists/*

CMD ["bash"]