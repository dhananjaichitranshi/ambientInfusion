from django.db import models
import datetime
from django.utils.translation import ugettext_lazy as _

class Category(models.Model):
    name = models.CharField(max_length=254, blank=True, null=True)
    label_name = models.CharField(max_length=254, blank=True, null=True)
    description = models.TextField(null=True, blank=True)
    specialites = models.CharField(max_length=254,  null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
       verbose_name = _("Category Information")
       verbose_name_plural = _("Categories")

    def __unicode__(self):
        return "{0} {1}".format(self.name, self.label_name)

    def __str__(self):
        return self.name


class Product(models.Model):
    name = models.CharField(max_length=254, blank=True, null=True)
    label_name = models.CharField(max_length=254, blank=True, null=True)
    description = models.TextField(null=True, blank=True)
    specialites = models.CharField(max_length=254,  null=True, blank=True)
    category = models.ForeignKey(Category,default=1,on_delete=models.CASCADE)
    image_small = models.ImageField(upload_to='dynamicImg/project',max_length=100, null=True,default='../static/images/product.jpeg')
    image = models.ImageField(upload_to='dynamicImg/project',max_length=100, null=True,default='../static/images/productDefault.jpg')
    image_two = models.ImageField(upload_to='dynamicImg/project',max_length=100, null=True,default='../static/images/productDefault.jpg')
    is_active = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
       verbose_name = _("Product Information")
       verbose_name_plural = _("Products")

    def __unicode__(self):
        return "{0} {1}".format(self.name, self.label_name)
    
    def __str__(self):
        return self.name
