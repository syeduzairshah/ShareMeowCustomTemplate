module ImageTemplates
  class Template2 < Base
    def allowed_options
      ['message']
    end

    def erb_template
      'app/views/text.erb'
    end

    def css_stylesheet
      'app/css/tech_cookie.css'
    end

    def image_width
      500
    end
  end
end
