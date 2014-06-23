require 'digest/md5'

module ApplicationHelper

    def breadcrumbs
        @breadcrumbs ||= [{ title: 'Projects', url: admin_root_path }]
    end

    def add_breadcrumb title, url
        breadcrumbs << { title: title, url: url }
    end

    def gravatar_url email
        Digest::MD5.hexdigest(email)
    end
end
