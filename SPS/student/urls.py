from django.conf.urls import include,url
from django.conf import settings
from . import views
from django.http import HttpResponseRedirect
urlpatterns = [
    url('^$',views.Main_page,name='Main_page'),
	url(r'^sign', views.sign,name="sign"),
	url(r'^login1', views.login1,name="login1"),
	url(r'^student', views.student,name="student"),
	url(r'^add_achievements', views.add_achievements,name="add_achievements"),
	url(r'^adminhome', views.adminhome,name="adminhome"),
	url(r'^edit', views.edit,name="edit"),
	url(r'^test',views.test,name="test"),
	url(r'^facultyhome',views.facultyhome,name="facultyhome"),
	url(r'^openedit',views.openedit,name="openedit"),
	url(r'^facultyhome',views.facultyhome,name="facultyhome"),
	url(r'^marks',views.marks,name="marks"),
	#url(r'^fun',views.fun,name="fun"),
	url(r'^emarks',views.emarks,name="emarks"),
	url(r'^EditMarks',views.EditMarks,name="EditMarks"),
	url(r'^upload_attendance', views.upload_attendance,name="upload_attendance"),
	url(r'^course',views.course,name="course"),
	url(r'^favicon.ico/$', lambda x: HttpResponseRedirect(settings.STATIC_URL+'ico/favicon.ico')),
]
#<link rel="shortcut icon" href="{{ STATIC_URL }}ico/favicon.ico">
