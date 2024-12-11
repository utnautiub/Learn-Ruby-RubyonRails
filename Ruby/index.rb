# Cu phap co ban

# age = 30
# pi = 3.14
# name = :BuiTuanTu
# is_active = true
# address = nil

# puts age, name, is_active, pi, address

# Example Symbols vs String

# String
# str = "Bui Tuan Tu"
# puts str[0]
# str[0] = '123'
# puts str
#
# # Symbols
# sys = :"Bui Tuan Tu"
# puts sys[0]
# # sys[0] = '123'
# puts sys

# # Ví dụ với chuỗi
# puts "Hello, Ruby!"    # Hello, Ruby! (xuống dòng)
# print "Hello, Ruby!" # Hello, Ruby! (không xuống dòng)
# puts "\n"
# p 'Hello, Ruby!'       # "Hello, Ruby!" (kèm dấu ngoặc kép)

# a = 123
# p "#{a}"
# p 123
# p true

# p [1, 2, 3]
# p ({a: 1, b: 2})

# ten = "Bui Tuan Tu1"
#
# case ten
# when "Bui Tuan Tu"
#   puts "Xin chao #{ten}"
# when "Bui Tuan Tu1"
#   puts "Xin chao #{ten}"
# else
#   puts "Ko xin chao"
# end

#
# btt = "B"
# loop do
#   puts btt
#   btt = btt + '1'
#   break if btt.length == 5
# end


# btt = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
# btt1 = %w[a b c d e f g]
#
# btt1.each do |x|
#   puts x+x
# end
#
# for a in btt1
#   puts a
# end

# [1, 2, 3, 4, 5].each do |num|
#   puts num
# end



# def multiply(a, b)
#   a * b
# end
#
# puts multiply(10, 20)

# def hello(*names)
#   names.each do |name|
#     if name.is_a?(Integer)
#       name += 1
#     end
#     puts "Hello, #{name}"
#   end
# end
# hello("BTT", "BTT1", 123)

# def hello(**names)
#   puts names.inspect
# end
# hello(name: 'BTT', age: '20')

# def method_yield
#   puts "Hi 111"
#   yield
#   puts "Hi 333"
# end
#
# method_yield { puts "Hi 222" }

# def perform_task
#   puts "Task started"
#   yield("Data from perform_task") if block_given?
#   puts "Task ended"
# end
#
# perform_task { |data| puts "Block received: #{data}" }

# my_proc = Proc.new { puts "Hello BTT" }
# my_proc.call
# my_proc.call
# my_proc.call
# my_proc.call
#
# proc_thamso = Proc.new { |thamso| puts "Hello #{thamso}!" }
# proc_thamso.call("Bui Tuan Tu")


# def proc_in_method(number, proc1, proc2)
#   if number.is_a?(Integer)
#     proc1.call(number)
#     proc2.call(number)
#   else
#     puts "Khong phai so nguyen"
#   end
# end
# my_proc1 = Proc.new { |a| print a*a }
# my_proc2 = Proc.new { |a| print a*3 }
# my_proc1.call
# proc_in_method(2, my_proc1, my_proc2)


def proc_123
  my_proc = Proc.new { return "Proc: Thoát khỏi phương thức luôn" }
  my_proc.call
  "Không chạy ở đây nữa"
end

def lambda_123
  my_lambda = -> { return "Lambda: Thoát khỏi đây thôi, tiếp tục ở phương thức" }
  puts my_lambda.call
  "Tiep tuc ne"
end

# puts proc_123
# puts lambda_123

# my_proc = Proc.new { |a, b| puts "a = #{a}, b = #{b}" }
# my_proc.call(2)
# my_lambda2 = ->(a,b) {puts "a = #{a}, b = #{b}" }
# my_lambda2.call(2)


# class BTT
#   def add(a,b)
#     a + b
#   end
# end
#
# btt = BTT.new
# puts btt.add(2,3)
#
# class BTT
#   def self.add(a,b)
#     a + b
#   end
# end
#
# btt = BTT.add(2,3)
# puts btt

# Instance Method
class User
  def initialize(name, age)
    @name = name
    @age = age
  end

  def info
    "#{@name}, #{@age} years old"
  end
end

user = User.new("BTT", 21)
puts user.info
user1 = User.new("BTT1", 22)
puts user1.info


# Class Method
class User
  def self.info
    puts "info User class"
  end
end

puts User.info



# # Ví dụ với mảng
# puts [1, 2, 3]         # 1
# # 2
# # 3
# print [1, 2, 3]        # [1, 2, 3]
# p [1, 2, 3]            # [1, 2, 3] (có cấu trúc rõ ràng)
#
# # Kết hợp
# puts "Hello,"; print " Ruby!\n"; p "Debugging done!"




