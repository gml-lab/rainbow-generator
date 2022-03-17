package ${basePackage}.${serviceImplPackage};

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import com.honyar.iot.base.core.exception.ServiceException;
import com.honyar.iot.base.core.factory.PageFactory;
import com.honyar.iot.base.core.pojo.page.PageResult;

import ${basePackage}.${servicePackage}.${className}Service;
import ${basePackage}.${mapperPackage}.${className}Mapper;
import ${basePackage}.${modelPackage}.param.${className}Param;
import ${basePackage}.${entityPackage}.${className};
import ${basePackage}.${modelPackage}.result.${className}Result;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


/**
*  @Description ${tableComment!} 业务层实现类
*  @author ${author}
*  @Date ${.now}
*/
@Service
public class ${className}ServiceImpl extends ServiceImpl<${className}Mapper , ${className}>  implements ${className}Service {

    @Override
    public PageResult<${className}> page(${className}Param ${className?uncap_first}Param){

        // 构造条件
        LambdaQueryWrapper<${className}> queryWrapper = new LambdaQueryWrapper<>();

        // 查询分页结果
        return new PageResult<>(this.page(PageFactory.defaultPage(), queryWrapper));
    }

    @Override
    public List<${className}> list(${className}Param ${className?uncap_first}Param) {

        // 构造条件
        LambdaQueryWrapper<${className}> queryWrapper = new LambdaQueryWrapper<>();

        return this.list(queryWrapper);
    }

    @Override
    public void add(${className}Param ${className?uncap_first}Param) {

        // 将dto转为实体
        ${className} ${className?uncap_first} = new ${className}();
        BeanUtil.copyProperties(${className?uncap_first}Param, ${className?uncap_first});

        this.save(${className?uncap_first});
    }

    @Override
    public void delete(${className}Param ${className?uncap_first}Param) {
        this.removeById(${className?uncap_first}Param.getId());
    }

    @Override
    public void edit(${className}Param ${className?uncap_first}Param) {
        // 根据id查询实体
        ${className} ${className?uncap_first} = this.query${className}(${className?uncap_first}Param);
        BeanUtil.copyProperties(${className?uncap_first}Param, ${className?uncap_first});
        this.updateById(${className?uncap_first});
    }

    @Override
    public ${className} detail(${className}Param ${className?uncap_first}Param) {
        return this.query${className}(${className?uncap_first}Param);
    }

    private ${className} query${className}(${className}Param ${className?uncap_first}Param) {
        ${className} ${className?uncap_first} = this.getById(${className?uncap_first}Param.getId());
        if (ObjectUtil.isEmpty(${className?uncap_first})) {
            throw new ServiceException(1,"记录不存在");
        }
        return ${className?uncap_first};
    }

}