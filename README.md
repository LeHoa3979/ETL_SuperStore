# **Phân Tích & ETL Dữ Liệu Bán Hàng Superstore**  

## **Mục Tiêu**  
Dự án này nhằm mục đích trích xuất, chuyển đổi và tải (ETL) dữ liệu bán hàng từ bộ dữ liệu Superstore, lưu trữ trong SQL Server, và tạo dashboard tương tác bằng Power BI để cung cấp thông tin cho hoạt động kinh doanh.  

## **Mô Tả**  
Dự án tuân theo một quy trình ETL có cấu trúc như sau:  

### **1. Làm Sạch và Chuyển Đổi Dữ Liệu (ETL - Extract & Transform)**  
- **Excel & Python (Pandas):**  
  - Loại bỏ dữ liệu trùng lặp và giá trị thiếu.  
  - Chuẩn hóa định dạng cột (ngày tháng, trường văn bản, giá trị số).  
  - Tạo thêm các thuộc tính phụ (ví dụ: `Year`, `Month`, `Day`, `RegionID`).  

### **2. Tải Dữ Liệu (ETL - Load)**  
- **SQL Server:**  
  - Thiết kế mô hình **Star Schema** để truy vấn hiệu quả.  
  - Nhập dữ liệu đã xử lý vào bảng fact và bảng dimension bằng Python (`pyodbc`).  
  - Đảm bảo tính toàn vẹn và nhất quán dữ liệu thông qua ràng buộc và chỉ mục.  

### **3. Phân Tích và Trực Quan Hóa Dữ Liệu**  
- **Power BI:**  
  - Kết nối với SQL Server để truy cập dữ liệu thời gian thực.  
  - Tạo các biểu đồ tương tác:  
    - **Phân Tích Doanh Số & Lợi Nhuận Theo Thời Gian**  
    - **Thông Tin Bán Hàng Theo Khu Vực & Phân Khúc Khách Hàng**  
    - **Top 10 Sản Phẩm Bán Chạy Nhất**  
    - **Heatmap Doanh Số Theo Ngày Trong Tuần**  
  - Triển khai các **hàm DAX** để tính toán nâng cao.  

## **Kết Luận**  
Dự án này thể hiện một quy trình ETL hoàn chỉnh, từ việc trích xuất dữ liệu thô đến báo cáo phân tích hỗ trợ ra quyết định. Nó làm nổi bật sức mạnh của **Python, SQL Server và Power BI** trong việc xây dựng giải pháp phân tích dữ liệu quy mô lớn phục vụ mục tiêu kinh doanh.


## **Dashboards**  
![Image](https://github.com/user-attachments/assets/944d4bdf-efc0-408e-a865-227fd2342768)

---


















