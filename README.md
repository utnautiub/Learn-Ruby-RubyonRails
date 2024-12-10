# Lộ trình học Ruby

## Giai đoạn 1: Thiết lập môi trường và làm quen với ngôn ngữ
**Mục tiêu**: Cài đặt Ruby, hiểu cú pháp cơ bản.

- **Cài đặt Ruby**:
   - Dùng `rbenv` hoặc `RVM` trên Linux/macOS, `RubyInstaller` trên Windows.
   - Chọn Ruby phiên bản 3.x.

- **IRB & Bundler**:
   - Sử dụng `irb` để thử lệnh Ruby.
   - `gem install bundler` để quản lý gem.

- **Cú pháp cơ bản**:
   - Kiểu dữ liệu: `String`, `Integer`, `Float`, `Boolean`, `Nil`.
   - In ra màn hình: `puts`, `print`, `p`.
   - Biến cục bộ, toán tử (+, -, *, /, %, ==, !=, &&, ||, !).

- **Cấu trúc điều khiển**:
   - `if/else`, `unless`, `case/when`, `while`, `until`, `for`, `each`.

**Thực hành**:
- Viết chương trình demo.
- Viết script chuyển đổi nhiệt độ Celsius sang Fahrenheit.
- Cài đặt và sử dụng một gem (vd: `colorize`).

## Giai đoạn 2: Cấu trúc dữ liệu và thao tác dữ liệu
**Mục tiêu**: Nắm vững Array, Hash, String, Symbol và thao tác nâng cao.

- **Array & Hash**:
   - Khởi tạo, truy cập, thêm/xóa phần tử.
   - Hash: cặp key-value, sử dụng Symbol làm key.
   - Phương thức: `map`, `select`, `reject`, `reduce`.

- **String & Symbol**:
   - Nối chuỗi, nội suy `"#{}"`.
   - Phương thức chuỗi: `split`, `gsub`, `strip`, `upcase`.
   - Symbol vs String.

- **Regular Expression**:
   - Kiểm tra chuỗi bằng Regex (`=~`, `.match`, `.scan`).
   - Ví dụ: Kiểm tra email hợp lệ.

**Thực hành**:
- Đếm số lần xuất hiện từ trong chuỗi.
- Lọc danh sách email hợp lệ từ một mảng.
- Phân tích văn bản (đếm từ, ký tự, câu).

## Giai đoạn 3: Lập trình hướng đối tượng (OOP) cơ bản
**Mục tiêu**: Hiểu về class, object, instance variable, kế thừa.

- **Class & Object**:
   - Định nghĩa class, tạo đối tượng, gọi phương thức.
   - Biến instance (`@variable`), `initialize`.

- **Encapsulation & Accessors**:
   - `attr_reader`, `attr_writer`, `attr_accessor`.
   - Phạm vi `public`, `private`, `protected`.

- **Kế thừa & Đa hình**:
   - `class Child < Parent`.
   - `super` để mở rộng chức năng.
   - Đa hình qua duck typing.

- **Class Methods & Singleton Methods**:
   - `def self.method` để tạo class method.

**Thực hành**:
- Tạo class `Person` và `Student` kế thừa từ `Person`.
- Xây dựng `Book` và `Library`, trong đó `Library` lưu nhiều `Book`.

## Giai đoạn 4: Module, Mixin và Namespace
**Mục tiêu**: Tái sử dụng code với module, tránh trùng tên bằng namespace.

- **Module**:
   - Module là tập hợp phương thức, hằng số, không tạo instance.
   - So với class: không kế thừa mà mixin.

- **Mixin**:
   - `include` để thêm instance methods vào class.
   - `extend` để thêm class methods.

- **Namespace**:
   - Dùng module để đóng gói class, tránh trùng tên.

**Thực hành**:
- Tạo module `Formatter` và mixin vào nhiều class.
- Dùng namespace `Car::SUV`, `Car::Sedan`.

## Giai đoạn 5: File I/O, Xử lý ngoại lệ và Công cụ cơ bản
**Mục tiêu**: Đọc/ghi file, xử lý ngoại lệ, quản lý gem.

- **File I/O**:
   - `File.open`, `IO.read`, `File.write`.
   - Chú ý đóng file hoặc dùng block.

- **Xử lý ngoại lệ**:
   - `begin…rescue…ensure…end`.
   - `raise` ngoại lệ khi cần.

- **Gems & Bundler**:
   - `Gemfile`, `bundle install`.
   - Sử dụng gem bên ngoài (vd: `httparty`).

**Thực hành**:
- Đọc file văn bản, phân tích, ghi kết quả ra file mới.
- Gọi API, parse JSON.
- Xử lý ngoại lệ khi file không tồn tại.

## Giai đoạn 6: Blocks, Procs, Lambdas
**Mục tiêu**: Hiểu block, proc, lambda để viết code linh hoạt.

- **Blocks**:
   - Dùng `yield` để gọi block.
   - `{}` hoặc `do...end` để định nghĩa block.

- **Proc & Lambda**:
   - `my_proc = Proc.new { … }`, `my_lambda = -> { … }`.
   - So sánh hành vi `return` trong proc và lambda.

**Thực hành**:
- Phương thức chấp nhận block, áp dụng logic tùy biến lên mảng.
- Tạo proc và lambda xử lý chuỗi, thử so sánh sự khác biệt.

## Giai đoạn 7: Enumerable & Enumerator
**Mục tiêu**: Làm chủ duyệt và xử lý tập hợp dữ liệu.

- **Enumerable**:
   - `each`, `map`, `select`, `reduce`.
   - Chaining method để xử lý dữ liệu phức tạp.

- **Enumerator**:
   - Tạo enumerator với `to_enum`.
   - Xử lý dữ liệu lớn, lazy enumeration.

