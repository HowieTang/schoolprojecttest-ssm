package com.yh.cms.student.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yh.api.service.AccountService;
import com.yh.api.service.StuVoteService;
import com.yh.model.page.PageModel;
import com.yh.model.student.StuVoteModel;


import net.sf.json.JSONArray;


@Controller//此注解标识这是一个控制器
@RequestMapping("/vote")
public class StuVoteController{
	
     @Autowired
     private StuVoteService stuVoteService;
     
     
     
     @Autowired
     private AccountService accountService;
     
     /*查列表*/
	@RequestMapping("queryVoteList")
	public ModelAndView queryVoteList(PageModel page,StuVoteModel vote){
		PageModel pages=stuVoteService.queryVoteList(page,vote);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("vote", vote);
		map.put("page", pages);
		return new ModelAndView("student/student_vote_list","map",map);
	}
	// 添加之前
/*	@RequestMapping("bfAddOrUpdate") 
	public ModelAndView bfAddOrUpdate(String voteId) {
		StuVoteModel v = new StuVoteModel();
		if (StringUtils.isNotEmpty(voteId)) {
			v = stuVoteService.queryVoteById(voteId);
		}
		List<AccountModel> account = accountService.queryList();
		JSONArray josn = JSONArray.fromObject(account);
		List<DictionaryModel> dictionary = dictionaryService.queryVoteList();
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("vote", v);
		result.put("dictionarys", dictionary);
		result.put("accounts", josn);

		return new ModelAndView("student/student_vote_add", "result", result);
	}
	
	// 添加
	@RequestMapping("AddOrUpdate")
	public ModelAndView AddOrUpdate(StuVoteModel vote, String mids) {
		mids = mids.substring(0, mids.length() );
		String[] midArray = mids.split(",");
		Date a = vote.getVoteEtime();
		Date b=vote.getVoteStime();

		stuVoteService.addOrUpadate(vote, midArray);
		return queryVoteList(new PageModel<StuVoteModel>(), new StuVoteModel());
	}
	//参与
	@RequestMapping("queryCanYu")
	public ModelAndView queryCanYu(PageModel page,StuVoteModel vote){
		PageModel pages=stuVoteService.queryVoteList(page,vote);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("vote", vote);
		map.put("page", pages);
		return new ModelAndView("student/student_vote_join","map",map);
	}*/

	/**
	 * 投票之前
	 * */
	/*public String bfjoin(){
		return "join";
	}*/
	
	
	/**
	 * 初始化投票
	 * */
	/*public void initvotebar() {
		String vid = vm.getVoteId();通过vid我们需要拿 内容 ，结果
		List<StuVoteContentModel> vcms = stuVoteService.getVcmByVid(vid);
		List<StuVoteDateModel> vdms = stuVoteService.getVdmByVid(vid);
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("vcm", vcms);
		result.put("vdm", vdms);
		
		HttpSession  session = ServletActionContext.getRequest().getSession();
		AccountModel um  = (AccountModel)session.getAttribute("acc");
		result.put("userid", um.getAccoutId());
		
		
		for(StuVoteDateModel vdm:vdms){
			if(vdm.getvUser() == um.getAccoutId() && vdm.getvUserc()>0){
				result.put("userjoin","1");
				break;
			}
		}
		try {
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/plain" + ";charset=UTF-8");
			response.setHeader("Pragma", "No-cache");
			response.setHeader("Cache-Control", "no-cache");
			response.setDateHeader("Expires", 0);
			PrintWriter writer = response.getWriter();
			System.out.println(JSONObject.toJSONString(result));
			writer.print(JSONObject.toJSONString(result));
			writer.flush();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}*/
	/*public void join() {
		HttpSession  session = ServletActionContext.getRequest().getSession();
		StuVoteUserModel um  = (StuVoteUserModel)session.getAttribute("user");
		stuVoteService.join(Integer.parseInt(vcid), Integer.parseInt(vid),um.getVuId());
		try {
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/plain" + ";charset=UTF-8");
			response.setHeader("Pragma", "No-cache");
			response.setHeader("Cache-Control", "no-cache");
			response.setDateHeader("Expires", 0);
			PrintWriter writer = response.getWriter();
			writer.print("ok");
			writer.flush();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}*/
}
