<#--
This file allows you to override and define new FreeMarker variables.
-->

<#assign roleLocalService = serviceLocator.findService("com.liferay.portal.kernel.service.RoleLocalService") />
<#assign userLocalService = serviceLocator.findService("com.liferay.portal.kernel.service.UserLocalService") />

<#assign administratorRole = roleLocalService.getRole(company_id, "Administrator") />
<#assign powerUserRole = roleLocalService.getRole(company_id, "Power User") />

<#--
<#assign siteAdminitratorRole = roleLocalService.getRole(company_id, "Site Administrator") />
-->

<#assign isAdmin = userLocalService.hasRoleUser(administratorRole.getRoleId(), user_id) />
<#assign isPowerUser = userLocalService.hasRoleUser(powerUserRole.getRoleId(), user_id) />

<#--
<#assign isSiteAdmin = userLocalService.hasRoleUser(siteAdminitratorRole.getRoleId(), user_id) />
-->

<#assign mt_custom_top_class = "" />
<#assign mt_content_top_class = "" />

<#if isAdmin || isPowerUser>
	<#assign mt_custom_top_class = "navbar_mt_top" />
	<#assign mt_content_top_class = "content_mt_top" />
</#if>

<#assign tempHeaderShow = getterUtil.getBoolean(theme_settings["header-show"]) />
<#assign tempFooterShow = getterUtil.getBoolean(theme_settings["footer-show"]) />

<#assign headerShow =  tempHeaderShow?string('true', 'false') />
<#assign footerShow =  tempFooterShow?string('true', 'false') />

<#-- For adding values to the information -->
<#assign address1 = getterUtil.getString(theme_settings["address1"]) />
<#assign address2 = getterUtil.getString(theme_settings["address2"]) />
<#assign phone = getterUtil.getString(theme_settings["phone"]) />
<#assign fax = getterUtil.getString(theme_settings["fax"]) />
<#assign email = getterUtil.getString(theme_settings["email"]) />

<#-- Social media information -->
<#assign facebook = getterUtil.getString(theme_settings["facebook"]) />
<#assign twitter = getterUtil.getString(theme_settings["twitter"]) />
<#assign instagram = getterUtil.getString(theme_settings["instagram"]) />
