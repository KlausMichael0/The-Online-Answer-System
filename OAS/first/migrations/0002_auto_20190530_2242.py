# Generated by Django 2.1.8 on 2019-05-30 22:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('first', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='question',
            name='test',
        ),
        migrations.AlterField(
            model_name='question',
            name='summary',
            field=models.CharField(blank=True, max_length=128, null=True),
        ),
    ]
