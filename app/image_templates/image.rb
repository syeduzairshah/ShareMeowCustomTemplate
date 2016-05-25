module ImageTemplates
  class ImageView < Base
    def allowed_options
      ['message','url']
    end

    def erb_template
      'app/views/image.erb'
    end

    def css_stylesheet
      'app/css/tech_cookie.css'
    end

    def image_width
      500
    end
  end
end
