require 'app/emoji_helper'

module ImageTemplates
  class Template1 < Base
    def render_options
      @options[:title] = EmojiHelper.emojify(@options[:title])
      @options[:content] = EmojiHelper.emojify(@options[:content])

      super
    end

    def allowed_options
      %w(content name user_id subject_name min_height title)
    end

    def erb_template
      'app/views/title_and_description.erb'
    end

    def css_stylesheet
      'app/css/tech_cookie.css'
    end

    def image_width
      450
    end

    private

    def truncate_text(text, max_length)
      return text unless text.length > max_length
      text[0..max_length].gsub(/\s\w+\s*$/, '...')
    end
  end
end
