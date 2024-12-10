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
- Vòng lặp `while`, `until`, `for`, `loop`, `each`, `times`, `upto` và `downto`, Lặp với điều kiện `next`, `break`, `redo`:
  - Vòng lặp `while`: 
  - 





