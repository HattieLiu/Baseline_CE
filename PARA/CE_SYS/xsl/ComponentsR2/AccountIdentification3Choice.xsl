<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="SimpleIdentificationInformation2.xsl"/>
	<!--  *********** point <AccountIdentification3Choice> Start ********** -->
	<xsl:template name="AccountIdentification3Choice">
		<xsl:param name="AccountIdentification3Choice"/>
		<xsl:param name="AccountIdentification3Choice_parent"/>
		<xsl:variable name="AccountIdentification3Choice_name" select="name($AccountIdentification3Choice)"/>
		<xsl:variable name="AccountIdentification3Choice_pname" select="$AccountIdentification3Choice_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$AccountIdentification3Choice_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$AccountIdentification3Choice_pname"/>_<xsl:value-of select="$AccountIdentification3Choice_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$AccountIdentification3Choice_pname"/>_<xsl:value-of select="$AccountIdentification3Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>IBAN</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$AccountIdentification3Choice_pname"/>_<xsl:value-of select="$AccountIdentification3Choice_name"/>_IBAN</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$AccountIdentification3Choice_pname"/>_<xsl:value-of select="$AccountIdentification3Choice_name"/>_IBAN</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$AccountIdentification3Choice/IBAN"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>BBAN</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$AccountIdentification3Choice_pname"/>_<xsl:value-of select="$AccountIdentification3Choice_name"/>_BBAN</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$AccountIdentification3Choice_pname"/>_<xsl:value-of select="$AccountIdentification3Choice_name"/>_BBAN</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$AccountIdentification3Choice/BBAN"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>UPIC</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$AccountIdentification3Choice_pname"/>_<xsl:value-of select="$AccountIdentification3Choice_name"/>_UPIC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$AccountIdentification3Choice_pname"/>_<xsl:value-of select="$AccountIdentification3Choice_name"/>_UPIC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$AccountIdentification3Choice/UPIC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="SimpleIdentificationInformation2" select="$AccountIdentification3Choice/PrtryAcct"/>
						<xsl:call-template name="SimpleIdentificationInformation2">
							<xsl:with-param name="SimpleIdentificationInformation2" select="$SimpleIdentificationInformation2"/>
							<xsl:with-param name="SimpleIdentificationInformation2_parent">
								<xsl:value-of select="$AccountIdentification3Choice_pname"/>_<xsl:value-of select="$AccountIdentification3Choice_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <AccountIdentification3Choice> end ********** -->
</xsl:stylesheet>
