<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   <xsl:include href="ChargesDetails1.xsl"/>
<!--  *********** point <Charge12> Start ********** -->
	<xsl:template name="Charge12">
		<xsl:param name="Charge12"/>
		<xsl:param name="Char12_FullName"/>
		<xsl:variable name="Charge12_name" select="name($Charge12)"/>
		<xsl:variable name="Char12_FullName_fox" select="$Char12_FullName"/>
		<xsl:variable name="FrghtChrgsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$Charge12_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TpDesc">
		<xsl:call-template name="getFldDesc1">
			<xsl:with-param name="FldId" select="'Tp'"/>
		</xsl:call-template>
	</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Char12_FullName_fox"/>_<xsl:value-of select="$Charge12_name"/>')</xsl:attribute>
					<xsl:value-of select="$FrghtChrgsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Char12_FullName_fox"/>_<xsl:value-of select="$Charge12_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TpDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Charge12_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Charge12_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Charge12/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="ChargesDetails1" select="$Charge12/Doc:Chrgs"/>
						<xsl:call-template name="ChargesDetails1">
							<xsl:with-param name="ChargesDetails1" select="$ChargesDetails1"/>
							<xsl:with-param name="Char1_FullName">
								<xsl:value-of select="$Char12_FullName_fox"/>_<xsl:value-of select="$Charge12_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Charge12> end ********** -->
</xsl:stylesheet>
