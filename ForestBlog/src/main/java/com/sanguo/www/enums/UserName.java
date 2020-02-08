package com.sanguo.www.enums;

/**
 * @author 言曌
 * @date 2018/11/17 下午4:47
 */

public enum UserName {

    LUOGUANZHONG(1, "罗贯中", 1, "/uploads/sanguo.png"),
    LIUBEI(2, "刘备", 0, "/uploads/liubei.png"),
    CAOCAO(3, "曹操", 0, "/uploads/caocao.png"),
    SUNQUAN(4, "孙权", 0, "/uploads/sunquan.png");

    private Integer id;

    private String name;

//  0是普通用户，1是管理员
    private Integer role;

    private String img;

    UserName(Integer id, String name, Integer role, String img) {
        this.id = id;
        this.name = name;
        this.role = role;
        this.img = img;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }
}
