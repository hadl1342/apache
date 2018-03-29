#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

# install httpd package
package 'httpd'

# template named '/var/www/html/index.html' is created with the source 'index.html.erb'
template '/var/www/html/index.html' do
	source 'index.html.erb'
end

#httpd service is enabled and started
service 'httpd' do
	action [:enable, :start]
end
