<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <PartyIdentification29Choice> Start ********** -->
	<xsl:template name="PartyIdentification29Choice">
		<xsl:param name="PartyIdentification29Choice"/>
		<xsl:param name="PartyIdentification29Choice_parent"/>
		<xsl:variable name="PartyIdentification29Choice_name" select="name($PartyIdentification29Choice)"/>
		<xsl:variable name="PartyIdentification29Choice_pname" select="$PartyIdentification29Choice_parent"/>
		<xsl:variable name="AssrdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$PartyIdentification29Choice_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BICDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'BIC'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PartyIdentification29Choice_pname"/>_<xsl:value-of select="$PartyIdentification29Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="$AssrdDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification29Choice_pname"/>_<xsl:value-of select="$PartyIdentification29Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$BICDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification29Choice_pname"/>_<xsl:value-of select="$PartyIdentification29Choice_name"/>_BIC</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentification29Choice_pname"/>_<xsl:value-of select="$PartyIdentification29Choice_name"/>_BIC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentification29Choice/BIC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="PartyIdentification26" select="$PartyIdentification29Choice/NmAndAdr"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$PartyIdentification29Choice_pname"/>_<xsl:value-of select="$PartyIdentification29Choice_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <PartyIdentification29Choice> end ********** -->
</xsl:stylesheet>
