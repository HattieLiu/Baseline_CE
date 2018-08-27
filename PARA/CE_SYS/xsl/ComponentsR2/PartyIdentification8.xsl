<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="PostalAddress1.xsl"/>
	<xsl:include href="Party2Choice.xsl"/>
	<xsl:template name="PartyIdentification8">
		<xsl:param name="PartyIdentification8"/>
		<xsl:param name="PartyIdentification8_parent"/>
		<xsl:variable name="PartyIdentification8_name" select="name($PartyIdentification8)"/>
		<xsl:variable name="PartyIdentification8_pname" select="$PartyIdentification8_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$PartyIdentification8_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Nm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CtryOfResDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CtryOfRes'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PartyIdentification8_pname"/>_<xsl:value-of select="$PartyIdentification8_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification8_pname"/>_<xsl:value-of select="$PartyIdentification8_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$NmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentification8_pname"/>_<xsl:value-of select="$PartyIdentification8_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification8_pname"/>_<xsl:value-of select="$PartyIdentification8_name"/>_Nm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentification8/Nm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CtryOfResDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentification8_pname"/>_<xsl:value-of select="$PartyIdentification8_name"/>_CtryOfRes</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentification8_pname"/>_<xsl:value-of select="$PartyIdentification8_name"/>_CtryOfRes</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentification8/CtryOfRes"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="PostalAddress1" select="$PartyIdentification8/PstlAdr"/>
						<xsl:call-template name="PostalAddress1">
							<xsl:with-param name="PostalAddress1" select="$PostalAddress1"/>
							<xsl:with-param name="PostalAddress1_parent">
								<xsl:value-of select="$PartyIdentification8_pname"/>_<xsl:value-of select="$PartyIdentification8_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Party2Choice" select="$PartyIdentification8/Id"/>
						<xsl:call-template name="Party2Choice">
							<xsl:with-param name="Party2Choice" select="$Party2Choice"/>
							<xsl:with-param name="Party2Choice_parent">
								<xsl:value-of select="$PartyIdentification8_pname"/>_<xsl:value-of select="$PartyIdentification8_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
