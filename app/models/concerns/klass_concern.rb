# frozen_string_literal: true

module KlassConcern
  extend ActiveSupport::Concern

  included do
    before_create :generate_uuid
    def generate_uuid
      uuid = UUID.new
      self_slug = uuid.generate
      generate_uuid if self.class.find_by_slug(self_slug).present?
      self.slug = self_slug
    end
  end

  module ClassMethods
    # 获取分页的内容
    def page_statistical(instance_objects)
      if instance_objects.respond_to?(:total_count)
        {
          total_count: instance_objects.total_count,
          current_page: instance_objects.current_page,
          total_pages: instance_objects.total_pages
        }
      end
    end
  end
end