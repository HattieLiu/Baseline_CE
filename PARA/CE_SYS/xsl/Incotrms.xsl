<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="public.xsl"/>
	<xsl:include href="Select.xsl"/>
	<xsl:template match="Doc:Document">
		<xsl:variable name="IncotrmsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Incotrms'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Cd'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OthrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Othr'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="LctnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Lctn'"/>
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
												<xsl:attribute name="onClick">Swap('_Doc:Incotrms')</xsl:attribute>
												<xsl:value-of select="$IncotrmsDesc"/>
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
												<xsl:attribute name="id">_<xsl:value-of select="'Doc:Incotrms'"/></xsl:attribute>
												<xsl:attribute name="style">DISPLAY:;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
												<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
													<tr>
														<xsl:element name="TD">
															<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
															<xsl:attribute name="height">25</xsl:attribute>
															<xsl:element name="input">
																<xsl:attribute name="type">radio</xsl:attribute>
																<xsl:attribute name="name">_Doc:Incotrms_check</xsl:attribute>
																<xsl:attribute name="tx">_Doc:Incotrms_Doc:Cd</xsl:attribute>
																<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
																<xsl:if test="Doc:Incotrms/Doc:Cd != ''">
																	<xsl:attribute name="checked">true</xsl:attribute>
																</xsl:if>
															<xsl:value-of select="$CdDesc"/>
															<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
															<xsl:variable name="Select1" select="document('Code.xml')//root/Incoterms1Code"></xsl:variable>
				                                            <xsl:call-template name="Select">
				                                                      <xsl:with-param name="Select" select="$Select1"/>
				                                            </xsl:call-template>
				                                            
															</xsl:element>
															<!-- <xsl:element name="INPUT">
																<xsl:attribute name="type">text</xsl:attribute>
																<xsl:attribute name="name">Doc:Cd</xsl:attribute>
																<xsl:attribute name="id"><xsl:value-of select="$CdDesc"/></xsl:attribute>
																<xsl:attribute name="class">CHAR_M</xsl:attribute>
																<xsl:attribute name="length">35</xsl:attribute>
																<xsl:attribute name="maxlength">35</xsl:attribute>
																<xsl:attribute name="value"><xsl:value-of select="Doc:Incotrms/Doc:Cd"/></xsl:attribute>
																<xsl:attribute name="ch">_Doc:Incotrms_Doc:Othr</xsl:attribute>
																<xsl:attribute name="multi">N</xsl:attribute>
																<xsl:attribute name="tbi">Doc:Incotrms</xsl:attribute>
															</xsl:element> -->
														</xsl:element>
													</tr>
													<tr>
														<xsl:element name="TD">
															<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
															<xsl:attribute name="height">25</xsl:attribute>
															<xsl:element name="input">
																<xsl:attribute name="type">radio</xsl:attribute>
																<xsl:attribute name="name">_Doc:Incotrms_check</xsl:attribute>
																<xsl:attribute name="tx">_Doc:Incotrms_Doc:Othr</xsl:attribute>
																<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
																<!--<xsl:if test="Doc:Incotrms/Doc:Othr != ''">
																	<xsl:attribute name="checked">true</xsl:attribute>
																</xsl:if>-->
															</xsl:element>
															<xsl:value-of select="$OthrDesc"/>
															<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
															<xsl:element name="INPUT">
																<xsl:attribute name="type">text</xsl:attribute>
																<xsl:attribute name="name">Doc:Othr</xsl:attribute>
																<xsl:attribute name="id"><xsl:value-of select="$OthrDesc"/></xsl:attribute>
																<xsl:attribute name="class">CHAR_M</xsl:attribute>
																<xsl:attribute name="length">35</xsl:attribute>
																<xsl:attribute name="maxlength">35</xsl:attribute>
																<xsl:attribute name="value"><xsl:value-of select="Doc:Incotrms/Doc:Othr"/></xsl:attribute>
																<xsl:attribute name="ch">_Doc:Incotrms_Doc:Cd</xsl:attribute>
																<xsl:attribute name="multi">N</xsl:attribute>
																<xsl:attribute name="tbi">Doc:Adjstmnt</xsl:attribute>
															</xsl:element>
														</xsl:element>
													</tr>
													<!--<tr>
														<xsl:element name="TD">
															<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
															<xsl:attribute name="height">25</xsl:attribute>
															<xsl:value-of select="$CdDesc"/>
															<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
															<xsl:element name="INPUT">
																<xsl:attribute name="type">text</xsl:attribute>
																<xsl:attribute name="name">Doc:Cd</xsl:attribute>
																<xsl:attribute name="id"><xsl:value-of select="$CdDesc"/></xsl:attribute>
																<xsl:attribute name="class">CHAR_M</xsl:attribute>
																<xsl:attribute name="length">35</xsl:attribute>
																<xsl:attribute name="maxlength">35</xsl:attribute>
																<xsl:attribute name="value"><xsl:value-of select="Doc:Incotrms/Doc:Cd"/></xsl:attribute>
																<xsl:attribute name="multi">N</xsl:attribute>
															</xsl:element>
														</xsl:element>
													</tr>
													<tr>
														<xsl:element name="TD">
															<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
															<xsl:attribute name="height">25</xsl:attribute>
															<xsl:value-of select="$OthrDesc"/>
															<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
															<xsl:element name="INPUT">
																<xsl:attribute name="type">text</xsl:attribute>
																<xsl:attribute name="name">Doc:Othr</xsl:attribute>
																<xsl:attribute name="id"><xsl:value-of select="$OthrDesc"/></xsl:attribute>
																<xsl:attribute name="class">CHAR_M</xsl:attribute>
																<xsl:attribute name="length">35</xsl:attribute>
																<xsl:attribute name="maxlength">35</xsl:attribute>
																<xsl:attribute name="value"><xsl:value-of select="Doc:Incotrms/Doc:Othr"/></xsl:attribute>
																<xsl:attribute name="multi">N</xsl:attribute>
															</xsl:element>
														</xsl:element>
													</tr>-->
													<tr>
														<xsl:element name="TD">
															<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
															<xsl:attribute name="height">25</xsl:attribute>
															<xsl:value-of select="$LctnDesc"/>
															<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
															<xsl:element name="INPUT">
																<xsl:attribute name="type">text</xsl:attribute>
																<xsl:attribute name="name">Doc:Lctn</xsl:attribute>
																<xsl:attribute name="id"><xsl:value-of select="$LctnDesc"/></xsl:attribute>
																<xsl:attribute name="class">CHAR_M</xsl:attribute>
																<xsl:attribute name="length">35</xsl:attribute>
																<xsl:attribute name="maxlength">35</xsl:attribute>
																<xsl:attribute name="value"><xsl:value-of select="Doc:Incotrms/Doc:Lctn"/></xsl:attribute>
																<xsl:attribute name="multi">N</xsl:attribute>
															</xsl:element>
														</xsl:element>
													</tr>
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