**Thực hành**:
- Lọc và biến đổi danh sách phức tạp bằng `map`, `select`, `reduce`.
- Tạo một enumerator để sinh ra dãy số.

---

# Lộ trình học Ruby on Rails

Sau học Ruby, chuyển sang học Ruby on Rails.

## Giai đoạn 1: Giới thiệu và Thiết lập Môi trường Rails
**Mục tiêu**: Cài đặt Rails, hiểu MVC, khởi tạo dự án cơ bản.

- **Cài đặt Rails**:
   - `gem install rails`
   - `rails new myapp`

- **Cấu trúc Dự án Rails**:
   - Hiểu `app/`, `config/`, `db/`, `public/`.
   - MVC (Model-View-Controller) là gì?

- **Rails Server & Console**:
   - `rails server`
   - `rails console`

**Thực hành**:
- Tạo ứng dụng Rails mới.
- Chạy ứng dụng trên `http://localhost:3000`.
- Đọc qua cấu trúc thư mục.

## Giai đoạn 2: Routing & Controller
**Mục tiêu**: Định tuyến request đến controller/action.

- **Routing**:
   - `config/routes.rb`: `get`, `post`, `resources`.
   - RESTful routes.

- **Controller & Action**:
   - `rails g controller Pages home`
   - Action: phương thức trong controller, render view.

**Thực hành**:
- Tạo `PagesController` với `home`, `about`.
- Định nghĩa route cho `home` và `about`.

## Giai đoạn 3: Model & Active Record
**Mục tiêu**: Tương tác DB qua Active Record.

- **Active Record Basics**:
   - `rails g model Article title:string body:text`
   - `rails db:migrate`

- **CRUD**:
   - `Article.create`, `Article.find`, `Article.update`, `Article.destroy`
   - Validations: `validates :title, presence: true`

- **Associations**:
   - `has_many`, `belongs_to`

**Thực hành**:
- Tạo model `Article`, CRUD trên console.
- Thêm validation.

## Giai đoạn 4: Views & Templates
**Mục tiêu**: Hiển thị dữ liệu, dùng ERB, form, link helper.

- **ERB Templates**:
   - `app/views/controller/action.html.erb`
   - `<%= %>` để chèn Ruby code

- **Layout & Partial**:
   - `app/views/layouts/application.html.erb`
   - Partial: `_form.html.erb`

- **Helpers**:
   - `link_to`, `form_with`

**Thực hành**:
- Hiển thị danh sách `Article`.
- Tạo form thêm mới `Article`.

## Giai đoạn 5: Tích hợp MVC - CRUD đầy đủ
**Mục tiêu**: Xây dựng CRUD cho model.

- **Controller Actions chuẩn**:
   - `index`, `show`, `new`, `create`, `edit`, `update`, `destroy`

- **Routing resources**:
   - `resources :articles`

- **Flash Messages**:
   - Thông báo thành công/lỗi sau hành động.

**Thực hành**:
- Hoàn thiện CRUD `Article` với tất cả action.

## Giai đoạn 6: Migrations, Validation, Callback
**Mục tiêu**: Quản lý schema, xác thực dữ liệu, callback logic.

- **Migrations**:
   - Thêm/xóa/sửa cột trong bảng.

- **Validations**:
   - `validates :title, presence: true, length: { minimum: 5 }`

- **Callbacks**:
   - `before_save`, `after_create`

**Thực hành**:
- Thêm cột `published` vào `Article`.
- Thêm validation, callback.

## Giai đoạn 7: Asset Pipeline & CSS/JS
**Mục tiêu**: Quản lý CSS, JS, hình ảnh.

- **Asset Pipeline**:
   - CSS, JS trong `app/assets/`
   - Sử dụng Bootstrap hoặc Tailwind.

**Thực hành**:
- Thêm CSS cơ bản, cải thiện giao diện.
- Thêm Bootstrap cho giao diện đẹp hơn.

## Giai đoạn 8: Tạo API cho FE độc lập gọi
**Mục tiêu**: Xây dựng API (JSON) để Front-End (React, Vue, Angular, v.v.) sử dụng.

- **API Endpoints**:
   - Sử dụng `respond_to :json` hoặc Rails API mode (`--api`).
   - `render json: { data: ... }`

- **Serializers / Jbuilder**:
   - Tạo response JSON gọn gàng, có cấu trúc.
   - Dùng gem `jbuilder` hoặc `active_model_serializers` để format dữ liệu.

- **CORS & Bảo mật**:
   - Thiết lập CORS để FE gọi API từ domain khác.
   - Xác thực API Token (ví dụ bằng `has_secure_password` hoặc JWT).

**Thực hành**:
- Tạo endpoint `/api/articles` trả về danh sách bài viết dạng JSON.
- Cài đặt CORS, FE gọi thử endpoint này.
- Tạo endpoint `POST /api/articles` để thêm bài mới từ FE.

## Giai đoạn 9: Mở rộng kiến thức Rails
**Mục tiêu**: Chuẩn bị cho bước nâng cao.

- **Caching & Performance**
- **Internationalization (i18n)**

**Thực hành**:
- Thử i18n cho một label.

---


## Đầu ra: 
- Thực hiện được 1 project Quản Lý Sinh Viên
- Bao gồm các chức năng:
  - Thêm, Sửa, Xóa, Xem chi tiết sinh viên
  - Đăng nhập, đăng ký, thay đổi tài khoản, quên mật khẩu ( gửi mail )
  - ...
- Sử dụng:
  - BE: RoR -> Làm BE -> Tạo API cho FE gọi
  - FE: Nuxt -> Làm FE -> Gọi API từ BE qua endpoint