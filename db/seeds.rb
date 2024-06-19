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
Absent.create!(user_id: employee_user1.id, shift_id: shift3_employee1.id, date: Date.yesterday, status: 'approved')
Absent.create!(user_id: employee_user2.id, shift_id: shift3_employee2.id, date: Date.yesterday, status: 'approved')
Absent.create!(user_id: employee_user3.id, shift_id: shift3_employee3.id, date: Date.yesterday, status: 'approved')

# Notifications
Notification.create!(user_id: employee_user1.id, shift_id: shift1_employee1.id, message: 'Your shift request for May 1st has been approved. 1 hour ago')
Notification.create!(user_id: employee_user1.id, shift_id: shift2_employee1.id, message: 'Your shift request for May 2nd has been approved. 1 hour ago')

Notification.create!(user_id: employee_user2.id, shift_id: shift1_employee2.id, message: 'Your shift request for May 1st has been approved. 1 hour ago')
Notification.create!(user_id: employee_user2.id, shift_id: shift2_employee2.id, message: 'Your shift request for May 2nd has been approved. 1 hour ago')

Notification.create!(user_id: employee_user3.id, shift_id: shift1_employee3.id, message: 'Your shift request for May 1st has been approved. 1 hour ago')
Notification.create!(user_id: employee_user3.id, shift_id: shift2_employee3.id, message: 'Your shift request for May 2nd has been approved. 1 hour ago')

Notification.create!(user_id: admin_user.id, shift_id: shift1_employee1.id, message: 'Employee One has requested a shift. 1 hour ago')
Notification.create!(user_id: admin_user.id, shift_id: shift1_employee2.id, message: 'Employee Two has requested a shift. 1 hour ago')
Notification.create!(user_id: admin_user.id, shift_id: shift1_employee3.id, message: 'Employee Three has requested a shift. 1 hour ago')
