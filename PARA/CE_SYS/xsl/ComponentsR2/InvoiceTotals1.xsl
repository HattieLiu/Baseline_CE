<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="Adjustment5.xsl"/>
	<xsl:template name="InvoiceTotals1">
		<xsl:param name="InvoiceTotals1"/>
		<xsl:param name="InvoiceTotals1_parent"/>
		<xsl:variable name="InvoiceTotals1_name" select="name($InvoiceTotals1)"/>
		<xsl:variable name="InvoiceTotals1_pname" select="$InvoiceTotals1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$InvoiceTotals1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TtlTaxblAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TtlTaxblAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TtlTaxAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TtlTaxAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TtlInvcAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TtlInvcAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PmtDueDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PmtDueDt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TtlTaxblAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>_TtlTaxblAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>_TtlTaxblAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InvoiceTotals1/TtlTaxblAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>_TtlTaxblAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>_TtlTaxblAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InvoiceTotals1/TtlTaxblAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TtlTaxAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>_TtlTaxAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>_TtlTaxAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InvoiceTotals1/TtlTaxAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>_TtlTaxAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>_TtlTaxAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InvoiceTotals1/TtlTaxAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TtlInvcAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>_TtlInvcAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>_TtlInvcAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InvoiceTotals1/TtlInvcAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>_TtlInvcAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>_TtlInvcAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InvoiceTotals1/TtlInvcAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$PmtDueDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>_PmtDueDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>_PmtDueDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InvoiceTotals1/PmtDueDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="Adjustment5" select="$InvoiceTotals1/Adjstmnt"/>
						<xsl:call-template name="Adjustment5">
							<xsl:with-param name="Adjustment5" select="$Adjustment5"/>
							<xsl:with-param name="Adjustment5_parent">
								<xsl:value-of select="$InvoiceTotals1_pname"/>_<xsl:value-of select="$InvoiceTotals1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
