<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--<xsl:include href="CashAccount7.xsl"/>-->
	<!--<xsl:include href="FinancialInstitutionIdentification4Choice.xsl"/>-->
	<!--  *********** point <SettlementTerms2> Start ********** -->
	<xsl:template name="SettlementTerms2">
		<xsl:param name="SettlementTerms2"/>
		<xsl:param name="SettlementTerms2_parent"/>
		<xsl:variable name="SettlementTerms2_name" select="name($SettlementTerms2)"/>
		<xsl:variable name="SettlementTerms2_pname" select="$SettlementTerms2_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$SettlementTerms2_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$SettlementTerms2_pname"/>_<xsl:value-of select="$SettlementTerms2_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$SettlementTerms2_pname"/>_<xsl:value-of select="$SettlementTerms2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="FinancialInstitutionIdentification4Choice" select="$SettlementTerms2/CdtrAgt"/>
						<xsl:call-template name="FinancialInstitutionIdentification4Choice">
							<xsl:with-param name="FinancialInstitutionIdentification4Choice" select="$FinancialInstitutionIdentification4Choice"/>
							<xsl:with-param name="FinancialInstitutionIdentification4Choice_parent">
								<xsl:value-of select="$SettlementTerms2_pname"/>_<xsl:value-of select="$SettlementTerms2_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="CashAccount7" select="$SettlementTerms2/CdtrAcct"/>
						<xsl:call-template name="CashAccount7">
							<xsl:with-param name="CashAccount7" select="$CashAccount7"/>
							<xsl:with-param name="CashAccount7_parent">
								<xsl:value-of select="$SettlementTerms2_pname"/>_<xsl:value-of select="$SettlementTerms2_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <SettlementTerms2> end ********** -->
</xsl:stylesheet>
