class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  include KlassConcern
  include XlsxConcern

  acts_as_paranoid # 假删除
end
