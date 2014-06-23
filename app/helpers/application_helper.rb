module ApplicationHelper

    def breadcrumbs
        @breadcrumbs ||= [{ title: 'Projects', url: admin_root_path }]
    end

    def add_breadcrumb title, url
        breadcrumbs << { title: title, url: url }
    end
end
