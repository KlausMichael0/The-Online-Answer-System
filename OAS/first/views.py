from itertools import chain
from django.contrib.auth import authenticate#认证
from django.shortcuts import render,render_to_response
from django.http import HttpResponse,HttpResponseRedirect
from . import models
from django.contrib import auth #登录/注销模块
from django_comments import models as comment_models #评论模块
from django.contrib.contenttypes.models import ContentType #conten_type为外键引用 增加reply方法时候需要转换
from django.contrib import messages
from django.db.models import Q

def index(request):
    search_on = 1
    question_list_1 = models.Question.objects.all()
    category = models.Category.objects.all()
    a = models.OAS_User.objects.filter(id=request.user.id)
    if a.exists():
        user = models.OAS_User.objects.get(id=request.user.id)
    else:
        user = None
    count = models.Question.objects.filter(Q(ask_to=request.user.id)&Q(finished=0))
    numbers = len(count)
    question_list = question_list_1[::-1]
    return render(request, 'first/index_main.html', {'search_on':search_on, 'question_list':question_list, 'user_detail':user,'numbers':numbers, 'category_list':category})

def detail(request, question_id):
    question = models.Question.objects.get(id=question_id)
    a = models.OAS_User.objects.filter(id=request.user.id)
    if a.exists():
        user = models.OAS_User.objects.get(id=request.user.id)
    else:
        user = None
    all_user = models.OAS_User.objects.all()
    category = models.Category.objects.all()
    count = models.Question.objects.filter(Q(ask_to=request.user.id)&Q(finished=0))
    numbers = len(count)
    context = {'question_detail':question, 'user_detail':user,'all_user':all_user, 'category_list':category,'numbers':numbers}
    return render(request, 'first/detail.html',context=context)

def reply(request):
    question_id = request.POST.get('Question_id')
    comment = request.POST.get('comment')
    obj = ContentType.objects.get(id=9)             #外键不能直接给  拿出来然后物归原主
    user = models.OAS_User.objects.get(id=request.user.id)
    if user.instr == 0:
        ip = '0'
    else: ip = '1'
    comment_models.Comment.objects.create(
        user_name = user.user,
        content_type = obj,
        object_pk = question_id,
        ip_address = ip,
        site_id = 1,
        user = request.user,
        comment = comment,
    )
    return HttpResponseRedirect('/detail/%s' % question_id)

def login_view(request):
    return render(request, 'login.html')

def logout_view(request):
    auth.logout(request)
    return HttpResponseRedirect("/")

def Login(request):
    username = request.POST.get("username")
    u = models.User.objects.filter(username=username)
    if u.exists():
        u = models.User.objects.filter(username=username)
    else:
        u = None
    password = request.POST.get("password")
    if ( username == '' or password == '' ):
        messages.warning(request,'用户名或密码不允许为空')
        return HttpResponseRedirect("/login_view/")
    else:
        if u:
            user = authenticate(username=username, password=password)
            if user:
                auth.login(request, user)
                return HttpResponseRedirect("/")
            else:
                messages.warning(request,'用户名或密码错误')
                return HttpResponseRedirect("/login_view/")
        else:
            messages.warning(request, '用户不存在!')
            return HttpResponseRedirect("/login_view/")

def issue(request):
    user = models.OAS_User.objects.get(id=request.user.id)
    category = models.Category.objects.all()
    instr= models.OAS_User.objects.filter(instr=1)
    return  render(request, 'issue.html',{'category_list':category,'user_detail':user,'user':request.user, 'instr_list':instr})

def submit(request):
    submit_content = request.POST.get('sub_content')
    question_title = request.POST.get('question_title')
    question_summary = request.POST.get('question_summary')
    instr = request.POST.get('instr', "")
    cate = request.POST.get('cate', "")
    category = models.Category.objects.get(id=cate)
    instructor = models.User.objects.get(id=instr)
    author = models.OAS_User.objects.get(user_id=request.user.id)
    if len(question_title) >= 64:
        messages.warning(request, '标题过长！')
        return HttpResponseRedirect("/issue/")
    elif len(question_summary) >=128:
        messages.warning(request, '概述过长！')
        return HttpResponseRedirect("/issue/")
    else:
        models.Question.objects.create(
            title= question_title,
            summary= question_summary,
            category_id=category.id,
            content=submit_content,
            author=author,
            ask_to_id=instructor.id
        )
        return HttpResponseRedirect("/")

