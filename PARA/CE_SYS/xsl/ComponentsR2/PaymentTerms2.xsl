<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="PaymentPeriod2.xsl"/>
	<!--  *********** point <PaymentTerms2> Start ********** -->
	<xsl:template name="PaymentTerms2">
		<xsl:param name="PaymentTerms2"/>
		<xsl:param name="PaymentTerms2_parent"/>
		<xsl:variable name="PaymentTerms2_name" select="name($PaymentTerms2)"/>
		<xsl:variable name="PaymentTerms2_pname" select="$PaymentTerms2_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$PaymentTerms2_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OthrPmtTermsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OthrPmtTerms'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PctgDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Pctg'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Amt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PaymentTerms2_pname"/>_<xsl:value-of select="$PaymentTerms2_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$PaymentTerms2_pname"/>_<xsl:value-of select="$PaymentTerms2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$OthrPmtTermsDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentTerms2_pname"/>_<xsl:value-of select="$PaymentTerms2_name"/>_OthrPmtTermsTp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentTerms2_pname"/>_<xsl:value-of select="$PaymentTerms2_name"/>_name,5)"/>_OthrPmtTerms</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentTerms2/OthrPmtTerms"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="PaymentPeriod1" select="$PaymentTerms2/PmtCd"/>
						<xsl:call-template name="PaymentPeriod1">
							<xsl:with-param name="PaymentPeriod1" select="$PaymentPeriod1"/>
							<xsl:with-param name="PaymentPeriod1_parent">
								<xsl:value-of select="$PaymentTerms2_pname"/>_<xsl:value-of select="$PaymentTerms2_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PctgDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentTerms2_pname"/>_<xsl:value-of select="$PaymentTerms2_name"/>_Pctg</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentTerms2_pname"/>_<xsl:value-of select="$PaymentTerms2_name"/>_Pctg</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentTerms2/Pctg"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$AmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentTerms2_pname"/>_<xsl:value-of select="$PaymentTerms2_name"/>_Amt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentTerms2_pname"/>_<xsl:value-of select="$PaymentTerms2_name"/>_Amt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentTerms2/Amt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentTerms2_pname"/>_<xsl:value-of select="$PaymentTerms2_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentTerms2_pname"/>_<xsl:value-of select="$PaymentTerms2_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentTerms2/Amt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <PaymentTerms2> end ********** -->
</xsl:stylesheet>
