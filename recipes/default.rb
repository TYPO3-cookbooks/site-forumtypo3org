cron "forum.typo3.org-sitemap" do
  minute "5"
  hour "*"
  user "forumtypo3org"
  command "php /var/www/vhosts/forum.typo3.org/data/prod/scripts/sitemap.php"
end
