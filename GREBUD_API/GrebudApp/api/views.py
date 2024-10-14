# C:\Users\acer\Grebud\GrebudApp\api\views.py

#from django.http import JsonResponse

from django.http import JsonResponse
from .models import Product

def product_list(request):
    products = Product.objects.all()
    product_list = []
    for product in products:
        product_list.append({
            "id": product.id,
            "productname": product.productname,
            "price": product.price,
            "category": product.category,
            "description": product.description,
            "quantity": product.quantity
        })
    return JsonResponse(product_list, safe=False)
