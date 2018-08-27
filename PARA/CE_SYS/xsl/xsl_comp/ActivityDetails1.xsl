<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
  <xsl:include href="Activity1.xsl"/>
<!--  *********** point <ActivityDetails1> start ********** -->
	<xsl:template name="ActivityDetails1">
		<xsl:param name="ActivityDetails1"/>
		<xsl:variable name="ActivityDetails1_name" select="name($ActivityDetails1)"/>
		
		<xsl:variable name="submissnIDDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$ActivityDetails1_name"/>
			</xsl:call-template>
		</xsl:variable>
		
		<xsl:variable name="DtTmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'DtTm'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ActivityDetails1_name"/>')</xsl:attribute>
					<xsl:value-of select="$submissnIDDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$ActivityDetails1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$DtTmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ActivityDetails1_name"/>_DtTm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ActivityDetails1_name"/>_DtTm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ActivityDetails1/Doc:DtTm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="Activity1" select="$ActivityDetails1/Doc:Actvty"/>
						<xsl:call-template name="Activity1">
							<xsl:with-param name="Activity1" select="$Activity1"/>
						</xsl:call-template>
						<xsl:variable name="BICIdentification1" select="$ActivityDetails1/Doc:Initr"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Limit1> end ********** -->
</xsl:stylesheet>
