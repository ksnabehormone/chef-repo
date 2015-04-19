# Rubyのインストール
package "ruby2.0" do
	action :install
end

# capistranoインストール
gem_package "capistrano" do
	action :install
end
