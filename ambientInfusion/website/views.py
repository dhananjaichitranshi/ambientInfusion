from django.shortcuts import render
from website.models import Product

def index(request):
	title = 'Dhananjai'
	return render(request, 'website/index.html', {'title': title})


def projectList(request):
	qs = Product.objects.all()
	return render(request, 'website/projectList.html', {"qs":qs})

def projectDetail(request,product_id):
	print(product_id)
	qs = Product.objects.get(id=1)
	return render(request, 'website/productDetails.html', {"qs":qs})