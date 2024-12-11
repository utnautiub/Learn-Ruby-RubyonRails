# RUBY

## Gemfile
### Đặc điểm Gemfile
    - Không có phần mở rộng
    - Viết bằng Ruby
    - Mục đích: Khai báo các thư viện cần thiết sử dụng cho dự án

#### Ví dụ về Gemfile: [Gemfile](./Gemfile)

#### Rõ hơn về Gemfile:
- Khi sử dụng lệnh `gem install abc`
  - Bundler không tự động thêm gem `abc` vào tệp `Gemfile` hoặc `Gemfile.lock`
  - Lệnh này chỉ cài đặt `gem` vào hệ thống toàn cục của hệ thống, ko liên kết với dự án cụ thể
  - Phải thêm thủ công vào `Gemfile` sau đó chạy `bundle install` thì mới cài đặt gem `abc` và cập nhật `Gemfile.lock` đê khóa phiên bản `gem`
- `bundle add abc` nếu muốn sử dụng Bundler để thêm tự động vào Gemfile thì phải sử dụng lệnh 
  - Tự động thêm gem `abc` vào tệp Gemfile
  - Tự động chạy `bundle install` để cài dặt và cập nhật `Gemfile.lock`

### Tổng kết về Gemfile:
- `gem install abc` không tương đồng `npm install abc`
- `bundle add abc` tương đồng, xêm xêm với `npm install abc`

### Điểm khác biệt chính
- Bundler yêu cầu tường minh:
  - Nếu không sử dụng `bundle add abc` mà tự chạy `gem install abc`, gem đó chỉ được cài vào hệ thống, không liên kết với dự án ( Không cập nhật Gemfile hoặc Gemfile.lock)
  - Vì vậy, để làm việc đúng cách trong dự án, phải thêm `thủ công` gem vào `Gemfile` hoặc dùng `bundle add`
- NPM tự động thêm phụ thuộc:
  - Khi chạy `npm install abc`, package sẽ được tự động được thêm vào `package.json` ( trừ khi sử dụng cờ `--no-save`)

### Kết luận:
- Bundler:
  - Sử dụng `bundler add abc` là cách đúng chuẩn và tương tự với `npm install abc`
  - Điều trên đảm bảo gem được cài đặt và cập nhật cả `Gemfile` lẫn `Gemfile.lock`
- NPM:
  - Tự động thêm vào `package.json` khi cài package

- Không có lệnh `bundle install abc` :V

- Mỗi khi `clone` 1 dự án `Ruby` hoặc `Ruby on Rails` từ Repo nào đó, việc đầu tiên là cài đặt các gem cân thiết
  - Sử dụng lệnh `bundle install`
    - Đọc danh sách các gem từ `Gemfile`
    - Cài đặt đúng phiên bản các gem đã được khóa trong `Gemfile.lock`
  - Nếu là dự án `Rails`:
    - Chuẩn bị cơ sở dữ liệu: `rails db:setup`
    - Nếu cơ sở dữ liệu đã tồn tại: `rails db:migrate`
    - Khởi chạy: `rails server`

## Cú pháp cơ bản trong Ruby
### Biến và kiểu dữ liệu
- Khai báo biến

      name = "Ruby"
      age = 25
      is_active = true

