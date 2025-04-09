# Robot Framework Test Automation

## Cài đặt

1. Cài đặt Python (version 3.7+)
2. Cài đặt các thư viện cần thiết:
```bash
pip install -r requirements.txt
rfbrowser init
```

## Cấu trúc Project

```
your_project_root/
├── tests/                  # Thư mục chứa các test suite
├── resources/              # Thư mục chứa các resource file
├── variables/              # Thư mục chứa các variable file
├── libraries/              # Thư mục chứa các thư viện tùy chỉnh
└── results/               # Thư mục chứa kết quả test
```

## Chạy Test

Để chạy toàn bộ test:
```bash
robot -d results tests
```

Để chạy test cụ thể:
```bash
robot -d results tests/login/login_test.robot
```