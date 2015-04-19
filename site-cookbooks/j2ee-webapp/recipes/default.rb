#
# Cookbook Name:: j2ee-webapp
# Recipe:: default
#
# Copyright 2015, shingo.kawabata
#
# All rights reserved - Do Not Redistribute
#

# Apacheインストール
include_recipe "j2ee-webapp::apache"

# Vimインストール
# include_recipe "j2ee-webapp::vim-enhanced"

# wgetインストール
include_recipe "j2ee-webapp::wget"

# Java設定
include_recipe "j2ee-webapp::setting-java"

# Tomcat7のインストール
include_recipe "j2ee-webapp::setting-tomcat"

# Maven3のインストール
include_recipe "j2ee-webapp::setting-maven"

service "httpd" do
	action [:enable, :start]
end

service "tomcat" do
	action [:start]
end