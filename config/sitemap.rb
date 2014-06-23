require 'rubygems'
require 'sitemap_generator'

# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = Settings.sitemap.host
SitemapGenerator::Sitemap.sitemaps_path = 'shared/'

SitemapGenerator::Sitemap.create do

  Project.find_each do |project|
    add project_path(project), :lastmod => project.updated_at

    project.releases.find_each do |release|
      add project_release_path(project, release), :lastmod => release.updated_at
    end
  end

end
SitemapGenerator::Sitemap.ping_search_engines