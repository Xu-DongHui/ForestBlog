package com.sanguo.www.service.impl;

import com.sanguo.www.entity.Notice;
import com.sanguo.www.mapper.NoticeMapper;
import com.sanguo.www.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author sanguo
 */
@Service
public class NoticeServiceImpl implements NoticeService {

    @Autowired(required = false)
    private NoticeMapper noticeMapper;

    @Override
    public List<Notice> listNotice(Integer status)  {
        return noticeMapper.listNotice(status);
    }

    @Override
    public void insertNotice(Notice notice)  {
        noticeMapper.insert(notice);
    }

    @Override
    public void deleteNotice(Integer id)  {
        noticeMapper.deleteById(id);
    }

    @Override
    public void updateNotice(Notice notice)  {
        noticeMapper.update(notice);
    }

    @Override
    public Notice getNoticeById(Integer id)  {
        return noticeMapper.getNoticeById(id);
    }

}
