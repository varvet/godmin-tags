module Godmin
  module Tags
    module Helper
      def tags_field(attribute, options = {})
        defaults = { value: object.send(attribute).to_s, data: { behavior: "tagger" } }
        text_field(attribute, defaults.deep_merge(options))
      end
    end
  end

  FormBuilders::FormBuilder.send(:include, Tags::Helper)
end
