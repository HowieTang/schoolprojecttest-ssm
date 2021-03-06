package com.yh.model.news;

import java.io.Serializable;
import java.util.Date;

/**
 * 新闻实体类
 */
public class NewsModel implements Serializable {

    private static final long serialVersionUID = 1L;
    //新闻id
    private String news_id;
    //标题
    private String title;
    //作者
    private String author;
    //类别
    private String dic_id;
    //账户id
    private String account_id;
    //创建时间
    private Date create_time;
    //更新时间
    private Date update_time;
    //接受内容
    private byte[] content;
    //内容传值
    private String contents;
    //点赞数
    private int likenum_int;
    //浏览数
    private int page_view;
    //图片上传
    private String imageupload;
    //删除状态
    private int flag_del;
    //审批状态
    private int state;
    /**
     * 批量删除Id数组
     */
    private String[] newsids;

    public String getNews_id() {
        return news_id;
    }

    public void setNews_id(String news_id) {
        this.news_id = news_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDic_id() {
        return dic_id;
    }

    public void setDic_id(String dic_id) {
        this.dic_id = dic_id;
    }

    public String getAccount_id() {
        return account_id;
    }

    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }

    public byte[] getContent() {
        return content;
    }

    public void setContent(byte[] content) {
        this.content = content;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public int getLikenum_int() {
        return likenum_int;
    }

    public void setLikenum_int(int likenum_int) {
        this.likenum_int = likenum_int;
    }

    public int getPage_view() {
        return page_view;
    }

    public void setPage_view(int page_view) {
        this.page_view = page_view;
    }

    public String getImageupload() {
        return imageupload;
    }

    public void setImageupload(String imageupload) {
        this.imageupload = imageupload;
    }

    public int getFlag_del() {
        return flag_del;
    }

    public void setFlag_del(int flag_del) {
        this.flag_del = flag_del;
    }

    public String[] getNewsids() {
        return newsids;
    }

    public void setNewsids(String[] newsids) {
        this.newsids = newsids;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
