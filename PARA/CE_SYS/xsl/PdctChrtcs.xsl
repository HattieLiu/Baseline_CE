<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="public.xsl"/>
	<xsl:include href="Select.xsl"/>
    <xsl:include href="xsl_comp/PdctChrtcs_addCheckbox.xsl"/>
	<xsl:template match="Doc:Document">
		<html>
			<head>
				<title>CS Eximbills Enterprise SWIFT TSU Message Viewer</title>
				<LINK REL="stylesheet" TYPE="text/css" HREF="../TSU/theme/swift.css"/>
				<script language="javascript" src="../SYS_JS/SYS_BaseFunc_CAL.js"/>
				<script language="javascript" src="../o2m/XMLUtil.js"/>
				<script language="javascript" src="../SYS_JS/TSU/TSU_comm_xsl.js"/>
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
								<xsl:text/>
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
							<td width="3%" height="22" align="right" class="ContentBorderLeft">.</td>
							<td colspan="10">
								<table width="99%" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<xsl:element name="TD">
											<xsl:attribute name="width">3%</xsl:attribute>
											<xsl:attribute name="height">22</xsl:attribute>
											<xsl:attribute name="align">right</xsl:attribute>
											<xsl:attribute name="class">ContentBorderLeft</xsl:attribute>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
										</xsl:element>
									</tr>
									<xsl:for-each select="Doc:PdctChrtcs">
										<xsl:variable name="PdctChrtcs" select="."/>
										<xsl:call-template name="PdctChrtcs">
											<xsl:with-param name="PdctChrtcs" select="$PdctChrtcs"/>
											<xsl:with-param name="PdctChrtcs_parentName">
												<xsl:number value="position()"/>_<xsl:value-of select="'Doc:PdctChrtcs'"/>
											</xsl:with-param>
										</xsl:call-template>
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