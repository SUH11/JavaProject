package cn.edu.ccu.ibusiness.system;


import cn.edu.ccu.model.system.ModuleModel;

import java.util.List;

/**
 * Created by kuangye on 2016/4/12.
 */
public interface IModule {

    List<ModuleModel> listByUserId(Integer userId);
}