def choice_cate(request):
    a = models.OAS_User.objects.filter(id=request.user.id)
    if a.exists():
        user = models.OAS_User.objects.get(id=request.user.id)
    else:
        user = None
    count = models.Question.objects.filter(Q(ask_to=request.user.id)&Q(finished=0))
    numbers = len(count)
    category = models.Category.objects.all()
    return render_to_response('first/categorys.html',{'numbers':numbers,'user_detail':user, 'user': request.user, 'category_list':category})

def category(request,cate_id):
    a = models.OAS_User.objects.filter(id=request.user.id)
    if a.exists():
        user = models.OAS_User.objects.get(id=request.user.id)
    else:
        user = None
    category = models.Category.objects.all()
    ques_list_f = models.Question.objects.filter(category_id=cate_id)
    ques_list_1 = ques_list_f[::-1]
    ques_list_2 = ques_list_f[::-1]
    return render_to_response('first/index.html',{'question_list_1':ques_list_1,'question_list_2':ques_list_2,'user_detail':user, 'user':request.user,'category_list':category})

def my_question(request):
    user = models.OAS_User.objects.get(id=request.user.id)
    list_f = models.Question.objects.filter(author_id=request.user.id)
    list = list_f[::-1]
    list_1 = list
    list_2 = list
    category = models.Category.objects.all()
    return render_to_response('first/index.html',{'question_list_1':list_1,'question_list_2':list_2,'user_detail':user, 'user':request.user,'category_list':category})

def password(request):
    user = models.User.objects.get(id=request.user.id)
    password_ori = request.POST.get("password_ori")
    password_1 = request.POST.get('password_1')
    password_2 = request.POST.get('password_2')
    print(user.password,password_1,password_2)
    if(not authenticate(username=user.username, password=password_ori)):
        messages.warning(request, '原密码输入错误！')
        return HttpResponseRedirect("/password_view/")
    elif(password_1 != password_2):
        messages.warning(request, '两次输入的新密码不一致！')
        return HttpResponseRedirect("/password_view/")
    elif(password_1==password_2):
        user.set_password(password_1)
        user.save()
        return HttpResponseRedirect("/")
    else:
        messages.warning(request, '输入错误！')
        return HttpResponseRedirect("/password_view/")

def password_view(request):
    return render(request,'password.html')

def search(request):
    a = models.OAS_User.objects.filter(id=request.user.id)
    if a.exists():
        user = models.OAS_User.objects.get(id=request.user.id)
    else:
        user = None
    search_key = request.POST.get('search_key')
    search_title = models.Question.objects.filter(title__contains=search_key)
    search_summary = models.Question.objects.filter(summary__contains=search_key)
    search_content = models.Question.objects.filter(content__contains=search_key)
    search = chain(search_title,search_summary,search_content)
    search_2 = chain(search_title, search_summary, search_content)
    category = models.Category.objects.all()
    return render_to_response('first/index.html',{'question_list_1': search,'question_list_2': search_2,'user_detail':user, 'user': request.user, 'category_list': category})


def finish(request):
    question_id = request.POST.get('Question_id')
    print(question_id)
    set_finish = models.Question.objects.get(id=question_id)
    set_finish.finished  = 1
    set_finish.save()
    return HttpResponseRedirect("/")

def hint(request):
    user = models.OAS_User.objects.get(id=request.user.id)
    count = models.Question.objects.filter(Q(ask_to=request.user.id)&Q(finished=0))
    numbers = len(count)
    question = models.Question.objects.filter(ask_to=request.user.id)
    return render_to_response('first/hint.html',{'user':request.user, 'user_detail':user, 'question_list':question,'numbers':numbers})

