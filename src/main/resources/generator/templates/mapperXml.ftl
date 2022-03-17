<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="${basePackage}.${mapperPackage}.${className}Mapper">
    <!-- 开启二级缓存 -->
    <!--    <cache type="org.mybatis.caches.ehcache.LoggingEhcache"/>-->

    <!-- 通用查询映射结果 -->
    <resultMap id="${className}Map" type="${basePackage}.${entityPackage}.${className}">
        <#if columns??>
        <#list columns as column>
         <#if column.isKey = true>
              <id column="${column.name}" property="${column.field?uncap_first}"/>
         <#else>
             <result column="${column.name}" property="${column.field?uncap_first}"/>
         </#if>
        </#list>
        </#if>
    </resultMap>


    <!-- 基础列 -->
    <sql id="baseColumn">
        <#if columns??>
            <#list columns as column>
                <#if column_has_next>
 ${column.name},<#else>${column.name}
                </#if>
            </#list>
        </#if>
    </sql>
</mapper>
