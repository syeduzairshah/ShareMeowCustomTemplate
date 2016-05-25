module ImageTemplates
  class General < Base
    def allowed_options
      ['message']
    end

    def erb_template
      'app/views/general.erb'
    end

    def css_stylesheet
      'app/css/tech_cookie.css'
    end

    def image_width
      500
    end
  end
end
