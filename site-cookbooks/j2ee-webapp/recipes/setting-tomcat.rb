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