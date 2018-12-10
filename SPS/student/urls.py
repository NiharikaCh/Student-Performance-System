from django.conf.urls import include,url
from django.conf import settings
from . import views
from django.http import HttpResponseRedirect
urlpatterns = [
    url('^$',views.Main_page,name='Main_page'),
	url(r'^Main_page',views.Main_page,name='Main_page'),
	url(r'^student_attendance',views.student_attendance,name='student_attendance'),
	url(r'^sign', views.sign,name="sign"),
	url(r'^dim', views.dim,name="dim"),
	url(r'^yu', views.yu,name="yu"),
	url(r'^ty', views.ty,name="ty"),
	url(r'^func', views.func,name="func"),
	url(r'^editm', views.editm,name="editm"),
	url(r'^ase', views.ase,name="ase"),
	url(r'^mach', views.mach,name="mach"),
	url(r'^Acad', views.ase,name="Acad"),
	url(r'^subject', views.subject,name="subject"),
	#url(r'^x', views.x,name="x"),
	url(r'^login1', views.login1,name="login1"),
	url(r'^student', views.student,name="student"),
	url(r'^add_achievements', views.add_achievements,name="add_achievements"),
	url(r'^addgradeschema', views.addgradeschema,name="addgradeschema"),
	url(r'^addgradeweightage', views.addgradeweightage,name="addgradeweightage"),
	url(r'^adminhome', views.adminhome,name="adminhome"),
	url(r'^edit', views.edit,name="edit"),
	url(r'^attedit', views.attedit,name="attedit"),
	url(r'^test',views.test,name="test"),
	url(r'^ordermarks',views.ordermarks,name="ordermarks"),
	url(r'^orderatten',views.orderatten,name="orderatten"),
	url(r'^facultyhome',views.facultyhome,name="facultyhome"),
	url(r'^openedit',views.openedit,name="openedit"),
	url(r'^facultyhome',views.facultyhome,name="facultyhome"),
	url(r'^loadmarks',views.loadmarks,name="loadmarks"),
	url(r'^hjmarks',views.hjmarks,name="hjmarks"),
	url(r'^phjmarks',views.phjmarks,name="phjmarks"),
	url(r'^ghmarks',views.ghmarks,name="ghmarks"),
	url(r'^mlmarks',views.mlmarks,name="mlmarks"),
	#url(r'^sendemail',views.sendemail,name="sendemail"),
	#url(r'^pmlmarks',views.pmlmarks,name="pmlmarks"),
	#url(r'^aloadpro',views.aloadpro,name="aloadpro"),
	#url(r'^fun',views.fun,name="fun"),
	url(r'^emarks',views.emarks,name="emarks"),
	url(r'^EditMarks',views.EditMarks,name="EditMarks"),
	url(r'^upload_attendance', views.upload_attendance,name="upload_attendance"),
	url(r'^updated_attendance', views.updated_attendance,name="updated_attendance"),
	url(r'^course',views.course,name="course"),
	url(r'^PreCourse',views.PreCourse,name="PreCourse"),
	url(r'^marks',views.marks,name="marks"),
	url(r'^pmarks',views.pmarks,name="pmarks"),
	url(r'^f1',views.f1,name="f1"),
	
	url(r'^viewatten',views.viewatten,name="viewatten"),
	url(r'^favicon.ico/$', lambda x: HttpResponseRedirect(settings.STATIC_URL+'ico/favicon.ico')),
]
#<link rel="shortcut icon" href="{{ STATIC_URL }}ico/favicon.ico">
