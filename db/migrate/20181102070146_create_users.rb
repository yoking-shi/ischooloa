# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, comment: '用户表' do |t|
      t.string :uuid, index: true, uniqueness: true, null: false, comment: '编号'
      t.string :account, index: true, uniqueness: true, null: false, comment: '用户账号'
      t.string :password_digest
      t.string :mobile, index: true, uniqueness: true, null: false, comment: '手机号码'
      t.string :realname, comment: '真实姓名'
      t.string :avatar, comment: '头像'
      t.string :token
      t.belongs_to :school, foreign_key: true, index: true
      t.datetime :deleted_at, comment: '删除时间'

      t.timestamps
    end
  end
end
