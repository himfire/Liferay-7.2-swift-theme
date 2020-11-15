<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
	<link rel="stylesheet" href="${css_folder}/slick.css" />
    <link rel="stylesheet" href="${css_folder}/owl.carousel.min.css" />
    <link rel="stylesheet" href="${css_folder}/owl.theme.default.min.css" />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid wrapper">
	
	<#if headerShow == "true" || is_signed_in>
		<header class="header-bg">
			<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>		
			<#if has_navigation && is_setup_complete>
				<#include "${full_templates_path}/navigation.ftl" />
			</#if>
		</header>
	</#if>

	<section id="content" class="${mt_content_top_class}">
		<h2 class="hide-accessible" role="heading" aria-level="1">${the_title}</h2>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>


	<#if footerShow == "true">
		<footer>
			<div>
				<div class="container">
					<div class="row">
						<div class="col-lg-4 col-md-6 col-12">
							<@liferay_portlet["runtime"]
    							portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet"
							/>
						</div>
						<div class="col-lg-4 col-md-6 col-12 font topic">
							<h2>Find us</h2>
							<p>${address1}<br>
								${address2}<br>
								${phone}<br>
								${fax}<br>
								${email}
							</p>
						</div>
						<div class="col-lg-4 col-md-6 col-12 form topic">
							<h2>News letter</h2>
							<@liferay_portlet["runtime"]
    							portletName="com_swiftimmigration_NewsSubscribersWebPortlet"
							/>
							<ul>
								<li><a href="${facebook}"><i class="icon-facebook"></i></a></li>
								<li><a href="${twitter}"><i class="icon-twitter"></i></a></li>
								<li><a href="${instagram}"><i class="icon-instagram"></i></a></li>
								<li><a href="${company_url}/contact-us"><i class="icon-phone"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="copyright">
				<p>© 2020 Swift immigration consultants. All Rights Reserved</p>
			</div>
    	</footer>
	</#if>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />
<script src="${javascript_folder}/slick.min.js"></script>
<script src="${javascript_folder}/owl.carousel.min.js"></script>

</body>

</html>