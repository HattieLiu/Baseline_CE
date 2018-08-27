<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="InvoiceIdentification1.xsl"/>
	<xsl:include href="LineItem9.xsl"/>
	<xsl:include href="PaymentTerms1.xsl"/>
	<xsl:include href="SettlementTerms2.xsl"/>
	<!--  *********** point <CommercialDataSet3> Start ********** -->
	<xsl:template name="CommercialDataSet3">
		<xsl:param name="CommercialDataSet3"/>
		<xsl:param name="CommercialDataSet3_parent"/>
		<xsl:variable name="CommercialDataSet3_name" select="name($CommercialDataSet3)"/>
		<xsl:variable name="CommercialDataSet3_pname" select="$CommercialDataSet3_parent"/>
		<xsl:variable name="suDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$CommercialDataSet3_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$CommercialDataSet3_pname"/>_<xsl:value-of select="$CommercialDataSet3_name"/>')</xsl:attribute>
					<xsl:value-of select="$suDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$CommercialDataSet3_pname"/>_<xsl:value-of select="$CommercialDataSet3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="DocumentIdentification1" select="$CommercialDataSet3/DataSetId"/>
						<xsl:call-template name="DocumentIdentification1">
							<xsl:with-param name="DocumentIdentification1" select="$DocumentIdentification1"/>
							<xsl:with-param name="DocumentIdentification1_parent">
								<xsl:value-of select="$CommercialDataSet3_pname"/>_<xsl:value-of select="$CommercialDataSet3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$CommercialDataSet3/ComrclDocRef">
							<xsl:variable name="InvoiceIdentification1" select="."/>
							<xsl:call-template name="InvoiceIdentification1">
								<xsl:with-param name="InvoiceIdentification1" select="$InvoiceIdentification1"/>
								<xsl:with-param name="InvoiceIdentification1_parent">
									<xsl:value-of select="$CommercialDataSet3_pname"/>_<xsl:value-of select="$CommercialDataSet3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="PartyIdentification26" select="$CommercialDataSet3/Buyr"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$CommercialDataSet3_pname"/>_<xsl:value-of select="$CommercialDataSet3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26_double" select="$CommercialDataSet3/Sellr"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26_double"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$CommercialDataSet3_pname"/>_<xsl:value-of select="$CommercialDataSet3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26_three" select="$CommercialDataSet3/BllTo"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26_three"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$CommercialDataSet3_pname"/>_<xsl:value-of select="$CommercialDataSet3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$CommercialDataSet3/Goods">
							<xsl:variable name="LineItem9" select="."/>
							<xsl:call-template name="LineItem9">
								<xsl:with-param name="LineItem9" select="$LineItem9"/>
								<xsl:with-param name="LineItem9_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$CommercialDataSet3_pname"/>_<xsl:value-of select="$CommercialDataSet3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$CommercialDataSet3/PmtTerms">
							<xsl:variable name="PaymentTerms1" select="."/>
							<xsl:call-template name="PaymentTerms1">
								<xsl:with-param name="PaymentTerms1" select="$PaymentTerms1"/>
								<xsl:with-param name="PaymentTerms1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$CommercialDataSet3_pname"/>_<xsl:value-of select="$CommercialDataSet3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="SettlementTerms2" select="$CommercialDataSet3/SttlmTerms"/>
						<xsl:call-template name="SettlementTerms2">
							<xsl:with-param name="SettlementTerms2" select="$SettlementTerms2"/>
							<xsl:with-param name="SettlementTerms2_parent">
								<xsl:value-of select="$CommercialDataSet3_pname"/>_<xsl:value-of select="$CommercialDataSet3_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <CommercialDataSet3> end ********** -->
</xsl:stylesheet>
