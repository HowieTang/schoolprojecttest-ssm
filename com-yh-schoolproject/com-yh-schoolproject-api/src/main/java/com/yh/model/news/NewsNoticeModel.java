package com.yh.model.news;

import java.io.Serializable;

/**
 * 新闻公告轮播实体类
 */
public class NewsNoticeModel implements Serializable {

    private static final long serialVersionUID = 4233204243555535117L;

    //公告轮播id
    private String notice_id;
    //公告轮播内容
    private String content;

    public String getNotice_id() {
        return notice_id;
    }

    public void setNotice_id(String notice_id) {
        this.notice_id = notice_id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
