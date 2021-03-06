include_recipe "t3-base"

include_recipe "t3-mysql::server"
include_recipe "t3-mysql::backup"

include_recipe "ssl_certificates"
ssl_certificate node['site-forumtypo3org']['ssl_certificate']

user "forumtypo3org"

cron "forum.typo3.org-sitemap" do
  minute "5"
  hour "*"
  user "forumtypo3org"
  command "php /var/www/vhosts/forum.typo3.org/data/prod/scripts/sitemap.php"
end
