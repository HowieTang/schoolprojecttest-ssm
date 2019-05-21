package com.yh.cms.sys.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yh.api.service.PowerService;
import com.yh.api.service.RoleService;
import com.yh.model.page.PageModel;
import com.yh.model.sys.PowerModel;
import com.yh.model.sys.RoleModel;

@Controller //此注解标识这是一个控制器
@RequestMapping("/role")
public class RoleController {
	
		//角色
		@Autowired
		private RoleService roleService;
		//权限
		@Autowired
		private PowerService powerService;
		
		/*查询角色列表*/
		@RequestMapping("queryRoleList")
		public ModelAndView queryUserList(PageModel page,RoleModel role){
			PageModel pages=roleService.queryRoleList(page,role);
			Map<String, Object> map=new HashMap<String, Object>();
			map.put("role", role);
			map.put("page", pages);
			return new ModelAndView("sys/role/roleList","map",map);
		}
		//添加之前
		@RequestMapping("bfAddOrUpdate")
		public ModelAndView bfAddOrUpdate(String id){
			RoleModel rm = new RoleModel();
			if(StringUtils.isNotEmpty(id)){
				rm = roleService.queryRoleById(id);
			}
			//查询出所有权限返回至添加页面
			List<PowerModel> powers = powerService.queryList();
			//如果是修改 需要返回当前用户所拥有的角色
			Map<String, Object> result= new HashMap<>();
			result.put("role", rm);
			result.put("powers", powers);
			return new ModelAndView("sys/role/addOrUpdate","result",result);
		}
		//添加
		@RequestMapping("addOrUpdate")
		public ModelAndView bfAddOrUpdate(PageModel page,RoleModel role){
			if(StringUtils.isNotEmpty(role.getRoleId())){
				roleService.update(role);
			}else{
				role.setRoleId(UUID.randomUUID()+"");
				role.setCreateTime(new Date());
				role.setUpdateTime(new Date());
				role.setFlagDel(0);
				roleService.addRole(role);
				
				String rid =  role.getRoleId();
				Map<String, String> map = new HashMap<>();
				map.put("rid", rid);
				List<String> pids =  role.getPowerId();
				for(String pid:pids){
					map.put("id", UUID.randomUUID()+"");
					map.put("pid",pid);
					roleService.roleBindpower(map);
					}
			}
			return queryUserList(page,new RoleModel());
		}
		/*删除*/
		@RequestMapping("deleteRoleById")
		public ModelAndView deleteRoleById(PageModel page,RoleModel role){
			roleService.deleteRoleById(role);
			return queryUserList(page,new RoleModel());
		}
}
