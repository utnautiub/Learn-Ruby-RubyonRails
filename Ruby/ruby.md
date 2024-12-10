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