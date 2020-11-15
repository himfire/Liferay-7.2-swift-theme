<nav class="navbar navbar-expand-lg navbar-light navbar-bg ${mt_custom_top_class}">
	<a class="navbar-brand" href="${company_url}">
		<img src="${site_logo}" alt="Swift immigration" />
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
	<div class="collapse navbar-collapse navigation-bg" id="navbarNavDropdown">
		<ul class="navbar-nav ml-auto">
			<#list nav_items as nav_item>
				<#assign nav_item_attr_has_popup =""
					is_nav_item_children = nav_item.hasChildren()
					nav_item_attr_selected=""
					nav_item_css_class =""
					nav_item_selected_class =""	/>
					
				<#if nav_item.isSelected()>
						<#assign nav_item_selected_class = "active" />
					</#if>
				
				<#if is_nav_item_children>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role=
						"button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							${nav_item.getName()} 
						</a>
						<div class="dropdown-menu dropdown-bg" aria-labelledby="navbarDropdown">
							<#list nav_item.getChildren() as nav_child>
								<a class="dropdown-item" href="${nav_child.getURL()}">
									${nav_child.getName()}
								</a>
							</#list>
						</div>
					</li>
				<#else>
					<li class="nav-item ${nav_item_selected_class}">
						<a class="nav-link" href="${nav_item.getURL()}">
							${nav_item.getName()}
						</a>
					</li>	
				</#if>	
			</#list>
		</ul>
		<div class="ml-auto contact">
			<#if is_signed_in>
				<@liferay.user_personal_bar />
			<#else>
				<a class="contactbtn" href="${company_url}/contact-us" role="button">Contact Us</a>
			</#if>
		</div>
	</div>
</nav>