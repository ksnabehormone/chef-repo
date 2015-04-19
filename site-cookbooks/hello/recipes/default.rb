# vim-echanced httpd
%w{wget httpd}.each do |p|
	package p do
		action :install
	end
end

# JAVA環境変数の設定
cookbook_file "setting-java.sh" do
	path "/etc/profile.d/setting-java.sh"
end

# tomcatのインストール
cookbook_file "setting-tomcat.sh" do
	path "/etc/profile.d/setting-tomcat.sh"
end

# TOMCATの起動シェル
template "tomcat" do
	path "/etc/rc.d/init.d/tomcat"
	source "rc-tomcat.erb"
	mode 0644
end

# TOMCATの起動シェルに実行権限を付ける
execute "sudo chmod +x /etc/init.d/tomcat" do
	action [:run]
end

# Mavenのインストール
cookbook_file "setting-maven.sh" do
	path "/etc/profile.d/setting-maven.sh"
end

service "httpd" do
	action [:enable, :start]
end
