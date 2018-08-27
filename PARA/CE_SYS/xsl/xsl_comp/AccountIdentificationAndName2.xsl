<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <AccountIdentificationAndName2> Start ********** -->
	<xsl:template name="AccountIdentificationAndName2">
		<xsl:param name="AccountIdentificationAndName2"/>
		<xsl:variable name="AccountIdentificationAndName2_name" select="name($AccountIdentificationAndName2)"/>
		
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$AccountIdentificationAndName2_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$AccountIdentificationAndName2_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$AccountIdentificationAndName2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="AccountIdentification1Choice" select="$AccountIdentificationAndName2/Doc:NmAndId"/>
						<xsl:call-template name="AccountIdentification1Choice">
							<xsl:with-param name="AccountIdentification1Choice" select="$AccountIdentification1Choice"/>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$NmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$AccountIdentificationAndName2_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$AccountIdentificationAndName2_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$AccountIdentificationAndName2/Doc:Nm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <AccountIdentificationAndName2> end ********** -->
</xsl:stylesheet>
