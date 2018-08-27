<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="TransportedGoods1.xsl"/>
	<xsl:include href="TransportMeans2Choice.xsl"/>
	<!--  *********** point <TransportDetails1> Start ********** -->
	<xsl:template name="TransportDetails1">
		<xsl:param name="TransportDetails1"/>
		<xsl:param name="TransportDetails1_parent"/>
		<xsl:param name="stmt2" select="Doc:TrnsprtInf"/>
		<xsl:variable name="TransportDetails1_name" select="name($TransportDetails1)"/>
		<xsl:variable name="TransportDetails1_pname" select="$TransportDetails1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$TransportDetails1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PropsdShipmntDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PropsdShipmntDt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ActlShipmntDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ActlShipmntDt'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportDetails1_pname"/>_<xsl:value-of select="$TransportDetails1_name"/>')</xsl:attribute>
					<xsl:value-of select="$fldDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$TransportDetails1_pname"/>_<xsl:value-of select="$TransportDetails1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:for-each select="$TransportDetails1/Doc:TrnsprtDocRef">
							<xsl:variable name="DocumentIdentification7" select="."/>
							<xsl:call-template name="DocumentIdentification7">
								<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
								<xsl:with-param name="DocumentIdentification7_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$stmt2"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$TransportDetails1/Doc:TrnsprtdGoods">
							<xsl:variable name="TransportedGoods1" select="."/>
							<xsl:call-template name="TransportedGoods1">
								<xsl:with-param name="TransportedGoods1" select="$TransportedGoods1"/>
								<xsl:with-param name="TransportedGoods1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$stmt2"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="TransportMeans2Choice" select="$TransportDetails1/Doc:RtgSummry"/>
						<xsl:call-template name="TransportMeans2Choice">
							<xsl:with-param name="TransportMeans2Choice" select="$TransportMeans2Choice"/>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportDetails1_pname"/>_<xsl:value-of select="substring($TransportDetails1_name,5)"/>_PropsdShipmntDt_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportDetails1_pname"/>_<xsl:value-of select="substring($TransportDetails1_name,5)"/>_PropsdShipmntDt_check</xsl:attribute>
									<xsl:for-each select="$TransportDetails1">
										<xsl:if test="Doc:PropsdShipmntDt != '' ">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:value-of select="$PropsdShipmntDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportDetails1_pname"/>_<xsl:value-of select="substring($TransportDetails1_name,5)"/>_PropsdShipmntDt</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportDetails1_pname"/>_<xsl:value-of select="substring($TransportDetails1_name,5)"/>_PropsdShipmntDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportDetails1/Doc:PropsdShipmntDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">width:40%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportDetails1_pname"/>_<xsl:value-of select="substring($TransportDetails1_name,5)"/>_ActlShipmntDt_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportDetails1_pname"/>_<xsl:value-of select="substring($TransportDetails1_name,5)"/>_ActlShipmntDt_check</xsl:attribute>
									<xsl:for-each select="$TransportDetails1">
										<xsl:if test="Doc:ActlShipmntDt != '' ">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:value-of select="$ActlShipmntDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportDetails1_pname"/>_<xsl:value-of select="substring($TransportDetails1_name,5)"/>_ActlShipmntDt</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportDetails1_pname"/>_<xsl:value-of select="substring($TransportDetails1_name,5)"/>_ActlShipmntDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportDetails1/Doc:ActlShipmntDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="Incoterms2" select="$TransportDetails1/Doc:Incotrms"/>
						<xsl:call-template name="Incoterms2">
							<xsl:with-param name="Incoterms2" select="$Incoterms2"/>
							<xsl:with-param name="Inco_FullName">
								<xsl:value-of select="substring($TransportDetails1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Charge13" select="$TransportDetails1/Doc:FrghtChrgs"/>
						<xsl:call-template name="Charge13">
							<xsl:with-param name="Charge13" select="$Charge13"/>
							<xsl:with-param name="Char_FullName">
								<xsl:value-of select="substring($TransportDetails1_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportDetails1> end ********** -->
</xsl:stylesheet>
