from django.db import models

class Product(models.Model):
    # Các trường trong bảng product
    id = models.AutoField(primary_key=True)
 
    seller = models.ForeignKey('Seller', on_delete=models.CASCADE, default=1)

    productname = models.CharField(max_length=255)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    category = models.CharField(max_length=255)
    description = models.TextField()
    quantity = models.IntegerField()
    create_at = models.DateTimeField(auto_now_add=True)  # Tự động thêm thời gian khi tạo mới

    class Meta:
        db_table = 'product'  # Tên bảng hiện có trong MySQL

    def __str__(self):
        return self.productname
class Seller(models.Model):
    seller_id = models.CharField(max_length=5, primary_key=True)
    username = models.CharField(max_length=100, unique=True)
    password = models.CharField(max_length=100)
    description = models.TextField()
    img_ava = models.ImageField(upload_to='avatars/')

    class Meta:
        db_table = 'seller'  # Tên bảng seller trong MySQL

    def __str__(self):
        return self.username
