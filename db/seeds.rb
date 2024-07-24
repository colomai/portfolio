# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Users
admin_user = User.create!(number: 1, name: 'Admin User', email: 'admin@example.com', password: 'password', role: 1, image: '')
employee_user1 = User.create!(number: 2, name: 'Employee One', email: 'employee1@example.com', password: 'password', role: 0, image: '')

# Shifts
shift1_employee1 = Shift.create!(user_id: employee_user1.id, date: Date.today, start_time: '09:00', end_time: '17:00', status: 'pending')
shift2_employee1 = Shift.create!(user_id: employee_user1.id, date: Date.tomorrow, start_time: '10:00', end_time: '18:00', status: 'approved')
shift3_employee1 = Shift.create!(user_id: employee_user1.id, date: Date.yesterday, start_time: '08:00', end_time: '16:00', status: 'rejected')
shift4_employee1 = Shift.create!(user_id: employee_user1.id, date: Date.today, start_time: '20:00', end_time: '21:00', status: 'approved')


# Absents
absent1_employee1 = Absent.create!(user_id: employee_user1.id, shift_id: shift1_employee1.id, date: Date.today, status: 'pending')
absent2_employee1 = Absent.create!(user_id: employee_user1.id, shift_id: shift2_employee1.id, date: Date.tomorrow, status: 'rejected')


# Notifications

#従業員
Notification.create!(user_id: employee_user1.id, shift_id: shift1_employee1.id, message: '5月2日のシフトリクエストは保留中です。1時間前')
Notification.create!(user_id: employee_user1.id, shift_id: shift2_employee1.id, message: '5月3日のシフトリクエストが承認されました。1時間前')
Notification.create!(user_id: employee_user1.id, shift_id: shift3_employee1.id, message: '5月1日のシフトリクエストが却下されました。1時間前')
Notification.create!(user_id: employee_user1.id, shift_id: shift4_employee1.id, message: '5月2日のシフトリクエストは承認されました。1時間前')

Notification.create!(user_id: employee_user1.id, shift_id: shift1_employee1.id, message: '5月2日の欠勤申請が保留中です。1時間前')
Notification.create!(user_id: employee_user1.id, shift_id: shift2_employee1.id, message: '5月3日の欠勤申請は却下されました。1時間前')


#管理者
Notification.create!(user_id: admin_user.id, shift_id: shift1_employee1.id, message: '従業員1の5月2日のシフトリクエストを受け取りました。1時間前')

Notification.create!(user_id: admin_user.id, shift_id: shift3_employee1.id, message: '従業員1の5月2日の欠勤申請を受け取りました。1時間前')
