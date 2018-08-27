<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="public.xsl"/>
	<xsl:template match="Doc:Document">
		<xsl:variable name="RptSpcfctnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:RptSpcfctn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TxIdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:TxId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="SubmitrTxRefDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:SubmitrTxRef'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BuyrCtryDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:BuyrCtry'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="SellrCtryDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:SellrCtry'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CrspdtCtryDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:CrspdtCtry'"/>
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
						<!--<tr>-->
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
												<xsl:attribute name="onClick">Swap('_Doc:RptSpcfctn')</xsl:attribute>
												<xsl:value-of select="$RptSpcfctnDesc"/>
											</a>
										</xsl:element>
									</tr>
									<!--<tr>-->
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
												<xsl:attribute name="id">_<xsl:value-of select="'Doc:RptSpcfctn'"/></xsl:attribute>
												<xsl:attribute name="style">DISPLAY:;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
												<table width="100%" border="0" id="Doc:RptSpcfctn"  cellpadding="0" cellspacing="0" align="right">
													<xsl:for-each select="Doc:RptSpcfctn/Doc:TxId">
														<tr>
															<xsl:element name="TD">
																<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
																<xsl:attribute name="height">25</xsl:attribute>
																<xsl:value-of select="$TxIdDesc"/>
																<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
																<xsl:element name="INPUT">
																	<xsl:attribute name="type">text</xsl:attribute>
																	<xsl:attribute name="name">Doc:TxId</xsl:attribute>
																	<xsl:attribute name="id"><xsl:value-of select="$TxIdDesc"/></xsl:attribute>
																	<xsl:attribute name="class">CHAR_M</xsl:attribute>
																	<xsl:attribute name="length">35</xsl:attribute>
																	<xsl:attribute name="maxlength">35</xsl:attribute>
																	<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
																	<xsl:attribute name="multi">Y</xsl:attribute>
																	<xsl:attribute name="tbi">Doc:RptSpcfctn</xsl:attribute>
																</xsl:element>
															</xsl:element>
														</tr>
													</xsl:for-each>
													<xsl:for-each select="Doc:RptSpcfctn/Doc:SubmitrTxRef">
														<tr>
															<xsl:element name="TD">
																<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
																<xsl:attribute name="height">25</xsl:attribute>
																<xsl:value-of select="$SubmitrTxRefDesc"/>
																<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
																<xsl:element name="INPUT">
																	<xsl:attribute name="type">text</xsl:attribute>
																	<xsl:attribute name="name">Doc:SubmitrTxRef</xsl:attribute>
																	<xsl:attribute name="id"><xsl:value-of select="$SubmitrTxRefDesc"/></xsl:attribute>
																	<xsl:attribute name="class">CHAR_M</xsl:attribute>
																	<xsl:attribute name="length">35</xsl:attribute>
																	<xsl:attribute name="maxlength">35</xsl:attribute>
																	<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
																	<xsl:attribute name="multi">Y</xsl:attribute>
																	<xsl:attribute name="tbi">Doc:RptSpcfctn</xsl:attribute>
																</xsl:element>
															</xsl:element>
														</tr>
													</xsl:for-each>
													<xsl:for-each select="Doc:RptSpcfctn/Doc:BuyrCtry">
														<tr>
															<xsl:element name="TD">
																<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
																<xsl:attribute name="height">25</xsl:attribute>
																<xsl:value-of select="$BuyrCtryDesc"/>
																<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
																<xsl:element name="INPUT">
																	<xsl:attribute name="type">text</xsl:attribute>
																	<xsl:attribute name="name">Doc:BuyrCtry</xsl:attribute>
																	<xsl:attribute name="id"><xsl:value-of select="$BuyrCtryDesc"/></xsl:attribute>
																	<xsl:attribute name="class">CHAR_M</xsl:attribute>
																	<xsl:attribute name="length">35</xsl:attribute>
																	<xsl:attribute name="maxlength">35</xsl:attribute>
																	<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
																	<xsl:attribute name="multi">Y</xsl:attribute>
																	<xsl:attribute name="tbi">Doc:RptSpcfctn</xsl:attribute>
																</xsl:element>
															</xsl:element>
														</tr>
													</xsl:for-each>
													<xsl:for-each select="Doc:RptSpcfctn/Doc:SellrCtry">
														<tr>
															<xsl:element name="TD">
																<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
																<xsl:attribute name="height">25</xsl:attribute>
																<xsl:value-of select="$SellrCtryDesc"/>
																<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
																<xsl:element name="INPUT">
																	<xsl:attribute name="type">text</xsl:attribute>
																	<xsl:attribute name="name">Doc:SellrCtry</xsl:attribute>
																	<xsl:attribute name="id"><xsl:value-of select="$SellrCtryDesc"/></xsl:attribute>
																	<xsl:attribute name="class">CHAR_M</xsl:attribute>
																	<xsl:attribute name="length">35</xsl:attribute>
																	<xsl:attribute name="maxlength">35</xsl:attribute>
																	<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
																	<xsl:attribute name="multi">Y</xsl:attribute>
																	<xsl:attribute name="tbi">Doc:RptSpcfctn</xsl:attribute>
																</xsl:element>
															</xsl:element>
														</tr>
													</xsl:for-each>
													<xsl:for-each select="Doc:RptSpcfctn/Doc:CrspdtCtry">
														<tr>
															<xsl:element name="TD">
																<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
																<xsl:attribute name="height">25</xsl:attribute>
																<xsl:value-of select="$CrspdtCtryDesc"/>
																<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
																<xsl:element name="INPUT">
																	<xsl:attribute name="type">text</xsl:attribute>
																	<xsl:attribute name="name">Doc:CrspdtCtry</xsl:attribute>
																	<xsl:attribute name="id"><xsl:value-of select="$CrspdtCtryDesc"/></xsl:attribute>
																	<xsl:attribute name="class">CHAR_M</xsl:attribute>
																	<xsl:attribute name="length">35</xsl:attribute>
																	<xsl:attribute name="maxlength">35</xsl:attribute>
																	<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
																	<xsl:attribute name="multi">Y</xsl:attribute>
																	<xsl:attribute name="tbi">Doc:RptSpcfctn</xsl:attribute>
																</xsl:element>
															</xsl:element>
														</tr>
													</xsl:for-each>
													<xsl:for-each select="Doc:RptSpcfctn/Doc:TxSts">
														<tr>
															<xsl:variable name="TxSts" select="."/>
															<xsl:call-template name="TxSts">
																<xsl:with-param name="TxSts" select="$TxSts"/>
																<xsl:with-param name="TxSts_parentName">
																	<xsl:number value="position()" />_<xsl:value-of select="'Doc:RptSpcfctn'"/>
																</xsl:with-param>
															</xsl:call-template>
														</tr>
													</xsl:for-each>
													<xsl:for-each select="Doc:RptSpcfctn/Doc:NttiesToBeRptd">
														<tr>
															<xsl:variable name="NttiesToBeRptd" select="."/>
															<xsl:call-template name="NttiesToBeRptd">
																<xsl:with-param name="NttiesToBeRptd" select="$NttiesToBeRptd"/>
																<xsl:with-param name="NttiesToBeRptd_parentName">
																	<xsl:number value="position()" />_<xsl:value-of select="'Doc:RptSpcfctn'"/>
																</xsl:with-param>
															</xsl:call-template>
														</tr>
													</xsl:for-each>
													<xsl:for-each select="Doc:RptSpcfctn/Doc:Crspdt">
														<tr>
															<xsl:variable name="Crspdt" select="."/>
															<xsl:call-template name="Crspdt">
																<xsl:with-param name="Crspdt" select="$Crspdt"/>
																<xsl:with-param name="Crspdt_parentName">
																	<xsl:number value="position()" />_<xsl:value-of select="'Doc:RptSpcfctn'"/>
																</xsl:with-param>
															</xsl:call-template>
														</tr>
													</xsl:for-each>
													<xsl:for-each select="Doc:RptSpcfctn/Doc:Buyr">
														<tr>
															<xsl:variable name="Buyr" select="."/>
															<xsl:call-template name="Buyr">
																<xsl:with-param name="Buyr" select="$Buyr"/>
																<xsl:with-param name="Buyr_parentName">
																	<xsl:number value="position()" />_<xsl:value-of select="'Doc:RptSpcfctn'"/>
																</xsl:with-param>
															</xsl:call-template>
														</tr>
													</xsl:for-each>
													<xsl:for-each select="Doc:RptSpcfctn/Doc:Sellr">
														<tr>
															<xsl:variable name="Sellr" select="."/>
															<xsl:call-template name="Sellr">
																<xsl:with-param name="Sellr" select="$Sellr"/>
																<xsl:with-param name="Sellr_parentName">
																	<xsl:number value="position()" />_<xsl:value-of select="'Doc:RptSpcfctn'"/>
																</xsl:with-param>
															</xsl:call-template>
														</tr>
													</xsl:for-each>
													<xsl:for-each select="Doc:RptSpcfctn/Doc:PdgReqForActn">
														<tr>
															<xsl:variable name="PdgReqForActn" select="."/>
															<xsl:call-template name="PdgReqForActn">
																<xsl:with-param name="PdgReqForActn" select="$PdgReqForActn"/>
																<xsl:with-param name="PdgReqForActn_parentName">
																	<xsl:number value="position()" />_<xsl:value-of select="'Doc:RptSpcfctn'"/>
																</xsl:with-param>
															</xsl:call-template>
														</tr>
													</xsl:for-each>
												</table>
											</xsl:element>
										</xsl:element>
								</table>
							</td>
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
	<xsl:template name="TxSts">
		<xsl:param name="TxSts"/>
		<xsl:param name="TxSts_parentName"/>
		<xsl:variable name="TxSts_name" select="name($TxSts)"/>
		<xsl:variable name="TxSts_pName" select="$TxSts_parentName"/>
		<xsl:variable name="TxStsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:TxSts'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="StsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Sts'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="INPUT">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$TxSts_pName"/>_<xsl:value-of select="$TxSts_name"/></xsl:attribute>
					<xsl:attribute name="tx"><xsl:value-of select="$TxSts_pName"/>_<xsl:value-of select="$TxSts_name"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="tsu">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TxSts_pName"/>_<xsl:value-of select="$TxSts_name"/>')</xsl:attribute>
					<xsl:value-of select="$TxStsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$TxSts_pName"/>_<xsl:value-of select="$TxSts_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:TxSts">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$StsDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:Sts</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$StsDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TxSts/Doc:Sts"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:TxSts</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<xsl:template name="NttiesToBeRptd">
		<xsl:param name="NttiesToBeRptd"/>
		<xsl:param name="NttiesToBeRptd_parentName"/>
		<xsl:variable name="NttiesToBeRptd_name" select="name($NttiesToBeRptd)"/>
		<xsl:variable name="NttiesToBeRptd_pName" select="$NttiesToBeRptd_parentName"/>
		<xsl:variable name="NttiesToBeRptdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:NttiesToBeRptd'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BICDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:BIC'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="INPUT">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$NttiesToBeRptd_pName"/>_<xsl:value-of select="$NttiesToBeRptd_name"/></xsl:attribute>
					<xsl:attribute name="tx"><xsl:value-of select="$NttiesToBeRptd_pName"/>_<xsl:value-of select="$NttiesToBeRptd_name"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="tsu">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$NttiesToBeRptd_pName"/>_<xsl:value-of select="$NttiesToBeRptd_name"/>')</xsl:attribute>
					<xsl:value-of select="$NttiesToBeRptdDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$NttiesToBeRptd_pName"/>_<xsl:value-of select="$NttiesToBeRptd_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:NttiesToBeRptd">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$BICDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:BIC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$BICDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$NttiesToBeRptd/Doc:BIC"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:NttiesToBeRptd</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<xsl:template name="PdgReqForActn">
		<xsl:param name="PdgReqForActn"/>
		<xsl:param name="PdgReqForActn_parentName"/>
		<xsl:variable name="PdgReqForActn_name" select="name($PdgReqForActn)"/>
		<xsl:variable name="PdgReqForActn_pName" select="$PdgReqForActn_parentName"/>
		<xsl:variable name="PdgReqForActnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PdgReqForActn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TpDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Tp'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="DescDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Desc'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="INPUT">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$PdgReqForActn_pName"/>_<xsl:value-of select="$PdgReqForActn_name"/></xsl:attribute>
					<xsl:attribute name="tx"><xsl:value-of select="$PdgReqForActn_pName"/>_<xsl:value-of select="$PdgReqForActn_name"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="tsu">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PdgReqForActn_pName"/>_<xsl:value-of select="$PdgReqForActn_name"/>')</xsl:attribute>
					<xsl:value-of select="$PdgReqForActnDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$PdgReqForActn_pName"/>_<xsl:value-of select="$PdgReqForActn_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:PdgReqForActn">
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
									<xsl:attribute name="value"><xsl:value-of select="$PdgReqForActn/Doc:Tp"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:PdgReqForActn</xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$DescDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:Desc</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DescDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PdgReqForActn/Doc:Desc"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:PdgReqForActn</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<xsl:template name="Sellr">
		<xsl:param name="Sellr"/>
		<xsl:param name="Sellr_parentName"/>
		<xsl:variable name="Sellr_name" select="name($Sellr)"/>
		<xsl:variable name="Sellr_pName" select="$Sellr_parentName"/>
		<xsl:variable name="SellrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Sellr'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Nm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BEIDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:BEI'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OthrSchmeDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:OthrSchme'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="INPUT">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/></xsl:attribute>
					<xsl:attribute name="tx"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="tsu">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>')</xsl:attribute>
					<xsl:value-of select="$SellrDesc"/>
				</a>
			</xsl:element>
		</tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:Sellr">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:10%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>_Doc:Nm</xsl:attribute>
									<xsl:attribute name="match"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>_check</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
								</xsl:element>
								<xsl:value-of select="$NmDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:Nm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$NmDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Sellr/Doc:Nm"/></xsl:attribute>
									<xsl:attribute name="ch2"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>_Doc:BEI</xsl:attribute>
                                    <xsl:attribute name="ch3"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>_Doc:OthrSchme</xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:Sellr</xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:10%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>_Doc:BEI</xsl:attribute>
									<xsl:attribute name="match1"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>_check</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
								</xsl:element>
								<xsl:value-of select="$BEIDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:BEI</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$BEIDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Sellr/Doc:BEI"/></xsl:attribute>
									<xsl:attribute name="ch1"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>_Doc:Nm</xsl:attribute>
                                    <xsl:attribute name="ch3"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>_Doc:OthrSchme</xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:Sellr</xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:80%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>_Doc:OthrSchme</xsl:attribute>
									<xsl:attribute name="match2"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>_check</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
								</xsl:element>
								<xsl:value-of select="$OthrSchmeDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:OthrSchme</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$BEIDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Sellr/Doc:OthrSchme"/></xsl:attribute>
									<xsl:attribute name="ch1"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>_Doc:Nm</xsl:attribute>
                                    <xsl:attribute name="ch2"><xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>_Doc:BEI</xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:Sellr</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:variable name="PstlAdr" select="$Sellr/Doc:PstlAdr"/>
							<xsl:call-template name="PstlAdr">
								<xsl:with-param name="PstlAdr" select="$PstlAdr"/>
								<xsl:with-param name="PstlAdr_parentName">
									<xsl:value-of select="$Sellr_pName"/>_<xsl:value-of select="$Sellr_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
	</xsl:template>
	<xsl:template name="Buyr">
		<xsl:param name="Buyr"/>
		<xsl:param name="Buyr_parentName"/>
		<xsl:variable name="Buyr_name" select="name($Buyr)"/>
		<xsl:variable name="Buyr_pName" select="$Buyr_parentName"/>
		<xsl:variable name="BuyrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Buyr'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Nm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BEIDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:BEI'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OthrSchmeDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:OthrSchme'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="INPUT">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/></xsl:attribute>
					<xsl:attribute name="tx"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="tsu">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>')</xsl:attribute>
					<xsl:value-of select="$BuyrDesc"/>
				</a>
			</xsl:element>
		</tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:Buyr">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:10%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>_Doc:Nm</xsl:attribute>
									<xsl:attribute name="match"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>_check</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
								</xsl:element>
								<xsl:value-of select="$NmDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:Nm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$NmDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Buyr/Doc:Nm"/></xsl:attribute>
									<xsl:attribute name="ch2"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>_Doc:BEI</xsl:attribute>
                                    <xsl:attribute name="ch3"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>_Doc:OthrSchme</xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:Buyr</xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:10%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>_Doc:BEI</xsl:attribute>
									<xsl:attribute name="match1"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>_check</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
								</xsl:element>
								<xsl:value-of select="$BEIDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:BEI</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$BEIDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Buyr/Doc:BEI"/></xsl:attribute>
									<xsl:attribute name="ch1"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>_Doc:Nm</xsl:attribute>
                                    <xsl:attribute name="ch3"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>_Doc:OthrSchme</xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:Buyr</xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:80%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>_Doc:OthrSchme</xsl:attribute>
									<xsl:attribute name="match2"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>_check</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
								</xsl:element>
								<xsl:value-of select="$OthrSchmeDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:OthrSchme</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$BEIDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Buyr/Doc:OthrSchme"/></xsl:attribute>
									<xsl:attribute name="ch1"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>_Doc:Nm</xsl:attribute>
                                    <xsl:attribute name="ch2"><xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>_Doc:BEI</xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:Buyr</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:variable name="PstlAdr" select="$Buyr/Doc:PstlAdr"/>
							<xsl:call-template name="PstlAdr">
								<xsl:with-param name="PstlAdr" select="$PstlAdr"/>
								<xsl:with-param name="PstlAdr_parentName">
									<xsl:value-of select="$Buyr_pName"/>_<xsl:value-of select="$Buyr_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
	</xsl:template>
	<xsl:template name="PstlAdr">
		<xsl:param name="PstlAdr"/>
		<xsl:param name="PstlAdr_parentName"/>
		<xsl:variable name="PstlAdr_name" select="name($PstlAdr)"/>
		<xsl:variable name="PstlAdr_pName" select="$PstlAdr_parentName"/>
		<xsl:variable name="PstlAdrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PstlAdr'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="StrtNmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:StrtNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PstCdIdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PstCdId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TwnNmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:TwnNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CtrySubDvsnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:CtrySubDvsn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CtryDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Ctry'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="colspan">3</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="name"><xsl:value-of select="$PstlAdr_name"/>_check</xsl:attribute>
				<xsl:attribute name="tx"><xsl:value-of select="$PstlAdr_pName"/>_Doc:PstlAdr</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PstlAdr_pName"/>_Doc:PstlAdr')</xsl:attribute>
					<xsl:value-of select="$PstlAdrDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="colspan">3</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$PstlAdr_pName"/>_Doc:PstlAdr</xsl:attribute>
					<xsl:attribute name="style">DISPLAY:;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:PstlAdr">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">right</xsl:attribute>
								<xsl:value-of select="$StrtNmDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:StrtNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$StrtNmDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PstlAdr/Doc:StrtNm"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:PstlAdr</xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">right</xsl:attribute>
								<xsl:value-of select="$PstCdIdDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:PstCdId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PstCdIdDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PstlAdr/Doc:PstCdId"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:PstlAdr</xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">right</xsl:attribute>
								<xsl:value-of select="$TwnNmDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:TwnNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TwnNmDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PstlAdr/Doc:TwnNm"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:PstlAdr</xsl:attribute>
								</xsl:element>
							</xsl:element>
							</tr>
							<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">right</xsl:attribute>
								<xsl:value-of select="$CtrySubDvsnDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:CtrySubDvsn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CtrySubDvsnDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PstlAdr/Doc:CtrySubDvsn"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:PstlAdr</xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">right</xsl:attribute>
								<xsl:value-of select="$CtryDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:Ctry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CtryDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PstlAdr/Doc:Ctry"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:PstlAdr</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<xsl:template name="Crspdt">
		<xsl:param name="Crspdt"/>
		<xsl:param name="Crspdt_parentName"/>
		<xsl:variable name="Crspdt_name" select="name($Crspdt)"/>
		<xsl:variable name="Crspdt_pName" select="$Crspdt_parentName"/>
		<xsl:variable name="CrspdtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Crspdt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BICDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:BIC'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="INPUT">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$Crspdt_pName"/>_<xsl:value-of select="$Crspdt_name"/></xsl:attribute>
					<xsl:attribute name="tx"><xsl:value-of select="$Crspdt_pName"/>_<xsl:value-of select="$Crspdt_name"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="tsu">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Crspdt_pName"/>_<xsl:value-of select="$Crspdt_name"/>')</xsl:attribute>
					<xsl:value-of select="$CrspdtDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Crspdt_pName"/>_<xsl:value-of select="$Crspdt_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:Crspdt">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$BICDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:BIC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$BICDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Crspdt/Doc:BIC"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:Crspdt</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
