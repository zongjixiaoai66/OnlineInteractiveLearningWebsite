import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'

         import users from '@/views/modules/users/list'
        import dictionary from '@/views/modules/dictionary/list'
        import exampaper from '@/views/modules/exampaper/list'
        import examquestion from '@/views/modules/examquestion/list'
        import examrecord from '@/views/modules/examrecord/list'
        import examredetails from '@/views/modules/examredetails/list'
        import examrewrongquestion from '@/views/modules/examrewrongquestion/list'
        import forum from '@/views/modules/forum/list'
        import gonggao from '@/views/modules/gonggao/list'
        import huida from '@/views/modules/huida/list'
        import kecheng from '@/views/modules/kecheng/list'
        import kechengshipin from '@/views/modules/kechengshipin/list'
        import kechengshipinLiuyan from '@/views/modules/kechengshipinLiuyan/list'
        import laoshi from '@/views/modules/laoshi/list'
        import yonghu from '@/views/modules/yonghu/list'
        import zuoye from '@/views/modules/zuoye/list'
        import config from '@/views/modules/config/list'
        import dictionaryBanji from '@/views/modules/dictionaryBanji/list'
        import dictionaryExampaper from '@/views/modules/dictionaryExampaper/list'
        import dictionaryExamquestion from '@/views/modules/dictionaryExamquestion/list'
        import dictionaryForum from '@/views/modules/dictionaryForum/list'
        import dictionaryForumState from '@/views/modules/dictionaryForumState/list'
        import dictionaryGonggao from '@/views/modules/dictionaryGonggao/list'
        import dictionarySex from '@/views/modules/dictionarySex/list'
        import dictionaryShangpin from '@/views/modules/dictionaryShangpin/list'
        import huidaAdd from '@/views/modules/huida/add-or-update'

import adminexam from '@/views/modules/exampaper/exam'




//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    } ,{
        path: '/users',
        name: '管理信息',
        component: users
      }
	  ,{
	      path: '/adminexam',
	      name: 'adminexam',
	      component: adminexam,
	      meta: {icon:'', title:'adminexam'}
	    }
    ,{
        path: '/dictionaryBanji',
        name: '班级类型名称',
        component: dictionaryBanji
    }
    ,{
        path: '/dictionaryExampaper',
        name: '试卷状态',
        component: dictionaryExampaper
    }
    ,{
        path: '/dictionaryExamquestion',
        name: '试题类型',
        component: dictionaryExamquestion
    }
    ,{
        path: '/dictionaryForum',
        name: '讨论类型名称',
        component: dictionaryForum
    }
    ,{
        path: '/dictionaryForumState',
        name: '讨论状态',
        component: dictionaryForumState
    }
    ,{
        path: '/huidaAdd',
        name: '回答作业',
        component: huidaAdd
    }
    ,{
        path: '/dictionaryGonggao',
        name: '公告类型名称',
        component: dictionaryGonggao
    }
    ,{
        path: '/dictionarySex',
        name: '性别类型名称',
        component: dictionarySex
    }
    ,{
        path: '/dictionaryShangpin',
        name: '课程类型名称',
        component: dictionaryShangpin
    }
    ,{
        path: '/config',
        name: '轮播图',
        component: config
    }


    ,{
        path: '/dictionary',
        name: '字典',
        component: dictionary
      }
    ,{
        path: '/exampaper',
        name: '试卷表',
        component: exampaper
      }
    ,{
        path: '/examquestion',
        name: '试题表',
        component: examquestion
      }
    ,{
        path: '/examrecord',
        name: '考试记录表',
        component: examrecord
      }
    ,{
        path: '/examredetails',
        name: '答题详情表',
        component: examredetails
      }
    ,{
        path: '/examrewrongquestion',
        name: '错题表',
        component: examrewrongquestion
      }
    ,{
        path: '/forum',
        name: '讨论',
        component: forum
      }
    ,{
        path: '/gonggao',
        name: '公告信息',
        component: gonggao
      }
    ,{
        path: '/huida',
        name: '回答',
        component: huida
      }
    ,{
        path: '/kecheng',
        name: '课程',
        component: kecheng
      }
    ,{
        path: '/kechengshipin',
        name: '课程视频',
        component: kechengshipin
      }
    ,{
        path: '/kechengshipinLiuyan',
        name: '课程留言',
        component: kechengshipinLiuyan
      }
    ,{
        path: '/laoshi',
        name: '老师',
        component: laoshi
      }
    ,{
        path: '/yonghu',
        name: '学生',
        component: yonghu
      }
    ,{
        path: '/zuoye',
        name: '作业',
        component: zuoye
      }


    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
