<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <PartyIdentification27> Start ********** -->
	<xsl:template name="PartyIdentification27">
		<xsl:param name="PartyIdentification27"/>
		<xsl:param name="PartyIdentification27_parent"/>
		<xsl:variable name="PartyIdentification27_name" select="name($PartyIdentification27)"/>
		<xsl:variable name="PartyIdentification27_pname" select="$PartyIdentification27_parent"/>
		<xsl:variable name="buyrDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$PartyIdentification27_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Nm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CtryDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Ctry'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PartyIdentification27_pname"/>_<xsl:value-of select="$PartyIdentification27_name"/>')</xsl:attribute>
					<xsl:value-of select="$buyrDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification27_pname"/>_<xsl:value-of select="$PartyIdentification27_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$NmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentification27_pname"/>_<xsl:value-of select="$PartyIdentification27_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification27_pname"/>_<xsl:value-of select="$PartyIdentification27_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentification27/Nm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$CtryDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentification27_pname"/>_<xsl:value-of select="$PartyIdentification27_name"/>_Ctry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification27_pname"/>_<xsl:value-of select="$PartyIdentification27_name"/>_Ctry</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentification27/Ctry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="GenericIdentification4" select="$PartyIdentification27/PrtryId"/>
						<xsl:call-template name="GenericIdentification4">
							<xsl:with-param name="GenericIdentification4" select="$GenericIdentification4"/>
							<xsl:with-param name="GenericIdentification4_parent">
								<xsl:value-of select="$PartyIdentification27_pname"/>_<xsl:value-of select="$PartyIdentification27_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <PartyIdentification27> end ********** -->
</xsl:stylesheet>
