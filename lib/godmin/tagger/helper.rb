module Godmin
  module Tagger
    module Helper
      def tags_field(attribute, options = {})
        text_field(attribute, options.deep_merge(data: { behavior: "tagger" }))
      end
    end
  end

  FormBuilders::FormBuilder.send(:include, Tagger::Helper)
end
