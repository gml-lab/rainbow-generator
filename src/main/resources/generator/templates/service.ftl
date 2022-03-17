package ${basePackage}.${servicePackage};

import com.honyar.iot.base.core.pojo.page.PageResult;
import ${basePackage}.${entityPackage}.${className};
import ${basePackage}.${modelPackage}.param.${className}Param;
import com.baomidou.mybatisplus.extension.service.IService;
import ${basePackage}.${modelPackage}.result.${className}Result;

import java.util.List;

/**
*  @Description ${tableComment!} 业务层接口
*  @author ${author}
*  @Date ${.now}
*/
public interface ${className}Service extends IService<${className}> {
    /**
    * 分页查询${tableComment!}
    *
    *  @author ${author}
    *  @Date ${.now}
    */
    PageResult<${className}> page(${className}Param ${className?uncap_first}Param);

    /**
    * 查询所有${tableComment!}
    *
    *  @author ${author}
    *  @Date ${.now}
    */
    List<${className}> list(${className}Param ${className?uncap_first}Param);

    /**
    * 添加${tableComment!}
    *
    *  @author ${author}
    *  @Date ${.now}
    */
    void add(${className}Param ${className?uncap_first}Param);

    /**
    * 删除${tableComment!}
    *
    *  @author ${author}
    *  @Date ${.now}
    */
    void delete(${className}Param ${className?uncap_first}Param);

    /**
    * 编辑${tableComment!}
    *
    *  @author ${author}
    *  @Date ${.now}
    */
    void edit(${className}Param ${className?uncap_first}Param);

    /**
    * 查看详情${tableComment!}
    *
    *  @author ${author}
    *  @Date ${.now}
    */
    ${className} detail(${className}Param ${className?uncap_first}Param);
}
