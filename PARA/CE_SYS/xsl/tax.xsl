<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	 <xsl:include href="public.xsl"/>
	<xsl:include href="Components/Tax12.xsl"/>
	<xsl:template match="Doc:Document">
		<html>
			<head>
				<title>CS Eximbills Enterprise SWIFT TSU Message Viewer</title>
				<LINK REL="stylesheet" TYPE="text/css" HREF="../TSU/theme/swift.css"/>
				<script language = "javascript" src="../SYS_JS/SYS_BaseFunc_CAL.js"></script>
				<script language = "javascript" src="../o2m/XMLUtil.js"></script>
				<script language = "javascript" src="../SYS_JS/TSU/TSU_comm_xsl.js"></script>
				<script language="JavaScript">
				var fName = "";
				var fValue = "";
				var fDouble = "";
				var tableID = "";
				var  d = 1;
				var scheckname="";
		</script>
			</head>
			<body onLoad="TSU_OnInit()">
			<form name="mainform" method="post">
				<table width="99%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">height:22</xsl:attribute>
							<xsl:attribute name="colspan">5</xsl:attribute>
							<xsl:attribute name="class">Heading2</xsl:attribute>
							<xsl:text></xsl:text>
						</xsl:element>
						<input type="hidden" name="hiddenField"/>
					</tr>
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">height:22</xsl:attribute>
							<xsl:attribute name="colspan">5</xsl:attribute>
							<xsl:attribute name="class">ContentBorderTopLeft</xsl:attribute>
							<xsl:text>.</xsl:text>
						</xsl:element>
					</tr>
							<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('Doc:Tax')</xsl:attribute>
					Tax
				</a>
			</xsl:element>
		</tr>
					<tr>
						<td width="3%" height="22" align="right" class="ContentBorderLeft">.</td>
						<td colspan="10">
							<table width="99%" border="0" cellpadding="0" cellspacing="0">
							<xsl:for-each select="Doc:Tax">
								<!-- Doc:Tax -->
								<xsl:variable name="Tax12" select="."/>
								<xsl:call-template name="Tax12">
								<xsl:with-param name="Tax12" select="$Tax12"/>
								</xsl:call-template>
								<!-- bottom -->
								</xsl:for-each>
							</table>
						</td>
					</tr>
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="class">ContentBorderBottomLeft</xsl:attribute>
							<xsl:text disable-output-escaping="yes">.</xsl:text>
						</xsl:element>
						<xsl:element name="TD">
							<xsl:attribute name="class">FieldName</xsl:attribute>
							<xsl:text disable-output-escaping="yes">.</xsl:text>
						</xsl:element>
					</tr>
				</table>
				</form>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
