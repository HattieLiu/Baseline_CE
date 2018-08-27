<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="PartyIdentification25.xsl"/>
	<xsl:template name="PartyIdentificationAndAccount6">
		<xsl:param name="PartyIdentificationAndAccount6"/>
		<xsl:param name="PartyIdentificationAndAccount6_parent"/>
		<xsl:variable name="PartyIdentificationAndAccount6_name" select="name($PartyIdentificationAndAccount6)"/>
		<xsl:variable name="PartyIdentificationAndAccount6_pname" select="$PartyIdentificationAndAccount6_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$PartyIdentificationAndAccount6_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CdtAcctDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CdtAcct'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="FincgAcctDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'FincgAcct'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PartyIdentificationAndAccount6_pname"/>_<xsl:value-of select="$PartyIdentificationAndAccount6_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$PartyIdentificationAndAccount6_pname"/>_<xsl:value-of select="$PartyIdentificationAndAccount6_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CdtAcctDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentificationAndAccount6_pname"/>_<xsl:value-of select="$PartyIdentificationAndAccount6_name"/>_CdtAcct</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentificationAndAccount6_pname"/>_<xsl:value-of select="$PartyIdentificationAndAccount6_name"/>_CdtAcct</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentificationAndAccount6/CdtAcct"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$FincgAcctDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PartyIdentificationAndAccount6_pname"/>_<xsl:value-of select="$PartyIdentificationAndAccount6_name"/>_FincgAcct</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PartyIdentificationAndAccount6_pname"/>_<xsl:value-of select="$PartyIdentificationAndAccount6_name"/>_FincgAcct</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PartyIdentificationAndAccount6/FincgAcct"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="PartyIdentification25" select="$PartyIdentificationAndAccount6/PtyId"/>
						<xsl:call-template name="PartyIdentification25">
							<xsl:with-param name="PartyIdentification25" select="$PartyIdentification25"/>
							<xsl:with-param name="PartyIdentification25_parent">
								<xsl:value-of select="$PartyIdentificationAndAccount6_pname"/>_<xsl:value-of select="$PartyIdentificationAndAccount6_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
