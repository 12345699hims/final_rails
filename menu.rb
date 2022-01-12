class Student
	@@student_database={}
	@@create_issue_request={}
	@@issue_request_list =[]
	@@create_return_request={}
	@@return_request_list =[]
	@@my_issued_books = {}
	@@book_list1 = []
	@@student_detail = []
	@@total_book = {}
	@@book_list ={}
	def initialize(name,email,password,book,email1,y2)
		@name = name
		@email = email
		@password = password
		@book   = book
		@email = email
		@email1 = email1
		@y2 = y2
	end
	def main_menu
		#while true
		puts "1-Admin Login"
		puts "2-Student Login"
		options =gets.to_i
		case options 
		   when 1
			 x = "Enter Email"
			 puts x
			 x1 = gets.chomp
			 email1 = "himanshi.singh@shriffle.com"
			if (x1 == email1)
				x1
			else
				puts "Wrong Email Entered"
			end
			y = "Enter Password"
			puts y
			y1 = gets.chomp
			y2 = "12345"
			if (y1 == y2)
				   y1
			else
				puts "Wrong Password"
		  end

	
		  when 2
		self.menu
	end
end
		#def admin_access
		#puts "1-student_operation"
		#puts "2-book_operations"
		#puts "3-logout"
		#option = gets.to_i
		#case option 
		#	when 1
		#		self.student_operation
		#	when 2
		#		self.book_operations
		#	when 3
		#		puts "Thanks for visiting"
		#end 
	#end
	def admin_access
			while true
		puts "1-student_operation"
		puts "2-book_operations"
		puts "3-logout"
		option = gets.to_i
		case option  
			when 1
				self.student_operation
			when 2
				self.book_operations
			when 3
				puts "Thanks for visiting"
				break
		end 
	end
	end

	def menu
		#while true
		puts "1-SignIn"
		puts "2-SignUp"
		puts "3-Exit"
		choice = gets.to_i
		case choice
		 when 1
			 a = "Enter Id"
			 puts a
			 a1 = gets.chomp.to_i
			 b = "Enter Name"
			 puts b 
			 b1 = gets.chomp
			 @@student_database.store(a1,b1)
			 #puts @@student_database
			 @@student_detail.push(@@student_database)
			 p @@student_detail
			 #puts @@student_detail.count
			 c = "Enter Email"
			 puts c 
			 gets.chomp
			 d = "Enter Passsword"
			 puts d 
			 gets.chomp
			 puts "Welcome to home"
			 self.student_operations
		  when 2
			 e = "Enter Email id"
			 puts e 
			 gets.chomp
       f = "Enter Password"
       puts f
       gets.chomp
       #@@login_database.store (:key ,"e")
       #@@login_database.store (:value ,"f")
       #@@login_detail << login_database
       puts "Welcome To Home"
       self.student_operations
		  when 3
			 puts "Exit"
			 #break
			end
		#end
    end
  def student_operations
  	while true
   	puts "1-create_issue_request"
   	puts "2-create_return_request"
   	puts "3-My Issued Book_list"
   	puts "4-Exit"
   	option = gets.to_i
   	case option
   	 when 1
   		g = "Enter Id"
   		puts g
   		g1 = gets.chomp.to_i
   		h = "Enter book name"
   		puts h
   		h1 = gets.chomp
   		@@create_issue_request.store(g1,h1)
   		@@create_issue_request
   				puts "Issue request created"
   	 when 2
   	 	i = "Enter Id"
   		puts i
   		i1 = gets.chomp.to_i
   		j = "Enter book name which you want to return"
   		puts j
   		j1 = gets.chomp
   		@@create_return_request.store(i1,j1)
   		#p @@create_return_request
   				p "Return Request created"
   		
   	 when 3
   		puts "Total issued books are #{@@issue_request_list.count}"
   	 when 4
   	 	puts "Thanks for visiting"
   	 	break
   	end
   end
  end
  obj2=Student.new("hima","st@gmail","1235","book","himanshi.singh@shriffle.com","123")
  obj2.main_menu
  obj2=Admin_Rights.new("abc" ,"4")
obj2.admin_access

obj=Student.new('himanshi',"st@gmail","123hgvjh","book","himanshi.singh@shriffle.com","123556")
obj.menu
obj1=Student.new("him","gm","123","book","himanshi.singh@shriffle.com","123444")
obj1.student_operations
end

