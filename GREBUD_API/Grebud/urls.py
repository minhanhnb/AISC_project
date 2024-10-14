from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include('GrebudApp.api.urls')),  # Chú ý include đúng đường dẫn của ứng dụng
]
