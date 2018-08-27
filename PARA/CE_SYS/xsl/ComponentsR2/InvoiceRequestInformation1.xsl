<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="DocumentGeneralInformation1.xsl"/>
	<xsl:include href="InvoiceTotals1.xsl"/>
	<xsl:include href="Instalment1.xsl"/>
	<xsl:include href="FinancingRateOrAmountChoice.xsl"/>
	<xsl:include href="PartyAndAccountIdentificationAndContactInformation1.xsl"/>
	<xsl:include href="PartyIdentificationAndContactInformation1.xsl"/>
	<xsl:include href="PaymentInformation15.xsl"/>
	<xsl:include href="ReferredDocumentInformation2.xsl"/>
	
	<xsl:include href="PartyIdentification8.xsl"/>
	<xsl:include href="ContactIdentification1.xsl"/>
	<xsl:include href="CashAccount7.xsl"/>
	<xsl:template name="InvoiceRequestInformation1">
		<xsl:param name="InvoiceRequestInformation1"/>
		<xsl:param name="InvoiceRequestInformation1_parent"/>
		<xsl:variable name="InvoiceRequestInformation1_name" select="name($InvoiceRequestInformation1)"/>
		<xsl:variable name="InvoiceRequestInformation1_pname" select="$InvoiceRequestInformation1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$InvoiceRequestInformation1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CdtDbtNoteAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CdtDbtNoteAmt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$InvoiceRequestInformation1_pname"/>_<xsl:value-of select="$InvoiceRequestInformation1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$InvoiceRequestInformation1_pname"/>_<xsl:value-of select="$InvoiceRequestInformation1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CdtDbtNoteAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InvoiceRequestInformation1_pname"/>_<xsl:value-of select="$InvoiceRequestInformation1_name"/>_CdtDbtNoteAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InvoiceRequestInformation1_pname"/>_<xsl:value-of select="$InvoiceRequestInformation1_name"/>_CdtDbtNoteAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InvoiceRequestInformation1/CdtDbtNoteAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InvoiceRequestInformation1_pname"/>_<xsl:value-of select="$InvoiceRequestInformation1_name"/>_CdtDbtNoteAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InvoiceRequestInformation1_pname"/>_<xsl:value-of select="$InvoiceRequestInformation1_name"/>_CdtDbtNoteAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InvoiceRequestInformation1/CdtDbtNoteAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="DocumentGeneralInformation1" select="$InvoiceRequestInformation1/InvcGnlInf"/>
						<xsl:call-template name="DocumentGeneralInformation1">
							<xsl:with-param name="DocumentGeneralInformation1" select="$DocumentGeneralInformation1"/>
							<xsl:with-param name="DocumentGeneralInformation1_parent">
								<xsl:value-of select="$InvoiceRequestInformation1_pname"/>_<xsl:value-of select="$InvoiceRequestInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="InvoiceTotals1" select="$InvoiceRequestInformation1/InvcTtlsInf"/>
						<xsl:call-template name="InvoiceTotals1">
							<xsl:with-param name="InvoiceTotals1" select="$InvoiceTotals1"/>
							<xsl:with-param name="InvoiceTotals1_parent">
								<xsl:value-of select="$InvoiceRequestInformation1_pname"/>_<xsl:value-of select="$InvoiceRequestInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$InvoiceRequestInformation1/InstlmtInf">
							<xsl:variable name="Instalment1" select="."/>
							<xsl:call-template name="Instalment1">
								<xsl:with-param name="Instalment1" select="$Instalment1"/>
								<xsl:with-param name="Instalment1_parent">
									<xsl:value-of select="position()"/>_<xsl:value-of select="$InvoiceRequestInformation1_pname"/>_<xsl:value-of select="$InvoiceRequestInformation1_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="FinancingRateOrAmountChoice" select="$InvoiceRequestInformation1/ReqdAmt"/>
						<xsl:call-template name="FinancingRateOrAmountChoice">
							<xsl:with-param name="FinancingRateOrAmountChoice" select="$FinancingRateOrAmountChoice"/>
							<xsl:with-param name="FinancingRateOrAmountChoice_parent">
								<xsl:value-of select="$InvoiceRequestInformation1_pname"/>_<xsl:value-of select="$InvoiceRequestInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyAndAccountIdentificationAndContactInformation1" select="$InvoiceRequestInformation1/Spplr"/>
						<xsl:call-template name="PartyAndAccountIdentificationAndContactInformation1">
							<xsl:with-param name="PartyAndAccountIdentificationAndContactInformation1" select="$PartyAndAccountIdentificationAndContactInformation1"/>
							<xsl:with-param name="PartyAndAccountIdentificationAndContactInformation1_parent">
								<xsl:value-of select="$InvoiceRequestInformation1_pname"/>_<xsl:value-of select="$InvoiceRequestInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentificationAndContactInformation1" select="$InvoiceRequestInformation1/Buyr"/>
						<xsl:call-template name="PartyIdentificationAndContactInformation1">
							<xsl:with-param name="PartyIdentificationAndContactInformation1" select="$PartyIdentificationAndContactInformation1"/>
							<xsl:with-param name="PartyIdentificationAndContactInformation1_parent">
								<xsl:value-of select="$InvoiceRequestInformation1_pname"/>_<xsl:value-of select="$InvoiceRequestInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PaymentInformation15" select="$InvoiceRequestInformation1/InvcPmtInf"/>
						<xsl:call-template name="PaymentInformation15">
							<xsl:with-param name="PaymentInformation15" select="$PaymentInformation15"/>
							<xsl:with-param name="PaymentInformation15_parent">
								<xsl:value-of select="$InvoiceRequestInformation1_pname"/>_<xsl:value-of select="$InvoiceRequestInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$InvoiceRequestInformation1/RfrdDoc">
							<xsl:variable name="ReferredDocumentInformation2" select="."/>
							<xsl:call-template name="ReferredDocumentInformation2">
								<xsl:with-param name="ReferredDocumentInformation2" select="$ReferredDocumentInformation2"/>
								<xsl:with-param name="ReferredDocumentInformation2_parent">
									<xsl:value-of select="position()"/>_<xsl:value-of select="$InvoiceRequestInformation1_pname"/>_<xsl:value-of select="$InvoiceRequestInformation1_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
