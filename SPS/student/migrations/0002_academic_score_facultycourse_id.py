# Generated by Django 2.1.2 on 2018-11-01 15:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='academic_score',
            name='Facultycourse_Id',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='student.Faculty'),
        ),
    ]