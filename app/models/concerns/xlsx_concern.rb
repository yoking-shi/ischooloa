require 'write_xlsx'

module XlsxConcern
  extend ActiveSupport::Concern

  included do
  end

  module ClassMethods
    # 返回文件路径
    def export_xlsx(name: 'table')
      path = Rails.root.join('tmp').to_path + "/#{name}.xlsx"
      generate_xlsx(path)
      path
    end

    # 生成xlsx表
    def generate_xlsx(path)
      xlsx_file = WriteXLSX.new(path)
      xlsx_sheet = xlsx_file.add_worksheet
      attribute_names = self.attribute_names
      attribute_names.each_with_index do |name, index|
        xlsx_sheet.write(0, index, human_attribute_name(name))
      end
      all.each_with_index do |user, index|
        attribute_names.each_with_index do |name, name_index|
          xlsx_sheet.write(index + 1, name_index, user[name])
        end
      end
      xlsx_file.close
    end
  end
end