- Các kiểu dữ liệu phổ biến

      # Chuỗi (String)
      greeting = "Hello, Ruby!"
      
      # Số nguyên (Integer) và số thực (Float)
      count = 42
      price = 19.99
      
      # Boolean
      is_admin = false
      
      # Mảng (Array)
      colors = ["red", "green", "blue"]
      
      # Hash (giống object trong JS, dictionary trong Python)
      user = { name: "John", age: 30, is_admin: true }
      
      # Nil (tương tự null)
      something = nil

  - In ra màn hình

        puts "Hello, Ruby!"  # Thêm dòng mới sau khi in
        print "Hello, Ruby!" # Không thêm dòng mới
        p [1, 2, 3]          # Hiển thị giá trị và cấu trúc
    - Giống nhau và khác nhau giữa 3 loại in ra màn hình trên
      - Giống nhau:
        - Cả 3 phương thức (put, print, p) đều sử dụng để in dữ liệu ra màn hình
        - Có thể nhận đầu vào là các loại dữ liệu như (Chuỗi, Số nguyên, Mảng và các đối tượng khác)
      - Khác nhau:
        - Cách in ra:
          - puts: Thêm dòng mới (\n) sau khi in xong
          - print: Không thêm dòng mới
          - p: Hiển thị giá trị và cấu trúc của đối tượng
        - Hiển thị chuỗi:
          - puts: In chuỗi bình thường
          - print: In chuỗi bình thường
          - p: In chuỗi dạng inspect (có dấu ngoặc vuông [])
        - Dùng để debug:
          - puts: Không
          - print: Không
          - p: Có, thường dùng để debug
      - Ví dụ minh họa:
    
            puts "Hello, Ruby!"    # Hello, Ruby! (xuống dòng)
            print "Hello, Ruby!"   # Hello, Ruby! (không xuống dòng)
            p "Hello, Ruby!"       # "Hello, Ruby!" (kèm dấu ngoặc kép)
      - Chi tiết hơn về `p`:
        - `p` sẽ hiển thị giá trị và cấu trúc thực tế của đối tượng mà nó nhận vào bất kể kiểu dữ liệu là gì
        - `p` có thể hiển thị bất kì giá trị nào ( số nguyên, mảng, đối tượng, v.v), ko chỉ là chuỗi
          1. Đối với `kiểu số` (Integer, Float, Rational (Số hữu tỉ -> Rational(2,3)), Complex (Số phức -> Complex(1,2) )
              
                  p 123       # 123 (hiển thị số nguyên, không phải chuỗi)
                  p 45.67     # 45.67 (hiển thị số thực)
        
          2. Đối với `mảng` (Array)
           
                  p [1, 2, 3] # [1, 2, 3] (hiển thị mảng, không phải chuỗi)
        
          3. Đối với `Hash` 
    
                  p ({a: 1, b: 2}) # {:a=>1, :b=>2} (hiển thị hash, không phải chuỗi)
    
          4. Đối với `nil`
        
                  p nil       # nil (hiển thị `nil`, không phải chuỗi)

          5. Đối với `boolean` (true, false)
        
                  p true      # true (hiển thị giá trị boolean)
                  p false     # false (hiển thị giá trị boolean)
          
          6. Đối với bất kỳ đối tượng nào khác các mấy cái vừa nêu trên :V 
             - `p` sẽ gọi phương thức `inspect` trên đối tượng và hiển thị kết quả của phương thức đó
             - `inspect` là gì ? Là một phương thức mặc định, bất kì đối tượng nào cũng có thể gọi inspect
             - `inspect` thông thường thì có thể thay đổi ở trong `Class` và `Module`, còn những cái khác không nên (GPT nói :V)
             
                    class MyClass
                    end
                    
                    p MyClass.new
                    
                    => Kết quả: #<MyClass:0x00007fffc281fa60>
                    
                    class MyClass
                      def initialize(name)
                        @name = name
                      end
                      
                      def inspect
                        "MyClass: #{@name}"
                      end
                    end
                
                    abc = MyClass.new("Bùi Tuấn Tú")
                    p abc 
              
                    => Kết quả: "MyClass: Bùi Tuấn Tú"
             
### Cấu trúc điều kiện cơ bản: `if`, `elsif`, `else`, `unless`, `case`, :
- Cách hoạt động: đã biết từ ngôn ngữ khác, note rõ lại
  - `if`: Kiểm tra điều kiện, nếu đúng thực thi khối bên trong
  - `elsif`: Vẫn còn chữ `if` cũng như bên trên :V
  - `else`: Tất cả điều kiện bên trên, nếu sai hết thì thực hiện khối `else` này
- Cú pháp:
  
      if điều_kiện_1
        # Nếu điều kiện 1 đúng thì làm ở đây
      elsif điều_kiện_2
        # Nếu điều kiện 1 sai thì nhảy xuống elsif, nếu elsif đúng thì thực hiện ở đây
      else
        # Nếu điều kiện 1 sai, điều kiện 2 cũng sai nốt thì thực hiện ở đây
      end
    
- Toán tử 3 ngôi viết ngắn gọn cho câu lệnh `if-else` đơn giản ở `Ruby`
  - Cú pháp:
    
        kết quả = điều kiện ? nếu điều kiện đúng : nếu điều kiện sai  
    
  - Khi nào dùng ?
    - Khi logic **đơn giản** và **là 1 khối `if` 1 khối `else`**
    - Khi xử lý 1 điều kiện duy nhất với hai kết quả `đúng` và `sai`
  - Khi nào không dùng được ?
    - Nếu có nhiều điều kiện `if-elsif-else`
      
- Cấu trúc `unless`: Ruby cung cấp `unless` để xử lý điều kiện ngược (nếu điều kiện không đúng)
  - Khác với `if` thì nếu `đúng` mới thực hiện khối của nó, nhưng `unless` thì nếu `sai` thì mới thực hiện khối của nó
  - `unless (age<18)` tương đương với `if !(age<18)` 
- Cấu trúc `case`, nó na ná với `switch` trong `C++`
  - Bao gồm:
    - `case`: Đây là `cái để so sánh`, giá trị hoặc biểu thức sẽ được kiểm tra
    - `when`: Đây là `giá trị để so sánh với cái để so sánh`, nếu điều kiện `when` trả về `true`, đoạn mã tương ứng sẽ được thực thi
    - `else`: Nếu không có nhánh `when` nào khớp, nhánh `else` (nếu có) sẽ được thực thi
  - Ví dụ:
  
        ten = "Bui Tuan Tu1"
        
        case ten
        when "Bui Tuan Tu"
          puts "Xin chao #{ten}"
        when "Bui Tuan Tu1"
          puts "Xin chao #{ten}"
        else
          puts "Ko xin chao"
        end
  
        => Kết quả: Xin chao Bui Tuan Tu1
### Vòng lặp `while`, `until`, `for`, `loop`, `each`, `times`, `upto` và `downto`, Lặp với điều kiện `next`, `break`, `redo`:
  - Vòng lặp `while`: 
    - Lặp lại một khối mã khi điều kiện là `true`
    - Nếu điều kiện trở thành `false`, vòng lặp kết thúc
  - Vòng lặp `until`:
    - Lặp lại một khối mã khi điều kiện là `false`
    - Nếu điều kiện trở thành `true`, vòng lặp kết thúc
    - Ngược lại của `while`
  - Vòng lặp `for`:
    - Lặp qua một phạm vi (range) hoặc tập hợp (collection)
  - Vòng lớp `loop`:
    - Vòng lặp vô hạn -> Khi nào sử dụng break thì mới thoát
    - Cú pháp: 
               
          loop do
            # Mã thực thi
          end

          Ví dụ: 
          btt = 'B'
          loop do
            puts btt                  // Hiển thị ra btt hiện tại
            btt = btt + '1'           // Cộng lên 1 độ dài
            break if btt.length == 5  // Kiểm tra
          end
          => Kết quả chỉ là B111 
          => Nếu muốn hiển thị B1111 thì btt += 1 trước khi in ra
  
- Lặp qua các phần tử `each`
  - Sử dụng cho các tập hợp như mảng `Array`, `Hash`, `Range`
  - Sử dụng khi muốn duyệt qua từng phần tử trong một tập hợp mà không cần quản lý chỉ số và điều kiện dừng
  - Ví dụ:
     
        btt1 = %w[a b c d e f g] -> Khi 1 mảng toàn chuỗi thì Ruby khuyến nghị sử dụng %w

        btt1.each do |x|
        puts x+x
        end 
- Lặp qua phạm vi: `times`
  - Lặp một số lần cụ thể
  - Sử dụng `times` khi:
    - Số lần lặp biết trước
    - Ko cần kiểm tra điều kiện phức tạp
  - Cú pháp:
  
        số_lần.times do 
          # Code ...
        end
- Lặp qua chỉ số: `upto`, `downto`
  - `upto`: Lặp từ một số nhỏ lên đến lớn
  - `downto`: Lặp từ một số lớn xuống nhỏ
  - Sử dụng khi lặp qua các giá trị tăng dần hoặc giảm dần
  - `times` thì bắt đầu từ 0 tới giá trị `số lần`
  - còn `upto` thì bắt đầu từ `start` tới `end` chứ k phải bắt đầu từ `0`
  - Cú pháp `upto`:
    
        start.upto(end) do | variable |
          # Code
        end

- `next`, `break`, `redo` có thể sử dụng ở tất cả vòng lặp 
  - Rõ hơn về `redo`:
    - Sử dụng để lặp lại lần lặp hiện tại


### Hàm ( Phương Thức )
- Khác biệt so với các ngôn ngữ khác:
  - Khi gọi phương thức có thể không cần dấu `()`
  - Phương thức Ruby tự động trả về giá trị của biểu thức cuối cùng mà không cần `return`
  - Linh hoạt tham số -> Tham số mặc định, tham số không giới hạn (mảng), tham số từ khóa (hash)
  - Tích hợp khối (`block`) bằng `yield`
  - Có thể biểu diễn dưới dạng đối tượng và truyền như tham số
  - ...
- Định nghĩa phương thức
  - Cú pháp cơ bản:

        def tên phương thức(tham số 1, tham số 2)
          code
        end
        
        Ví dụ
        def hello(name)
          "Hello #{name}"
        end
        puts hello("Bui Tuan Tu")

- Phương thức không có tham số
- Phương thức tham số mặc định -> Gán cho tham số 1 giá trị
- Phương thức tham số linh hoạt `*args`
  - Sử dụng `*args` để nhận số lượng tham số không xác định
  - `*args` gói các tham số thành 1 mảng
  - Cú pháp:

        def method_args(*args)
          # args là một mảng
        end

        Ví dụ:

        def hello(*names)
          names.each do |name|
            puts "Hello, #{name}"
          end
        end
        hello('BTT', 'BTT1', 'BTT2')
- Phương thức với từ khóa tham số (**kwargs)
  - Dấu `:` sau tên tham số chỉ định là tham số từ khóa
  - `**kwargs` nhận số lượng tham số từ khóa không xác định
  - Gói các tham số thành 1 hash
  - Cú pháp

        def method_kwargs(**kwargs)
          # **kwargs là 1 hash
        end


        Ví dụ:
        def hello(**names)
          puts names.inspect
        end
        hello(name: 'BTT', age: '20')
        => Kết quả: {:name=>"BTT", :age=>"20"}
- Phương thức `yield`
  - Dùng để thực thi `block` được truyền vào một phương thức
    - `block` là đoạn nằm giữa `{}` hoặc `do...end` khi gọi phương thức
  - Nếu gọi `yield` mà ko kiểm tra khi gọi có truyền không thì sẽ gây ra lỗi 
    - kiểm tra sự tồn tại của block khi truyền vào bằng `block_given?`
  - Cú pháp:

        def method_yield
          puts "Hi 111"
          yield
          puts "Hi 333"
        end
        # Nếu gọi như này thì ko lỗi   
        method_yield { puts "Hi 222" }
        # Kết quả là: 
        Hi 111
        Hi 222
        Hi 333
        # Nếu gọi như này thì phải sửa lại code 
        method_yield
        # Thành như này
        def method_yield
          puts "Hi 111"
          yield if block_given?
          puts "Hi 333"
        end
        # Thì khi gọi ko truyền block vào cũng sẽ ko gây ra lỗi
        # Kết quả là:
        Hi 111
        Hi 333
- Phương thức là đối tượng (Proc, Lambda)
  - Mục đích:
    - Lưu trữ, tái sử dụng logic của phương thức
    - Truyên vào các phương thức khác giống như tham số
    - Thực thi logic khi cần
  - Hai cách chính để biểu diễn phương thức dưới dạng đối tượng là `Proc` và `Lambda`
  - `Proc` là đối tượng trong Ruby sử dụng để lưu đoạn mã và để gọi nhiều lần
    - `Proc` giống như một hộp mã lưu trữ logic, có thể:
      - Lưu đoạn mã logic
      - Truyền nó vào phương thức khác
      - Gọi lại logic đó khi nào muốn
    - Cách tạo `Proc`
      - `my_proc = Proc.new { puts "Hello BTT" }`
    - Cách gọi `Proc`
      - `my_proc.call`
    - Truyền tham số vào `Proc`
      - `proc_thamso = Proc.new { |thamso| puts "Hello #{thamso}!" }`
      - `proc_thamso.call("Bui Tuan Tu")`
    - Truyền `Proc` vào một phương thức
      
          def proc_in_method(number, proc1, proc2)
            if number.is_a?(Integer)
              proc1.call(number)
              proc2.call(number)
            else
              puts "Khong phai so nguyen"
            end
          end
          my_proc1 = Proc.new { |a| print a*a }
          my_proc2 = Proc.new { |a| print a*3 }
          proc_in_method(2, my_proc1, my_proc2)
          => Ket qua: 46 -> là 4 vs 6 bởi vì dùng print ( không xuống dòng )
  - `Lambda` cũng là đối tượng lưu đoạn mã giống như `Proc` nhưng nghiêm ngặt hơn
    - Kiểm tra số lượng tham số chặt chẽ
    - Hành vi return khác với `Proc`
      - Khác như sau:
      
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

            puts proc_123
            puts lambda_123
    - Cách tạo `Lambda`
      - `my_lambda = lambda { puts "Hello BTT" }`
      - `my_lambda1 = -> { puts "Hello BTT1" }`
    - Cách gọi `Lambda`
      - `my_lambda.call`
    - Truyền tham số vào `lambda`
      - `my_lambda2 = -> (a,b) {puts a*b}`
    - Nghiên cứu rõ hơn vụ chặt chẽ hơn về số lượng tham số của `lambda` vs `proc`
      - Qua ví dụ này:

            my_proc = Proc.new { |a, b| puts "a = #{a}, b = #{b}" }
            my_proc.call(2) -> Không lỗi -> a = 2, b =
            my_lambda2 = ->(a,b) {puts "a = #{a}, b = #{b}" }
            my_lambda2.call(2) -> Lỗi -> ạdhakjdhkjadhkj

- Phương thức thuộc lớp hoặc module
  - Phương thức `thực thể`: Được gọi trên các đối tượng của lớp
    - Được định nghĩa trong một lớp và được gọi trên các đối tượng của lớp đó
    - Khi tạo 1 đối tượng từ lớp bằng `new` -> Có thể gọi các phương thức `thực thể` trên đối tượng đó
    - Định nghĩa phương thức `không sử dụng` `self`
    - Chỉ có thể gọi từ một đối tượng của lớp
    - Ví dụ:
    
          class BTT
            def add(a,b)
              a + b
            end
          end
          
          btt = BTT.new
          puts btt.add(2,3) -> 5

  - Phương thức `lớp`: Được gọi trực tiếp trên lớp, sử dụng `self`
    - Được định nghĩa để gọi trực tiếp trên lớp, không cần `new` tạo đối tượng
    - Khi định nghĩa phương thức `phải sử dụng` `self` trước tên phương thức
    - Định nghĩa phương thức với `def self.method_name`
    - Không cần tạo đối tượng mà gọi trực tiếp từ lớp
    - Ví dụ:

          class BTT
            def self.add(a,b)
              a + b
            end
          end
          
          btt = BTT.add(2,3)
          puts btt -> 5
  - Khi nào sử dụng `instance method` và `class method`
    - Sử dụng `instance method` khi cần làm việc với dữ liệu liên quan đến đối tượng cụ thể
    - Sử dụng `class method` khi logic không liên quan tới một đối tượng cụ thể, mà áp dụng cho cả lớp
### Class và Object
- 