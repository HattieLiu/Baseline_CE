<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   <xsl:include href="FinancialInstitutionIdentification4Choice.xsl"/>
   <xsl:include href="AccountIdentificationOrNameChoice.xsl"/>
<!--  *********** point <SettlementTerms1> Start ********** -->
	<xsl:template name="SettlementTerms1">
		<xsl:param name="SettlementTerms1"/>
		<xsl:variable name="SettlementTerms1_name" select="name($SettlementTerms1)"/>
		
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$SettlementTerms1_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$SettlementTerms1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$SettlementTerms1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="FinancialInstitutionIdentification4Choice" select="$SettlementTerms1/Doc:FnlAgt"/>
						<xsl:call-template name="FinancialInstitutionIdentification4Choice">
							<xsl:with-param name="FinancialInstitutionIdentification4Choice" select="$FinancialInstitutionIdentification4Choice"/>
						</xsl:call-template>
						<xsl:variable name="AccountIdentificationOrNameChoice" select="$SettlementTerms1/Doc:BnfcryAcct"/>
						<xsl:call-template name="AccountIdentificationOrNameChoice">
							<xsl:with-param name="AccountIdentificationOrNameChoice" select="$AccountIdentificationOrNameChoice"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <SettlementTerms1> end ********** -->
</xsl:stylesheet>
