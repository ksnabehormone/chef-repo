if [ ! -e "apache-maven-3.1.1-bin.tar.gz" ]; then
	# Mavenのパッケージをインストール
	wget http://ftp.kddilabs.jp/infosystems/apache/maven/maven-3/3.1.1/binaries/apache-maven-3.1.1-bin.tar.gz
	# ファイルを解凍
	tar -xvf ./apache-maven-3.1.1-bin.tar.gz     
	sudo mv ./apache-maven-3.1.1 /usr/share/maven
fi

# 環境変数の設定
export M2_HOME=/usr/share/maven
export M2=$M2_HOME/bin
export PATH=$PATH:$M2