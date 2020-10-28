ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    #div class: "blank_slate_container", id: "dashboard_default_message" do
      #span class: "blank_slate" do
        #span I18n.t("active_admin.dashboard_welcome.welcome")
        #small I18n.t("active_admin.dashboard_welcome.call_to_action")
        #end
      #end
    panel "Job Applications" do

      bar_chart Job.joins(:job_applications).group(:job_title).count() ##

    end
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
