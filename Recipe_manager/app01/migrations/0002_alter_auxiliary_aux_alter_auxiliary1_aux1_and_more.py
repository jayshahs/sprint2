# Generated by Django 4.0.5 on 2022-08-07 21:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app01', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='auxiliary',
            name='aux',
            field=models.CharField(default='Salt', max_length=128, verbose_name='aux'),
        ),
        migrations.AlterField(
            model_name='auxiliary1',
            name='aux1',
            field=models.CharField(default='Salt', max_length=128, verbose_name='aux'),
        ),
        migrations.AlterField(
            model_name='auxiliary2',
            name='aux2',
            field=models.CharField(default='Salt', max_length=128, verbose_name='aux'),
        ),
        migrations.AlterField(
            model_name='meat',
            name='meat',
            field=models.CharField(default='Beef', max_length=128, verbose_name='Meat'),
        ),
        migrations.AlterField(
            model_name='meat1',
            name='meat1',
            field=models.CharField(default='Chicken', max_length=128, verbose_name='Meat'),
        ),
        migrations.AlterField(
            model_name='vegetable',
            name='veg',
            field=models.CharField(default='Coriander', max_length=128, verbose_name='vegetable'),
        ),
        migrations.AlterField(
            model_name='vegetable1',
            name='veg1',
            field=models.CharField(default='coriander', max_length=128, verbose_name='vegetable'),
        ),
    ]
