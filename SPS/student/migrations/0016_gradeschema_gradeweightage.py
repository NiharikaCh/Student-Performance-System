# Generated by Django 2.1.2 on 2018-11-11 08:50

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0015_auto_20181111_0849'),
    ]

    operations = [
        migrations.CreateModel(
            name='Gradeschema',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('A', models.CharField(max_length=10)),
                ('A2', models.CharField(max_length=10)),
                ('B', models.CharField(max_length=10)),
                ('B2', models.CharField(max_length=10)),
                ('C', models.CharField(max_length=10)),
                ('C2', models.CharField(max_length=10)),
                ('D', models.CharField(max_length=10)),
                ('Semester', models.CharField(max_length=10, null=True)),
                ('Facultycourse_Id', models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='student.Faculty')),
            ],
        ),
        migrations.CreateModel(
            name='Gradeweightage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Exam_Type', models.CharField(max_length=20, null=True)),
                ('tmarks', models.DecimalField(decimal_places=2, max_digits=10, null=True)),
                ('wmarks', models.DecimalField(decimal_places=2, max_digits=10, null=True)),
                ('Semester', models.CharField(max_length=10, null=True)),
                ('Facultycourse_Id', models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='student.Faculty')),
            ],
        ),
    ]
