package com.maodr.system.role.dao;

import java.util.List;

import com.maodr.framework.base.dao.BaseDao;
import com.maodr.system.model.RolePO;
import com.maodr.system.role.vo.RoleFuncTreeVO;
import com.maodr.system.role.vo.RoleVO;
import com.maodr.system.user.vo.UserVO;

/**
 * 
 *  角色Dao接口
 *  @author Administrator
 *  @created 2013年12月30日 上午6:12:52
 *  @lastModified       
 *  @history
 */
public interface RoleDao extends BaseDao<RolePO, String> {

    /**
     * 
     *  添加角色
     *  @param roleVO
     *  @return
     *  @author Administrator
     *  @created 2014年1月2日 下午7:55:14
     *  @lastModified       
     *  @history
     */
    public String saveOrUpdateRole(RoleVO roleVO);

    /**
     * 
     *  查看已分配用户
     *  @param roleID
     *  @return
     *  @author Administrator
     *  @created 2014年1月19日 下午2:52:40
     *  @lastModified       
     *  @history
     */
    public List<UserVO> listUserOfRole(String roleID); 
    
    /**
     * 
     *  获取角色在该功能上的权限
     *  @param roleID
     *  @param funcTreeID
     *  @return
     *  @author Administrator
     *  @created 2014年1月23日 上午5:38:41
     *  @lastModified       
     *  @history
     */
    public RoleFuncTreeVO getRoleFuncTree(String roleID, String funcTreeID); 
    
    /**
     * 
     *  保存角色在该功能上的权限
     *  @param roleFuncTreeVO
     *  @author Administrator
     *  @created 2014年1月23日 上午5:54:30
     *  @lastModified       
     *  @history
     */
    public RoleFuncTreeVO saveRoleFuncTree(RoleFuncTreeVO roleFuncTreeVO);

}
