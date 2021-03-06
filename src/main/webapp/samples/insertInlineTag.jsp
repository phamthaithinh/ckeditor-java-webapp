<%@page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<!DOCTYPE html>
<!--
Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.md or http://ckeditor.com/license
-->
<html>
<head>
<meta charset="utf-8">
<title>Create CKEditor Instance on Dynamically Inserted Textarea &mdash; CKEditor Sample</title>
<link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}/ckeditor/samples/sample.css" />
<link type="text/css" rel="stylesheet" href="../styles/sampleapp.css" />
<script type="text/javascript" src="../scripts/sampleapp.js"></script>
</head>
<body>
	<h1 class="samples">
		<a href="index.jsp">CKEditor Samples</a> &raquo; Create Inline CKEditor Instance on dynamically inserted textarea element using
		JSP tag
	</h1>
	<div class="description">
		<p>
			This sample shows how, with the help of <a href="http://link-to-docs">Java code</a>, to replace
			<code>&lt;textarea&gt;</code>
			element with inline CKEditor instance, without
			<code>&lt;textarea&gt;</code>
			element even being present on JSP. The
			<code>&lt;textarea&gt;</code>
			element will be in fact inserted dynamically by the JSP tag.
		</p>
		<div>
			<a id="showMore" href="javascript:SAMPLE_APP.showHide();">Show More &#x025BE;</a>
		</div>
		<div id="moreText">
			<p>To insert editor inline instance, place below code, on JSP in place of your choice:</p>
			<pre class="samples">&lt;ckeditor:editor basePath="../ckeditor/" editor="textarea_id" inline="true" /&gt;</pre>
			<p>
				Note that
				<code>
					<em>textarea_id</em>
				</code>
				in the code above will become the
				<code>id</code>
				of the
				<code>&lt;textarea&gt;</code>
				element that will be inserted into JSP and used to create editor on it.
			</p>
			<p>
				This sample also uses custom: configuration and initial value (attribute values are assigned with Expression Language). For
				more information on this tag and its attributes, please refer to <a href="http://link-to-docs">documentation</a> and check out
				the source code of this sample. <a id="showLess" href="javascript:SAMPLE_APP.showHide();">Show Less &#x025B4;</a>
			</p>
		</div>
	</div>
	<form action="assets/posteddata.result" method="post">
		<p>
			<label for="editor1"> Editor 1:</label>
		</p>

		<ckeditor:editor basePath="../ckeditor/" editor="editor1" value="${cke_init_value}" inline="true" />

		<p>
			<input type="submit" value="Submit" />
		</p>
	</form>
	<div id="footer">
		<hr />
		<p>
			CKEditor - The text editor for the Internet - <a class="samples" href="http://ckeditor.com/">http://ckeditor.com</a>
		</p>
		<p id="copy">
			Copyright &copy; 2003-2014, <a class="samples" href="http://cksource.com/">CKSource</a> - Frederico Knabben. All rights
			reserved.
		</p>
	</div>
</body>
</html>
