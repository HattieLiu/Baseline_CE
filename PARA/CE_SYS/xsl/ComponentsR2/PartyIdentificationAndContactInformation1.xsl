<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="PartyIdentificationAndContactInformation1">
		<xsl:param name="PartyIdentificationAndContactInformation1"/>
		<xsl:param name="PartyIdentificationAndContactInformation1_parent"/>
		<xsl:variable name="PartyIdentificationAndContactInformation1_name" select="name($PartyIdentificationAndContactInformation1)"/>
		<xsl:variable name="PartyIdentificationAndContactInformation1_pname" select="$PartyIdentificationAndContactInformation1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$PartyIdentificationAndContactInformation1_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PartyIdentificationAndContactInformation1_pname"/>_<xsl:value-of select="$PartyIdentificationAndContactInformation1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$PartyIdentificationAndContactInformation1_pname"/>_<xsl:value-of select="$PartyIdentificationAndContactInformation1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="PartyIdentification8" select="$PartyIdentificationAndContactInformation1/PtyId"/>
						<xsl:call-template name="PartyIdentification8">
							<xsl:with-param name="PartyIdentification8" select="$PartyIdentification8"/>
							<xsl:with-param name="PartyIdentification8_parent">
								<xsl:value-of select="$PartyIdentificationAndContactInformation1_pname"/>_<xsl:value-of select="$PartyIdentificationAndContactInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="ContactIdentification1" select="$PartyIdentificationAndContactInformation1/CtctInf"/>
						<xsl:call-template name="ContactIdentification1">
							<xsl:with-param name="ContactIdentification1" select="$ContactIdentification1"/>
							<xsl:with-param name="ContactIdentification1_parent">
								<xsl:value-of select="$PartyIdentificationAndContactInformation1_pname"/>_<xsl:value-of select="$PartyIdentificationAndContactInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
