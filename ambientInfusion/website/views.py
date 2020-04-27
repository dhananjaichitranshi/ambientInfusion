from django.shortcuts import render
from website.models import Product,Category

def index(request):
	title = 'Dhananjai'
	print("Insode cat")
	qs = Category.objects.all()
	return render(request, 'website/index.html', {'title': title,"qs":qs})

def projectList(request,category_id):
	qs = []
	if int(category_id) > 0:
		print("In here")
		qs = Product.objects.filter(category=category_id)
		category_id_info = Category.objects.get(id=category_id)
	else:
		qs = Product.objects.all()
		category_id_info = {}
	qs_len = len(qs)
	print(category_id_info)
	return render(request, 'website/projectList.html', {"qs":qs,"qs_len":qs_len,"category_id_info":category_id_info})

def projectDetail(request,product_id):
	qs = Product.objects.get(id=product_id)
	return render(request, 'website/productDetails.html', {"qs":qs})

def categoriesList(request):
	print("Insode cat")
	qs = Category.objects.all()
	return render(request, 'website/index.html', {"qs":qs})