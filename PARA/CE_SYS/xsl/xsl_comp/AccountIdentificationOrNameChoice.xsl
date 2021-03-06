<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
    <xsl:include href="AccountIdentification1Choice.xsl"/>
    <xsl:include href="AccountIdentificationAndName2.xsl"/>
<!--  *********** point <AccountIdentificationOrNameChoice> Start ********** -->
	<xsl:template name="AccountIdentificationOrNameChoice">
		<xsl:param name="AccountIdentificationOrNameChoice"/>
		<xsl:variable name="AccountIdentificationOrNameChoice_name" select="name($AccountIdentificationOrNameChoice)"/>
		
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$AccountIdentificationOrNameChoice_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Nm'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$AccountIdentificationOrNameChoice_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$AccountIdentificationOrNameChoice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$NmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$AccountIdentificationOrNameChoice_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$AccountIdentificationOrNameChoice_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$AccountIdentificationOrNameChoice/Doc:Nm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="AccountIdentification1Choice" select="$AccountIdentificationOrNameChoice/Doc:Id"/>
						<xsl:call-template name="AccountIdentification1Choice">
							<xsl:with-param name="AccountIdentification1Choice" select="$AccountIdentification1Choice"/>
						</xsl:call-template>
						<xsl:variable name="AccountIdentificationAndName2" select="$AccountIdentificationOrNameChoice/Doc:NmAndId"/>
						<xsl:call-template name="AccountIdentificationAndName2">
							<xsl:with-param name="AccountIdentificationAndName2" select="$AccountIdentificationAndName2"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <AccountIdentificationOrNameChoice> end ********** -->
</xsl:stylesheet>
