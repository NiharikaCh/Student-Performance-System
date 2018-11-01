from django.shortcuts import render
from django.http import HttpResponse
from .models import *
from django.views.decorators.csrf import csrf_exempt
from django.db import connection,transaction
from django.contrib.auth import login,logout
cursor=connection.cursor()
# Create your views here

# open SPS main page
def Main_page(request):
    return render(request,'student/Main_page.html')
def facultyhome(request):
	return render(request,'student/facultyhome.html')

# open student home page
def student(request):
    return render(request,'student/student.html')
def test(request):
	return render(request,'student/test.html')
# open login page
def sign(request):
	return render(request,'student/sign.html')

# validate login id,password
def login1(request):
	if request.method == 'POST':
		if request.POST.get('id') and request.POST.get('pwd'):
			q=request.POST.get('pwd')
			p=request.POST.get('id')
			f=[]
			f1=[]
			f2=[]
			f3=[]
			b=[]
			objects=Credentials.objects.filter(User_Id=p,Password=q)
			if len(objects)!=0 and p[0]=='S':
				return render(request,'student/student.html')
			elif len(objects)!=0 and p[0]=='F':
				cursor.execute("select Academic_Course_Id_id from student_faculty where Status='1' and Faculty_Id='%s'"%(p))
				g=cursor.fetchall()
				for i in g:
					f.append(list(i))
				cursor.execute("select Academic_Course_Id_id from student_faculty where Status='2' and Faculty_Id='%s'"%(p))
				for i in cursor.fetchall():
					f1.append(list(i))
				f2=[k for k in f if "-" in k[0]]
				f4=[k for k in f if "-" not in k[0]]
				f3=[k for k in f1 if "-" in k[0]]
				f5=[k for k in f1 if "-" not in k[0]]
				return render(request,'student/facultyhome.html',{'a':f4,'b':f5,'c':f2,'d':f3})
			return render(request,'student/sign.html')
		else:
			return render(request,'student/sign.html')

def adminhome(request):
	return render(request,'student/adminhome.html')

# add student achievements usecase	
def add_achievements(request):
	if request.method == 'POST':
		if request.POST.get('rollno') and request.POST.get('achievement'):
			achieve=Achievements()
			achieve.Student_Achievement= request.POST.get('achievement')
			achieve.Student_Id_id = request.POST.get('rollno')
			achieve.save()
			return render(request, 'student/add_achievements.html')   
	else:
		return render(request,'student/add_achievements.html')
def edit(request):
	return render(request,'student/edit.html')

# edit attendance usecase
def openedit(request):
	if request.method == 'POST':
		if request.POST.get('rollno') and request.POST.get('courseid') and request.POST.get('date') and request.POST.get('status'):
			d=request.POST.get('date')
			f=request.POST.get('status')
			e=d.split('-')
			j = request.POST.get('courseid')
			r=request.POST.get('rollno')
			#objects= Attendance.objects.filter(Student_Id=r,Academic_Course_Id=j)
			#query = "update student_attendance set M3_{e}={f} where Academic_Course_Id_id={j}".format(e=e, f=f, j=j)
			#cursor.execute(query)
			#for i in objects:
				#print(i.Student_Id)
				#cursor.execute("update student_attendance set M3_{e}={f} where Student_Id_id=i.Student_Id ".format(e=e,f=f))
			#cursor.execute("update student_attendance set M3_"+e+"='%s' where Student_Id_id='%s' and Academic_Course_Id_id='%s'"%(f,r,j))
			if e[1]=='01' or e[1]=='08':
				cursor.execute("update student_attendance set M1_"+e[2]+"='%s' where Student_Id_id='%s' and Academic_Course_Id_id='%s'"%(f,r,j))
			elif e[1]=='02' or e[1]=='09':
				cursor.execute("update student_attendance set M2_"+e[2]+"='%s' where Student_Id_id='%s' and Academic_Course_Id_id='%s'"%(f,r,j))
			elif e[1]=='03' or e[1]=='10':
				cursor.execute("update student_attendance set M3_"+e[2]+"='%s' where Student_Id_id='%s' and Academic_Course_Id_id='%s'"%(f,r,j))
			elif e[1]=='04' or e[1]=='11':
				cursor.execute("update student_attendance set M4_"+e[2]+"='%s' where Student_Id_id='%s' and Academic_Course_Id_id='%s'"%(f,r,j))
			elif e[1]=='05' or e[1]=='12':
				cursor.execute("update student_attendance set M5_"+e[2]+"='%s' where Student_Id_id='%s' and Academic_Course_Id_id='%s'"%(f,r,j))
			return render(request, 'student/edit.html') 


# upload attendance usecase
def upload_attendance(request):
	if request.method == 'POST':
		if request.POST.get('file'):
			g=request.POST.get('file')
			cursor.execute("load data local infile '/home/vasu/{g}' into table student_attendance fields terminated by ','".format(g=g))
			return render(request, 'student/adminhome.html')
	else:
		   return render(request, 'student/adminhome.html')

def facultyhome(request):
	return render(request, 'student/facultyhome.html')

def EditMarks(request):
	return render(request, 'student/EditMarks.html')

def course(request):
	return render(request, 'student/course.html')

def marks(request):
	if request.method == 'POST':
		if request.POST.get('file'):
			g=request.POST.get('file')
			cursor.execute("load data local infile '/home/vasu/{g}' into table student_academic_score fields terminated by ','".format(g=g))
			return render(request, 'student/facultyhome.html')
	else:
		return render(request, 'student/facultyhome.html')


def emarks(request):
	if request.method == 'POST':
		if request.POST.get('roll') and request.POST.get('type') and request.POST.get('mar') and request.POST.get('cid'):
			a=request.POST.get('roll')
			b=request.POST.get('type')
			c=request.POST.get('mar')
			par=request.POST.get('cid')
			#objects=Faculty.objects.filter(Academic_Course_Id_id=par,Status=1)
			cursor.execute("select Facultycourse_Id from student_faculty where Academic_Course_Id_id='%s' and Status='1'"%(par))
			e=cursor.fetchall()
			o=[]
			for i in e:
				o.append(list(i))
			u=[]
			cursor.execute("select tmarks,wmarks from student_gradeweightage where Facultycourse_Id_id='%s' and Exam_Type='%s'"%(o[0][0],b))
			h=cursor.fetchall()
			for i in h:
				u.append(list(i))
			perc = (float(c)/float(u[0][0]))*float(u[0][1])
			cursor.execute("update student_academic_score set Marks='%s',Marks_perc='%f' where Student_Id_id='%s' and Facultycourse_Id_id='%s' and Exam_Type='%s'"%(c,perc,a,o[0][0],b))
			return render(request, 'student/EditMarks.html')
		return render(request, 'student/EditMarks.html')
	else:
		return render(request, 'student/EditMarks.html')


"""def fun(request):
	if request.method == 'POST':
		d=request.POST.get('fcid')
		emarks(d)"""



