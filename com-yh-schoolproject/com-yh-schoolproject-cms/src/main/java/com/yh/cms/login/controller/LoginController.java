package com.yh.cms.login.controller;


import java.text.SimpleDateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yh.api.service.AccountService;
import com.yh.api.service.LoginService;
import com.yh.api.service.RoleService;
import com.yh.model.login.LoginModel;
import com.yh.model.sys.AccountModel;
import com.yh.model.sys.RoleModel;

@Controller
@RequestMapping("/login")

public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private RoleService roleService;
	
	/** 登陆判断* */
	@RequestMapping("/checkLogin")
	public ModelAndView checkLogin(LoginModel lm){
		String loginName = lm.getLoginName();
		String pwd = lm.getPwd();
		List<LoginModel> account=loginService.checkLogin(loginName,pwd);
		AccountModel accountModel = new AccountModel();
		accountModel.setLoginName(loginName);
		AccountModel accountModel2 = accountService.queryNameById(accountModel);
		RoleModel roleModel = roleService.queryRoleByAid(accountModel);
		
		Map<String,Object> map = new HashMap<>();
		map.put("loginName", loginName);
		map.put("accountModel2", accountModel2);
		map.put("roleModel", roleModel);
		if(!account.isEmpty()){
			return new ModelAndView("base/index","map",map);
		}else{
			return new ModelAndView("base/login","map",map);
		}
	}
	
	//注销方法
		@RequestMapping("/outLogin")
		public String outLogin(HttpSession session){
			//通过session.invalidata()方法来注销当前的session
			session.invalidate();
			return "base/login";
		}
	
	//注册页面
	@RequestMapping("bfRegister")
	public String bfRegister(){
		return "base/register";
	}
	
	//注册方法
	@RequestMapping("register")
	public ModelAndView register(AccountModel am){
		Double random = Math.random();
		String str = random.toString().substring(2, 12);
		String name = am.getName();
		am.setName(name);
		am.setLoginName(str);
		am.setAccountId(UUID.randomUUID()+"");
		am.setCreateTime(new Date());
		am.setUpdateTime(new Date());
		am.setState(0);
		accountService.save(am);
		return new ModelAndView("base/jump","am",am);
	}
	
	@RequestMapping("welcome")
	public String welcome(){
		return "base/welcome";
	}

	/** 登录前桌面新闻页面* */
	@RequestMapping("modifyPassword")
	public ModelAndView modifyPassword(String newpassword, ModelMap result,LoginModel lm) {
		String loginName = lm.getLoginName();
		String pwd = lm.getPwd();
		if (!loginService.isUserExist(loginName)) {
			result.addAttribute("msg", "用户名不存在！");
		} else {
			if (pwd.equals(loginService.findUserByLoginName(loginName))) {
				loginService.modifyPasswordByUsername(loginName, newpassword);
				result.addAttribute("msg", "修改密码成功！");
				return new ModelAndView("base/login","result",result);
			} else {
				result.addAttribute("msg", "密码错误！");
			}
		}
		return  new ModelAndView("sys/account/Account_pwd_update","result",result);
	}
}
