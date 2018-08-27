<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="public.xsl"/>
	<xsl:include href="xsl_comp/Chrgs.xsl"/>
	<xsl:template match="Doc:Document">
		<xsl:variable name="FrghtChrgsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:FrghtChrgs'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TpDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Tp'"/>
			</xsl:call-template>
		</xsl:variable>
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
											<xsl:attribute name="colspan">4</xsl:attribute>
											<a>
												<xsl:attribute name="class">Heading3</xsl:attribute>
												<xsl:attribute name="style">cursor:hand</xsl:attribute>
												<xsl:attribute name="onClick">Swap('_Doc:FrghtChrgs')</xsl:attribute>
												<xsl:value-of select="$FrghtChrgsDesc"/>
											</a>
										</xsl:element>
									</tr>
									<tr>
										<xsl:element name="TD">
											<xsl:attribute name="width">3%</xsl:attribute>
											<xsl:attribute name="height">22</xsl:attribute>
											<xsl:attribute name="align">right</xsl:attribute>
											<xsl:attribute name="class">ContentBorderLeft</xsl:attribute>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:attribute name="colspan">4</xsl:attribute>
											<xsl:attribute name="width">95%</xsl:attribute>
											<xsl:attribute name="align">right</xsl:attribute>
											<xsl:element name="DIV">
												<xsl:attribute name="id">_<xsl:value-of select="'Doc:FrghtChrgs'"/></xsl:attribute>
												<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
												<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
													<tr>
														<xsl:element name="TD">
															<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
															<xsl:attribute name="height">25</xsl:attribute>
															<xsl:value-of select="$TpDesc"/>
															<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
															<xsl:element name="INPUT">
																<xsl:attribute name="type">text</xsl:attribute>
																<xsl:attribute name="name">Doc:Tp</xsl:attribute>
																<xsl:attribute name="id"><xsl:value-of select="$TpDesc"/></xsl:attribute>
																<xsl:attribute name="class">CHAR_M</xsl:attribute>
																<xsl:attribute name="length">35</xsl:attribute>
																<xsl:attribute name="maxlength">35</xsl:attribute>
																<xsl:attribute name="value"><xsl:value-of select="Doc:FrghtChrgs/Doc:Tp"/></xsl:attribute>
																<xsl:attribute name="multi">N</xsl:attribute>
															</xsl:element>
														</xsl:element>
													</tr>
													<xsl:variable name="Chrgs" select="Doc:FrghtChrgs/Doc:Chrgs"/>
													<xsl:call-template name="Chrgs">
														<xsl:with-param name="Chrgs" select="$Chrgs"/>
														<xsl:with-param name="Chrgs_parentName">
															<xsl:value-of select="''"/>_<xsl:value-of select="'Doc:FrghtChrgs'"/>
														</xsl:with-param>
													</xsl:call-template>
												</table>
											</xsl:element>
										</xsl:element>
									</tr>
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
