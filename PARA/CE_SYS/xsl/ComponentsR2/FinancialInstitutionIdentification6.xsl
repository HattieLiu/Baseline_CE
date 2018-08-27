<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="ClearingSystemMemberIdentification2Choice.xsl"/>
	<xsl:template name="FinancialInstitutionIdentification6">
		<xsl:param name="FinancialInstitutionIdentification6"/>
		<xsl:param name="FinancialInstitutionIdentification6_parent"/>
		<xsl:variable name="FinancialInstitutionIdentification6_name" select="name($FinancialInstitutionIdentification6)"/>
		<xsl:variable name="FinancialInstitutionIdentification6_pname" select="$FinancialInstitutionIdentification6_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$FinancialInstitutionIdentification6_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$FinancialInstitutionIdentification6_pname"/>_<xsl:value-of select="$FinancialInstitutionIdentification6_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$FinancialInstitutionIdentification6_pname"/>_<xsl:value-of select="$FinancialInstitutionIdentification6_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$BICDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$FinancialInstitutionIdentification6_pname"/>_<xsl:value-of select="$FinancialInstitutionIdentification6_name"/>_BIC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$FinancialInstitutionIdentification6_pname"/>_<xsl:value-of select="$FinancialInstitutionIdentification6_name"/>_BIC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$FinancialInstitutionIdentification6/BIC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="ClearingSystemMemberIdentification2Choice" select="$FinancialInstitutionIdentification6/ClrSysMmbId"/>
						<xsl:call-template name="ClearingSystemMemberIdentification2Choice">
							<xsl:with-param name="ClearingSystemMemberIdentification2Choice" select="$ClearingSystemMemberIdentification2Choice"/>
							<xsl:with-param name="ClearingSystemMemberIdentification2Choice_parent">
								<xsl:value-of select="$FinancialInstitutionIdentification6_pname"/>_<xsl:value-of select="$FinancialInstitutionIdentification6_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="GenericIdentification4" select="$FinancialInstitutionIdentification6/PrtryId"/>
						<xsl:call-template name="GenericIdentification4">
							<xsl:with-param name="GenericIdentification4" select="$GenericIdentification4"/>
							<xsl:with-param name="GenericIdentification4_parent">
								<xsl:value-of select="$FinancialInstitutionIdentification6_pname"/>_<xsl:value-of select="$FinancialInstitutionIdentification6_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
