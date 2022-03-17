package ${basePackage}.${controllerPackage};

import com.honyar.iot.base.core.annotion.BusinessLog;
import com.honyar.iot.base.core.annotion.DataScope;
import com.honyar.iot.base.core.annotion.Permission;
import com.honyar.iot.base.core.enums.LogAnnotionOpTypeEnum;
import com.honyar.iot.base.core.pojo.response.ResponseData;
import com.honyar.iot.base.core.pojo.response.SuccessResponseData;
import ${basePackage}.${servicePackage}.${className}Service;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ${basePackage}.${modelPackage}.param.${className}Param;
import javax.annotation.Resource;

/**
*  @Description ${tableComment!} Controller
*  @author ${author}
*  @Date ${.now}
*/
@RestController
public class ${className}Controller {
    @Resource
    private ${className}Service ${className?uncap_first}Service;

    /**
    * 分页查询${tableComment!}
    *
    *  @author ${author}
    *  @Date ${.now}
    */
    @PostMapping("/${path1}/${path2}/${path3}/page")
    @BusinessLog(title = "${tableComment!}_分页查询", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData page(@RequestBody ${className}Param ${className?uncap_first}Param) {
        return new SuccessResponseData(${className?uncap_first}Service.page(${className?uncap_first}Param));
    }

    /**
    * 获取全部${tableComment!}
    *
    *  @author ${author}
    *  @Date ${.now}
    */
    @PostMapping("/${path1}/${path2}/${path3}/list")
    @BusinessLog(title = "${tableComment!}_查询所有", opType = LogAnnotionOpTypeEnum.QUERY)
    public ResponseData list(@RequestBody ${className}Param ${className?uncap_first}Param) {
        return new SuccessResponseData(${className?uncap_first}Service.list(${className?uncap_first}Param));
    }

    /**
    * 查看详情${tableComment!}
    *
    *  @author ${author}
    *  @Date ${.now}
    */
    @PostMapping("/${path1}/${path2}/${path3}/detail")
    @BusinessLog(title = "${tableComment!}_查看详情", opType = LogAnnotionOpTypeEnum.DETAIL)
    public ResponseData detail(@RequestBody @Validated(${className}Param.detail.class) ${className}Param ${className?uncap_first}Param) {
        return new SuccessResponseData(${className?uncap_first}Service.detail(${className?uncap_first}Param));
    }

    /**
    * 添加${tableComment!}
    *
    *  @author ${author}
    *  @Date ${.now}
    */
    @PostMapping("/${path1}/${path2}/${path3}/add")
    @BusinessLog(title = "${tableComment!}_增加", opType = LogAnnotionOpTypeEnum.ADD)
    public ResponseData add(@RequestBody @Validated(${className}Param.add.class) ${className}Param ${className?uncap_first}Param) {
        ${className?uncap_first}Service.add(${className?uncap_first}Param);
        return new SuccessResponseData();
    }

    /**
    * 删除${tableComment!}
    *
    *  @author ${author}
    *  @Date ${.now}
    */
    @PostMapping("/${path1}/${path2}/${path3}/delete")
    @BusinessLog(title = "${tableComment!}_删除", opType = LogAnnotionOpTypeEnum.DELETE)
    public ResponseData delete(@RequestBody @Validated(${className}Param.delete.class) ${className}Param ${className?uncap_first}Param) {
        ${className?uncap_first}Service.delete(${className?uncap_first}Param);
        return new SuccessResponseData();
    }

    /**
    * 编辑${tableComment!}
    *
    *  @author ${author}
    *  @Date ${.now}
    */
    @PostMapping("/${path1}/${path2}/${path3}/edit")
    @BusinessLog(title = "${tableComment!}_编辑", opType = LogAnnotionOpTypeEnum.EDIT)
    public ResponseData edit(@RequestBody @Validated(${className}Param.edit.class) ${className}Param ${className?uncap_first}Param) {
        ${className?uncap_first}Service.edit(${className?uncap_first}Param);
        return new SuccessResponseData();
    }

}
