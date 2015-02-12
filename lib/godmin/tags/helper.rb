module Godmin
  module Tags
    module Helper
      def tags_field(attribute, options = {})
        text_field(attribute, options.deep_merge(data: { behavior: "tagger" }))
      end
    end
  end

  FormBuilders::FormBuilder.send(:include, Tags::Helper)
end
