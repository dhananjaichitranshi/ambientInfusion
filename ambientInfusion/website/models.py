from django.db import models
import datetime
from django.utils.translation import ugettext_lazy as _

class Product(models.Model):
    name = models.CharField(max_length=254, blank=True, null=True)
    label_name = models.CharField(max_length=254, blank=True, null=True)
    description = models.TextField(null=True, blank=True)
    specialites = models.CharField(max_length=254,  null=True, blank=True)
    image_small = models.ImageField(upload_to='dynamicImg/project',max_length=100, null=True)
    image = models.ImageField(upload_to='dynamicImg/project',max_length=100, null=True)
    image_two = models.ImageField(upload_to='dynamicImg/project',max_length=100)
    is_active = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
       verbose_name = _("Product Information")
       verbose_name_plural = _("Products")

    def __unicode__(self):
        return "{0} {1}".format(self.name, self.label_name)
