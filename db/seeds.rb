# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Users
admin_user = User.create!(number: 1, name: 'Admin User', email: 'admin1@example.com', password: 'Admin123', password_confirmation: 'Admin123',
role: 1, image: '')
employee_user1 = User.create!(number: 2, name: 'Employee One', email: 'employee01@example.com', password: 'Emplo123', password_confirmation: 'Emplo123',
role: 0, image: '')

# Shifts
shift1_employee1 = Shift.create!(user_id: employee_user1.id, start_time: '2024-12-01 09:00', end_time: '2024-12-01 17:00', status: 'pending')
shift2_employee1 = Shift.create!(user_id: employee_user1.id, start_time: '2024-12-01 10:00', end_time: '2024-12-01 18:00', status: 'approved')
shift3_employee1 = Shift.create!(user_id: employee_user1.id, start_time: '2024-12-01 08:00', end_time: '2024-12-01 16:00', status: 'rejected')
shift4_employee1 = Shift.create!(user_id: employee_user1.id, start_time: '2024-12-01 20:00', end_time: '2024-12-01 21:00', status: 'approved')

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
