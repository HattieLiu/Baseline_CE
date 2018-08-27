<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="ReportLine3.xsl"/>
	<xsl:include href="ReportLine4.xsl"/>
	<xsl:include href="SettlementTerms2.xsl"/>
	<xsl:include href="Adjustment4.xsl"/>
	<xsl:include href="DocumentIdentification7.xsl"/>
	<xsl:template name="IntentToPay1">
		<xsl:param name="IntentToPay1"/>
		<xsl:param name="IntentToPay1_parent"/>
		<xsl:variable name="IntentToPay1_name" select="name($IntentToPay1)"/>
		<xsl:variable name="IntentToPay1_pname" select="$IntentToPay1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$IntentToPay1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="XpctdPmtDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'XpctdPmtDt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$IntentToPay1_pname"/>_<xsl:value-of select="$IntentToPay1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$IntentToPay1_pname"/>_<xsl:value-of select="$IntentToPay1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$XpctdPmtDtDesc"/>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$IntentToPay1_pname"/>_<xsl:value-of select="$IntentToPay1_name"/>_XpctdPmtDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$IntentToPay1_pname"/>_<xsl:value-of select="$IntentToPay1_name"/>_XpctdPmtDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$IntentToPay1/XpctdPmtDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:variable name="ReportLine3" select="$IntentToPay1/ByPurchsOrdr"/>
							<xsl:call-template name="ReportLine3">
								<xsl:with-param name="ReportLine3" select="$ReportLine3"/>
								<xsl:with-param name="ReportLine3_parent">
									<xsl:value-of select="$IntentToPay1_pname"/>_<xsl:value-of select="$IntentToPay1_name"/>
								</xsl:with-param>
							</xsl:call-template>
							<xsl:variable name="ReportLine4" select="$IntentToPay1/ByComrclInvc"/>
							<xsl:call-template name="ReportLine4">
								<xsl:with-param name="ReportLine4" select="$ReportLine4"/>
								<xsl:with-param name="ReportLine4_parent">
									<xsl:value-of select="$IntentToPay1_pname"/>_<xsl:value-of select="$IntentToPay1_name"/>
								</xsl:with-param>
							</xsl:call-template>
							<xsl:variable name="SettlementTerms2" select="$IntentToPay1/SttlmTerms"/>
							<xsl:call-template name="SettlementTerms2">
								<xsl:with-param name="SettlementTerms2" select="$SettlementTerms2"/>
								<xsl:with-param name="SettlementTerms2_parent">
									<xsl:value-of select="$IntentToPay1_pname"/>_<xsl:value-of select="$IntentToPay1_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
