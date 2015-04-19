if [ ! -e "apache-tomcat-7.0.61.tar.gz*" ]; then
	# Tomcatのパッケージをインストール
	wget http://ftp.tsukuba.wide.ad.jp/software/apache/tomcat/tomcat-7/v7.0.61/bin/apache-tomcat-7.0.61.tar.gz
	# ファイルを解凍
	tar -xvf ./apache-tomcat-7.0.61.tar.gz
	sudo mv ./apache-tomcat-7.0.61 /usr/local/tomcat
fi

# 環境変数の設定
export TOMCAT_HOME=/usr/local/tomcat
export CATALINA_HOME=$TOMCAT_HOME
export CLASSPATH=$CLASSPATH:$CATALINA_HOME/common/lib