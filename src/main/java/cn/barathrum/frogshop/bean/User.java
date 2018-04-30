package cn.barathrum.frogshop.bean;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@JsonIgnoreProperties(value = { "handler" })  
public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//用户id
    private Integer id;
    //用户名
    private String userName;
    //用户密码
    private String userPass;
    //用户手机号
    private String phone;
    //账号状态
    private Integer status;
    //账号创建时间
    private Date createTime;
    //用户邮箱
    private String email;
    //加密盐值
    private String credentialsSalt;
    //用户所包含的购物车商品
    private List<Cart> carts;
    //用户所拥有的权限
    private Set<Roles> roles;
    
	public List<Cart> getCarts() {
		return carts;
	}
	public void setCarts(List<Cart> carts) {
		this.carts = carts;
	}
	public String getCredentialsSalt() {
		return credentialsSalt;
	}
	public void setCredentialsSalt(String credentialsSalt) {
		this.credentialsSalt = credentialsSalt;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Set<Roles> getRoles() {
		return roles;
	}
	public void setRoles(Set<Roles> roles) {
		this.roles = roles;
	}

  
}