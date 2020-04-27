# Generated by Django 2.0 on 2020-04-27 12:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=254, null=True)),
                ('label_name', models.CharField(blank=True, max_length=254, null=True)),
                ('description', models.TextField(blank=True, null=True)),
                ('specialites', models.CharField(blank=True, max_length=254, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
            options={
                'verbose_name': 'Category Information',
                'verbose_name_plural': 'Categories',
            },
        ),
        migrations.AddField(
            model_name='product',
            name='image_small',
            field=models.ImageField(default='../static/images/product.jpeg', null=True, upload_to='dynamicImg/project'),
        ),
        migrations.AddField(
            model_name='product',
            name='image_two',
            field=models.ImageField(default='../static/images/productDefault.jpg', null=True, upload_to='dynamicImg/project'),
        ),
        migrations.AlterField(
            model_name='product',
            name='image',
            field=models.ImageField(default='../static/images/productDefault.jpg', null=True, upload_to='dynamicImg/project'),
        ),
        migrations.AddField(
            model_name='product',
            name='category',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='website.Category'),
        ),
    ]