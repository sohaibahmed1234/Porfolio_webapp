ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    #div class: "blank_slate_container", id: "dashboard_default_message" do
      #span class: "blank_slate" do
        #span I18n.t("active_admin.dashboard_welcome.welcome")
        #small I18n.t("active_admin.dashboard_welcome.call_to_action")
        #end
      #end


    # Here is an example of a simple dashboard with columns and panels.
    #
    panel "Job Applications" do
      # line_chart   Content.pluck("download").uniq.map { |c| { title: c, data: Content.where(download: c).group_by_day(:updated_at, format: "%B %d, %Y").count }  }, discrete: true
      # column_chart Content.group_by_hour_of_day(:updated_at, format: "%l %P").order(:download).count, {library: {title:'Downloads for all providers'}}
      # column_chart Content.group(:title).order('download DESC').limit(5).sum(:download)
      bar_chart Job.joins(:job_applications).group(:job_title).count() ##
      # line_chart result.each(:as => :hash) { |item|
      #   {name: item.title, data: item.sum_download.count}
      # }
    end

    status_tag 'Job Applications'

     columns do
      column do
        panel "No. of Job applications " do
          ul do
            Job.all.map do |job|
               span do
               (job.job_title)
               end

              records = job.job_applications
              span do
                 records.size
              end
               li
            end


          end

        end
  end

      column do
        panel "Technologies " do
          ul do
            Technology.all.map do |tech|
              div class: "block" do
              li tech.name
              end
end
          end

        end
      end
     end
  end # content
end
