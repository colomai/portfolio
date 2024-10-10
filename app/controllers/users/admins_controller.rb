class Users::AdminsController < ApplicationController
    def top
      # 管理者用のトップページの処理
      @admin_users = User.where(role: 1)
    end
  end