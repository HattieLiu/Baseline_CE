<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="GenericIdentification3.xsl"/>
	<xsl:template name="OrganisationIdentification2">
		<xsl:param name="OrganisationIdentification2"/>
		<xsl:param name="OrganisationIdentification2_parent"/>
		<xsl:variable name="OrganisationIdentification2_name" select="name($OrganisationIdentification2)"/>
		<xsl:variable name="OrganisationIdentification2_pname" select="$OrganisationIdentification2_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$OrganisationIdentification2_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BICDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'BIC'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IBEIDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'IBEI'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BEIDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'BEI'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="EANGLNDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'EANGLN'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="USCHUDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'USCHU'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="DUNSDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'DUNS'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BkPtyIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'BkPtyId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TaxIdNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TaxIdNb'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$BICDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_BIC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_BIC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$OrganisationIdentification2/BIC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$IBEIDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_IBEI</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_IBEI</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$OrganisationIdentification2/IBEI"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$BEIDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_BEI</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_BEI</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$OrganisationIdentification2/BEI"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$EANGLNDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_EANGLN</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_EANGLN</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$OrganisationIdentification2/EANGLN"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$USCHUDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_USCHU</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_USCHU</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$OrganisationIdentification2/USCHU"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$DUNSDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_DUNS</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_DUNS</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$OrganisationIdentification2/DUNS"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$BkPtyIdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_BkPtyId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_BkPtyId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$OrganisationIdentification2/BkPtyId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TaxIdNbDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_TaxIdNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>_TaxIdNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$OrganisationIdentification2/TaxIdNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="GenericIdentification3" select="$OrganisationIdentification2/PrtryId"/>
						<xsl:call-template name="GenericIdentification3">
							<xsl:with-param name="GenericIdentification3" select="$GenericIdentification3"/>
							<xsl:with-param name="GenericIdentification3_parent">
								<xsl:value-of select="$OrganisationIdentification2_pname"/>_<xsl:value-of select="$OrganisationIdentification2_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
