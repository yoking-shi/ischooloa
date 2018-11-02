class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools, comment: '学校表' do |t|
      t.string :uuid, index: true, uniqueness: true, null: false, comment: '编号'
      t.string :name, index: true, uniqueness: true, null: false, comment: '名称'
      t.string :address, comment: '地址'
      t.string :logo, comment: 'logo'
      t.datetime :deleted_at, comment: '删除时间'

      t.timestamps
    end
  end
end
