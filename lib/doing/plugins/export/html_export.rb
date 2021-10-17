module Doing
  class HTMLExport
    include Doing::Util

    def self.settings
      {
        trigger: 'html?|web(?:page)?',
        templates: [
          { name: 'html', trigger: 'h[ta]ml?|web' },
          { name: 'css', trigger: 'css|styl(?:e|us)' }
        ],
        config: {
          'html_template' => {
            'css' => nil,
            'haml' => nil
          }
        }
      }
    end

    def self.template(trigger)
      if trigger =~ /^(css|sty)/
        IO.read(File.join(File.dirname(__FILE__), '../../../templates/doing.css'))
      else
        IO.read(File.join(File.dirname(__FILE__), '../../../templates/doing.haml'))
      end
    end

    def self.render(wwid, items, variables: {})
      return if items.nil?

      opt = variables[:options]

      items_out = []
      items.each do |i|
        # if i.has_key?('note')
        #   note = '<span class="note">' + i['note'].map{|n| n.strip }.join('<br>') + '</span>'
        # else
        #   note = ''
        # end
        if String.method_defined? :force_encoding
          title = i['title'].force_encoding('utf-8').link_urls
          note = i['note'].map { |line| line.force_encoding('utf-8').strip.link_urls } if i['note']
        else
          title = i['title'].link_urls
          note = i['note'].map { |line| line.strip.link_urls } if i['note']
        end

        interval = wwid.get_interval(i) if i['title'] =~ /@done\((\d{4}-\d\d-\d\d \d\d:\d\d.*?)\)/ && opt[:times]
        interval ||= false

        items_out << {
          date: i['date'].strftime('%a %-I:%M%p'),
          title: title.gsub(/(@[^ (]+(\(.*?\))?)/im, '<span class="tag">\1</span>').strip, #+ " #{note}"
          note: note,
          time: interval,
          section: i['section']
        }
      end

      template = if wwid.config['html_template']['haml'] && File.exist?(File.expand_path(wwid.config['html_template']['haml']))
                   IO.read(File.expand_path(wwid.config['html_template']['haml']))
                 else
                   self.template('html')
                 end

      style = if wwid.config['html_template']['css'] && File.exist?(File.expand_path(wwid.config['html_template']['css']))
                IO.read(File.expand_path(wwid.config['html_template']['css']))
              else
                self.template('css')
              end

      totals = opt[:totals] ? wwid.tag_times(format: :html, sort_by_name: opt[:sort_tags], sort_order: opt[:tag_order]) : ''
      engine = Haml::Engine.new(template)
      @out = engine.render(Object.new,
                         { :@items => items_out, :@page_title => variables[:page_title], :@style => style, :@totals => totals })
    end

    Doing::Plugins.register 'html', :export, self
  end
end

