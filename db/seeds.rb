# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Users
admin_user = User.create!(number: 1, name: 'Admin User', email: 'admin@example.com', password: 'password', role: 1)
employee_user1 = User.create!(number: 2, name: 'Employee One', email: 'employee1@example.com', password: 'password', role: 0)
employee_user2 = User.create!(number: 3, name: 'Employee Two', email: 'employee2@example.com', password: 'password', role: 0)
employee_user3 = User.create!(number: 4, name: 'Employee Three', email: 'employee3@example.com', password: 'password', role: 0)

# Shifts
shift1_employee1 = Shift.create!(user_id: employee_user1.id, date: Date.today, start_time: '09:00', end_time: '17:00', status: 'pending')
shift2_employee1 = Shift.create!(user_id: employee_user1.id, date: Date.tomorrow, start_time: '10:00', end_time: '18:00', status: 'approved')
shift3_employee1 = Shift.create!(user_id: employee_user1.id, date: Date.yesterday, start_time: '08:00', end_time: '16:00', status: 'rejected')

shift1_employee2 = Shift.create!(user_id: employee_user2.id, date: Date.today, start_time: '09:00', end_time: '17:00', status: 'pending')
shift2_employee2 = Shift.create!(user_id: employee_user2.id, date: Date.tomorrow, start_time: '10:00', end_time: '18:00', status: 'approved')
shift3_employee2 = Shift.create!(user_id: employee_user2.id, date: Date.yesterday, start_time: '08:00', end_time: '16:00', status: 'rejected')

shift1_employee3 = Shift.create!(user_id: employee_user3.id, date: Date.today, start_time: '09:00', end_time: '17:00', status: 'pending')
shift2_employee3 = Shift.create!(user_id: employee_user3.id, date: Date.tomorrow, start_time: '10:00', end_time: '18:00', status: 'approved')
shift3_employee3 = Shift.create!(user_id: employee_user3.id, date: Date.yesterday, start_time: '08:00', end_time: '16:00', status: 'rejected')

# Absents
absent1_employee1 = Absent.create!(user_id: employee_user1.id, shift_id: shift3_employee1.id, date: Date.yesterday, status: 'approved')
absent2_employee1 = Absent.create!(user_id: employee_user1.id, shift_id: shift1_employee1.id, date: Date.today, status: 'pending')
absent3_employee1 = Absent.create!(user_id: employee_user1.id, shift_id: shift2_employee1.id, date: Date.tomorrow, status: 'rejected')

absent1_employee2 = Absent.create!(user_id: employee_user2.id, shift_id: shift3_employee2.id, date: Date.yesterday, status: 'approved')
absent2_employee2 = Absent.create!(user_id: employee_user2.id, shift_id: shift1_employee2.id, date: Date.today, status: 'pending')
absent3_employee2 = Absent.create!(user_id: employee_user2.id, shift_id: shift2_employee2.id, date: Date.tomorrow, status: 'rejected')

absent1_employee3 = Absent.create!(user_id: employee_user3.id, shift_id: shift3_employee3.id, date: Date.yesterday, status: 'approved')
absent2_employee3 = Absent.create!(user_id: employee_user3.id, shift_id: shift1_employee3.id, date: Date.today, status: 'pending')
absent3_employee3 = Absent.create!(user_id: employee_user3.id, shift_id: shift2_employee3.id, date: Date.tomorrow, status: 'rejected')


# Notifications
#従業員
Notification.create!(user_id: employee_user1.id, shift_id: shift1_employee1.id, message: '5月2日のシフトリクエストは保留中です。1時間前')
Notification.create!(user_id: employee_user1.id, shift_id: shift2_employee1.id, message: '5月2日のシフトリクエストが承認されました。1時間前')
Notification.create!(user_id: employee_user1.id, shift_id: shift3_employee1.id, message: '5月2日のシフトリクエストが却下されました。1時間前')

Notification.create!(user_id: employee_user2.id, shift_id: shift1_employee2.id, message: '5月2日のシフトリクエストは保留中です。1時間前')
Notification.create!(user_id: employee_user2.id, shift_id: shift2_employee2.id, message: '5月2日のシフトリクエストが承認されました。1時間前')
Notification.create!(user_id: employee_user2.id, shift_id: shift3_employee2.id, message: '5月2日のシフトリクエストが却下されました。1時間前')

Notification.create!(user_id: employee_user3.id, shift_id: shift1_employee3.id, message: '5月2日のシフトリクエストは保留中です。1時間前')
Notification.create!(user_id: employee_user3.id, shift_id: shift2_employee3.id, message: '5月2日のシフトリクエストが承認されました。1時間前')
Notification.create!(user_id: employee_user3.id, shift_id: shift3_employee3.id, message: '5月2日のシフトリクエストが却下されました。1時間前')


Notification.create!(user_id: employee_user1.id, shift_id: shift3_employee1.id, message: '5月2日の欠勤申請が承認されました。1時間前')
Notification.create!(user_id: employee_user1.id, shift_id: shift3_employee1.id, message: '5月2日の欠勤申請が却下されました。1時間前')
Notification.create!(user_id: employee_user1.id, shift_id: shift3_employee1.id, message: '5月2日の欠勤申請は保留中です。1時間前')

Notification.create!(user_id: employee_user2.id, shift_id: shift3_employee2.id, message: '5月2日の欠勤申請が承認されました。1時間前')
Notification.create!(user_id: employee_user2.id, shift_id: shift3_employee2.id, message: '5月2日の欠勤申請が却下されました。1時間前')
Notification.create!(user_id: employee_user2.id, shift_id: shift3_employee2.id, message: '5月2日の欠勤申請は保留中です。1時間前')

Notification.create!(user_id: employee_user3.id, shift_id: shift3_employee3.id, message: '5月2日の欠勤申請が承認されました。1時間前')
Notification.create!(user_id: employee_user3.id, shift_id: shift3_employee3.id, message: '5月2日の欠勤申請が却下されました。1時間前')
Notification.create!(user_id: employee_user3.id, shift_id: shift3_employee3.id, message: '5月2日の欠勤申請は保留中です。1時間前')

#管理者

Notification.create!(user_id: admin_user.id, shift_id: shift1_employee1.id, message: '従業員1の5月2日のシフトリクエストを受け取りました。1時間前')
Notification.create!(user_id: admin_user.id, shift_id: shift1_employee2.id, message: '従業員2の5月2日のシフトリクエストを受け取りました。1時間前')
Notification.create!(user_id: admin_user.id, shift_id: shift1_employee3.id, message: '従業員3の5月2日のシフトリクエストを受け取りました。1時間前')

Notification.create!(user_id: admin_user.id, shift_id: shift3_employee1.id, message: '従業員1の5月2日の欠勤申請を受け取りました。1時間前')
Notification.create!(user_id: admin_user.id, shift_id: shift3_employee2.id, message: '従業員2の5月2日の欠勤申請を受け取りました。1時間前')
Notification.create!(user_id: admin_user.id, shift_id: shift3_employee3.id, message: '従業員3の5月2日の欠勤申請を受け取りました。1時間前')