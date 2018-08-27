<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   <xsl:include href="SingleTransport1.xsl"/>
   <xsl:include href="MultimodalTransport1.xsl"/>
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
						<td width="3%" height="22" align="right" class="ContentBorderLeft">.</td>
						<td colspan="10">
							<table width="99%" border="0" cellpadding="0" cellspacing="0">
								<!-- UsrTxRef -->
								<xsl:variable name="SingleTransport1" select="Doc:RtgSummry/Doc:IndvTrnsprt"/>
								<xsl:call-template name="SingleTransport1">
									<xsl:with-param name="SingleTransport1" select="$SingleTransport1"/>
								</xsl:call-template>
								<xsl:variable name="MultimodalTransport1" select="Doc:RtgSummry/Doc:MltmdlTrnsprt"/>
								<xsl:call-template name="MultimodalTransport1">
									<xsl:with-param name="MultimodalTransport1" select="$MultimodalTransport1"/>
								</xsl:call-template>
								<!-- bottom -->
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
